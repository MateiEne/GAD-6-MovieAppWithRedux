import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import '../models/index.dart';

class SelectedMovieContainer extends StatelessWidget {
  const SelectedMovieContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Movie?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.selectedMovie;
      },
    );
  }
}
