import 'package:data_representation/provider/providerPattern_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderPatternScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderPatternBloc>(
      create: (context) => ProviderPatternBloc(),
      builder: (context, _) => Consumer<ProviderPatternBloc>(
        builder: (context, bloc, _) => Scaffold(
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
                  bloc.count.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => bloc.incrementCount(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
