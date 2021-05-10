import 'package:flutter/material.dart';
import 'package:onlinexox/RoomF.dart';
import 'package:onlinexox/test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Rooms(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/game': (context) => Game(),
      },

    );
  }
}

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Board"),
      ),
      backgroundColor: Colors.grey[200],
      body: Row(
        children: [SizedBox(
          width: 400,
          height: 400,
          child: Card(
            child: GameBoard(),
          ),
        ),
     ]
      ),
    );
  }
}

class GameBoard extends StatefulWidget {
  @override
  _GameBoard createState() => _GameBoard();
}

class _GameBoard extends State<GameBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.red,
                onPressed: () {
                  debugPrint("1");
                },
                iconSize: 75,
              )
          ),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.red,
                onPressed: () {
                  debugPrint("2");
                },
                iconSize: 75,
              )
          ),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.red,
                onPressed: () {
                  debugPrint("3");
                },
                iconSize: 75,
              )
          ),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.red,
                onPressed: () {
                  debugPrint("4");
                },
                iconSize: 75,
              )
          ),
          Container(
              padding: const EdgeInsets.all(0),
              color: Colors.white,
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.red,
                onPressed: () {
                  debugPrint("5");
                },
                iconSize: 75,
              )
          ),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.red,
                onPressed: () {
                  debugPrint("6");
                },
                iconSize: 75,
              )
          ),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.red,
                onPressed: () {
                  debugPrint("7");
                },
                iconSize: 75,
              )
          ),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.red,
                onPressed: () {
                  debugPrint("8");
                },
                iconSize: 75,
              )
          ),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.red,
                onPressed: () {
                  debugPrint("9");
                },
                iconSize: 75,
              )
          ),
          Container (child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ),
        ],
      ),
    );
  }
}

/*
bottomNavigationBar: BottomAppBar(
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          Spacer(),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
    ),
      floatingActionButton:
      FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,







Text("Murat's Room"),


  Container (child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/game');
              },
              child: Text('Select Room'),
            ),
 */

/*
Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue,
              child: IconButton(
                icon: Icon(Icons.add),
                color: Colors.white,
                onPressed: () {
                  debugPrint("1");
                },
                iconSize: 50,
              ),
            ),
            SizedBox(
            width: 300,
            child: Card(
              child: Room(),
            ),
          ),




          IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            onPressed: () {
              debugPrint("1");
            },
            iconSize: 50,
          ),
 */





/*


test



class Rooms extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rooms'),
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          child: Room(),
        ),
      ),
    );
  }
}



 */


/*
class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            gridChild.add(Container(
              margin: EdgeInsets.all(8.0),
              width: 30.0,
              height: 50.0,
              color: Colors.green,
            ));
          });
        },
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(gridChild.length, (index) => gridChild[index]),
        ),
      ),
    );
  }
}
 */