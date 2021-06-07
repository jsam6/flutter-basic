import 'package:flutter/material.dart';

class NewHome extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: Column(
                children: <Widget> [
                    TextButton.icon(
                        onPressed: () {
                            Navigator.pushNamed(context, '/location');
                        }, 
                        icon: Icon( Icons.location_pin ), 
                        label: Text("navigate to location page")
                        )
                ],
            )
        
        );
    }
}