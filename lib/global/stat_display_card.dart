import 'package:flutter/material.dart';

class StatDisplayCard extends StatelessWidget {
  final String _title;
  final num _count;

  StatDisplayCard(this._title, this._count);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 70,
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Text(
                  "$_title:",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: Text(
                  "$_count",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
