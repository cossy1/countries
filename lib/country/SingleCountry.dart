import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleCountry extends StatelessWidget {
  SingleCountry(
      {required this.name,
      required this.phone,
      // required this.states,
      // required this.capital,
      // required this.continent,
      required this.code
      });

  final String name;
  final String code;
  final String phone;
  // final String states;
  // final String continent;
  // final String capital;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Text(name + ' Details'),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [Text('NAME'),  Padding(padding: EdgeInsets.only(top: 10), child:  Text(name),)],
              ),
              Column(
                children: [Text('PHONE'),  Padding(padding: EdgeInsets.only(top: 10), child:  Text(phone),)],
              ),
              Column(
                children: [Text('CODE'),
               Padding(padding: EdgeInsets.only(top: 10), child:  Text(code),)

                ],
              ),

            ],
          ),
        ),
      ),
    ]));
  }
}
