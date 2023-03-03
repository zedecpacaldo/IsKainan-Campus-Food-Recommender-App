import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('IsKainan'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Text(
            'Food Recommender App',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'Roboto'
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Kaen!'),
        backgroundColor: Colors.green[900],
        ),
      ),
    ),
  );
}
