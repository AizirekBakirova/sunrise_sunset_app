import 'package:flutter/material.dart';
import 'package:sunrise_sunset_app/domain/model/day.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _latController = TextEditingController();
  final _lngController = TextEditingController();

  Day _day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
    );
  }
}

Widget _getBody() {
  return SafeArea(
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _getRowInput(),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('Получить'),
            onPressed: _getDay,
          ),
          SizedBox(height: 20),
          if (_day != null) _getDayInfo(_day),
        ],
      ),
    ),
  );
}

Widget _getRowInput() {
  return Row(
    children: [
      Expanded(
          child: TextField(
        controller: _latController,
        keyboardType:
            TextInputType.numberWithOptions(decimal: true, signed: true),
        decoration: InputDecoration(hintText: 'Широта'),
      ))
    ],
  );
}

Widget _getDayInfo(Day day) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Text('Sunrise: ${day.sunrise.toLocal()}'),
      Text('Sunset: ${day.sunset.toLocal()}'),
      Text('solarNoon: ${day.solarNoon.toLocal()}'),
      Text('Duration: ${Duration(seconds: day.dayLength)}')
    ],
  );
}

void _getDay() {}
