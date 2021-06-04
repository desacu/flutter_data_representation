import 'package:data_representation/bloc/blocPattern.dart';
import 'package:data_representation/home.dart';
import 'package:data_representation/stream/stream_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<StreamBloc>(create: (context) => StreamBloc()),
        BlocProvider(create: ((context) => BlocPatternBloc())),
      ],
      child: MaterialApp(
        title: 'Data representation',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home(),
      ),
    );
  }
}
