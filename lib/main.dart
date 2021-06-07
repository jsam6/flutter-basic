import 'package:flutter/material.dart';

// void main() { runApp(); }
void main() => runApp(MaterialApp(
      title: 'hack the world',
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  int counter = 3;

  List<String> quotes = ['test 1', 'test 2', 'test 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Hack The World',
              style: TextStyle(
                fontFamily: 'ShadowsIntoLight',
              )),
          centerTitle: true,
          backgroundColor: Colors.green[600]),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset('assets/background-image.jpeg'),
              ),
              Expanded(
                flex: 2,
                child: Container(
                    padding: EdgeInsets.all(30),
                    color: Colors.red,
                    child: Text('$counter')),
              ),
              Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.blue,
                  child: Text('2')),
              Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.green,
                  child: Text('3')),
            ],
          ),
          Row(
            children: quotes.map((quote) {
                return Text(quote);
            }).toList()
            
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        backgroundColor: Colors.green[600],
      ),
      bottomNavigationBar: BottomNavigationBar(),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    this.shape = const CircularNotchedRectangle(),
  });

  final NotchedShape? shape;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.green[600],
        shape: shape,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                tooltip: 'Open navigation menu',
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Favorite',
                icon: const Icon(Icons.favorite),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Search',
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
