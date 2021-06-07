import 'package:flutter/material.dart';

class Location extends StatefulWidget {
    @override
    _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

    int counter = 0;

    void getData() async {
        String number1 = await Future.delayed(Duration(seconds: 3), () {
            print('1');
            return '1';
        });


        String number2 = await Future.delayed(Duration(seconds: 2), () {
            print('2');
            return '2';
        });

        print('$number1 - $number2');
    }

    @override
    void initState() {
        super.initState();
        // print('initilize location page');
        getData();
    }

  @override
  Widget build(BuildContext context) {
        // print('build location page');
    return Scaffold(
        backgroundColor: Colors.cyan[200],
        appBar: AppBar(
            elevation: 0,
        ),
        body: Row(children: <Widget>[
            TextButton(onPressed: () {
                setState(() {
                  counter += 1;
                });
            },
             child: Text('Counter: $counter' ),)
        ]
        )
      
    );
  }
}