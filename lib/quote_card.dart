import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {

    final quote;
    final delete;

    QuoteCard({ this.quote, this.delete });

    @override
    Widget build(BuildContext context) {
        return Card(
            margin: EdgeInsets.all(20),
            child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                    children: <Widget> [
                        Text(
                            quote.text,
                            style: TextStyle(
                                color: Colors.blue[400]
                            ),
                        ),
                        SizedBox(height: 6.0),
                        IconButton(
                            onPressed: delete, icon: Icon(Icons.delete)
                        ),
                    ],
                ),
            )
        );
    }
}


