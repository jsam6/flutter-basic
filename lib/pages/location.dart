import 'package:flutter/material.dart';

class Location extends StatefulWidget {
    @override
    _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

    int counter = 0;


    @override
    void initState() {
        super.initState();
        print('initilize location page');
    }

  @override
  Widget build(BuildContext context) {
        print('build location page');
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