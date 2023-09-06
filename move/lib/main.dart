import 'package:flutter/material.dart';
import 'package:move/moves.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.ali});

  final Movies ali;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(ali.image),
            Text(ali.name),
            Text(ali.relaseDate)
          ],
        ),
      ),
    );
  }
}
