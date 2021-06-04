import 'package:data_representation/all_in_screen/all_screen.dart';
import 'package:data_representation/bloc/blocPattern.dart';
import 'package:data_representation/provider/providerPattern_screen.dart';
import 'package:data_representation/stream/stream_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavigationButton('All in Screen', AllInScreen()),
            NavigationButton('Stream method', StreamScreen()),
            NavigationButton('Bloc pattern', BlocPatternScreen()),
            NavigationButton('Provider pattern', ProviderPatternScreen()),
          ],
        ),
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  final String text;
  final Widget screenToNavigate;

  NavigationButton(this.text, this.screenToNavigate);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        color: Colors.blue,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screenToNavigate),
        ),
      ),
      constraints: BoxConstraints(
        minWidth: 200,
      ),
    );
  }
}
