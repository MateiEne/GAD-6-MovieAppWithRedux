import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:teest_api/actions/get_movie_details.dart';
import 'package:teest_api/actions/get_movies.dart';
import 'package:teest_api/actions/select_movie.dart';
import 'package:teest_api/container/is_loading_container.dart';
import 'package:teest_api/container/movies_container.dart';
import 'package:teest_api/models/app_state.dart';
import 'package:teest_api/models/movie.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    final Store store = StoreProvider.of<AppState>(context, listen: false);
    store.dispatch(GetMovies(_onResult));

    _controller.addListener(_onScroll);
  }

  void _onResult(dynamic action) {
    if (action is GetMoviesError) {
      showDialog(
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

  void _onScroll() {
    final double currentPosition = _controller.offset;
    final double maxPosition = _controller.position.maxScrollExtent;

    final Store<AppState> store = StoreProvider.of<AppState>(context);

    if (!store.state.isLoading && currentPosition >= maxPosition) {
      store.dispatch(GetMovies(_onResult));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test API'),
        centerTitle: true,
        actions: <Widget>[
          IsLoadingContainer(builder: (BuildContext context, bool isLoading) {
            if (isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return const SizedBox.shrink();
          }),
        ],
      ),
      body: MoviesContainer(
        builder: (BuildContext context, List<Movie> movies) {
          return ListView.builder(
            controller: _controller,
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: GestureDetector(
                  onTap: () {
                    final Store store = StoreProvider.of<AppState>(context, listen: false);
                    store.dispatch(SelectMovie(movies[index].id));
                    Navigator.pushNamed(context, '/movieDetails');
                    // showDialog<void>(
                    //   context: context,
                    //   builder: (BuildContext context) {
                    //     return AlertDialog(
                    //       title: Text('${movies[index].title} info'),
                    //       content: SingleChildScrollView(
                    //         child: Text(movies[index].description),
                    //       ),
                    //     );
                    //   },
                    // );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(movies[index].imageUrl),
                  ),
                ),
                subtitle: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Rating: ${movies[index].rating}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
