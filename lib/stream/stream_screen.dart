import 'package:data_representation/stream/stream_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StreamScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    StreamBloc bloc = Provider.of<StreamBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Stream method'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder<int>(
              initialData: 0,
              stream: Provider.of<StreamBloc>(context).count,
              builder: (context, snapshot) => Text(
                snapshot.hasData ? snapshot.data.toString() : 'No data',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => bloc.dispatch(StreamEvent.incrementCounter),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
