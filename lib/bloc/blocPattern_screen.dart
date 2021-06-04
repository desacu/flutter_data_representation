import 'package:data_representation/bloc/blocPattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPatternScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocPatternBloc, BlocPatternState>(builder: (context, state) {
      if (state is BlocPatternIncrementCountFailure) {
        _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(state.errorMessage)));
      }

      return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Bloc Pattern'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                state.count.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => BlocProvider.of<BlocPatternBloc>(context).add(BlocPatternIncrementedCount()),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      );
    });
  }
}
