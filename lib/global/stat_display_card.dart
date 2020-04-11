import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StatDisplayCard extends StatelessWidget {
  final String _title;
  final num _count;
  final Color _color;
  NumberFormat formatter;
  StatDisplayCard(this._title, this._count, this._color){
    formatter =_getNumberFormat();
  }


   NumberFormat _getNumberFormat(){
    if (_count > 100 *1000){
      return NumberFormat.compact();
    } else {
      return NumberFormat.decimalPattern();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "$_title:",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                formatter.format(_count),
                style: TextStyle(
                  color: _color,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}

