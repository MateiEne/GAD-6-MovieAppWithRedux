import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:teest_api/actions/get_movie_details.dart';
import 'package:teest_api/container/is_loading_container.dart';
import 'package:teest_api/container/selected_movie_container.dart';
import 'package:teest_api/models/app_state.dart';
import 'package:teest_api/models/movie.dart';

class MovieDetails extends StatefulWidget {
  const MovieDetails({Key? key}) : super(key: key);

  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  void initState() {
    super.initState();
    final Store<AppState> store = StoreProvider.of<AppState>(context, listen: false);
    store.dispatch(GetMovieDetails(store.state.selectedMovieId!, _onResult));
  }

  void _onResult(action) {
    if (action is GetMovieDetailsError) {
      showDialog<Widget>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: Text('${action.error}'),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        actions: <Widget>[
          IsLoadingContainer(builder: (BuildContext context, bool isLoading) {
            if (isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return const SizedBox.shrink();
          })
        ],
      ),
      body: SelectedMovieContainer(
        builder: (BuildContext context, Movie? movie) {
          if (movie == null) {
            return const SizedBox.shrink();
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                Text(movie.description),
                ...movie.screenshots.map((String url) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(url),
                )).toList(),
              ],
            ),
          );
        },
      ),
    );
  }
}
