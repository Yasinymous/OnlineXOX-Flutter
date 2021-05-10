/*
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:onlinexox/RoomD.dart';


int buildNumber = 0;

class Rooms extends StatefulWidget{
  @override
  _RoomState createState() => _RoomState();

}

class _RoomState extends State<Rooms>{
  List<Map<String, dynamic>> products = [];
  @override
  Widget build(BuildContext context) {
    buildNumber += 1;
    print("Rebuild : $buildNumber times");
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.plus_one),
            onPressed: addProduct,
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: renderProducts(),
      ),
    );
  }

  void addProduct() {
    products.add({"name": "Apple", "qty": 20});
    rebuildScreen();
  }

  void rebuildScreen() {
    setState(() {});
  }

  Widget renderProducts() {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(products[index]['name']),
          trailing: Text('${products[index]['qty']}'),
        );
      },
    );
  }

  Widget Test() {
    return Container(
      width: 400,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/game');
          },
          child: Column(children: [
            Container(padding: EdgeInsets.only(top: 20), child:Text('test'),),
            Container(padding: EdgeInsets.only(top: 20), child:Icon(Icons.search),),
            Container(padding: EdgeInsets.only(top: 20), child: Text('test'),)
          ]
            ,)
      ),
    );

  }


  class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('Rooms'),
  ),
  backgroundColor: Colors.grey[200],
  body:Container(child:Room(),),
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
  FloatingActionButton(child: Icon(Icons.add),
  onPressed: () {
  CreateRoom1();
  }),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  );
  }
  }

  class Room extends StatefulWidget {
  @override
  _Room createState() => _Room();
  }

  class _Room extends State<Room> {
  @override
  Widget build(BuildContext context) {
  return GridView.count(
  primary: false,
  padding: const EdgeInsets.all(8),
  crossAxisSpacing: 5,
  mainAxisSpacing: 5,
  crossAxisCount: 3,
  children: List.generate(RoomList.length, (index) {
  return Center(
  child: RoomItemCard(roomitem: RoomList[index]),
  );
  }
  )  //padding: const EdgeInsets.all(5),

  );
  }
  }

  class RoomItemCard extends StatelessWidget {
  const RoomItemCard({Key key, this.roomitem}) : super(key: key);
  final RoomItem roomitem;

  @override
  Widget build(BuildContext context) {
  return Container(
  width: 400,
  child: ElevatedButton(
  onPressed: () {
  Navigator.pushNamed(context, '/game');
  },
  child: Column(children: [
  Container(padding: EdgeInsets.only(top: 20), child:Text(roomitem.RoomName),),
  Container(padding: EdgeInsets.only(top: 20), child:Icon(Locktest(roomitem.Lock),size: 25,),),
  Container(padding: EdgeInsets.only(top: 20), child: Text(StatusControl(roomitem.Status)),)
  ]
  ,)
  ),
  );
  }
  }


  import 'package:flutter/material.dart';

  void main() {
  runApp(new MaterialApp(home: new MyApp()));
  }

  class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text("Flutter"),
  ),
  body: Center(
  child: RaisedButton(
  onPressed: () {
  showDialog(
  context: context,
  builder: (BuildContext context) {
  return AlertDialog(
  content: Stack(
  overflow: Overflow.visible,
  children: <Widget>[
  Positioned(
  right: -40.0,
  top: -40.0,
  child: InkResponse(
  onTap: () {
  Navigator.of(context).pop();
  },
  child: CircleAvatar(
  child: Icon(Icons.close),
  backgroundColor: Colors.red,
  ),
  ),
  ),
  Form(
  key: _formKey,
  child: Column(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
  Padding(
  padding: EdgeInsets.all(8.0),
  child: TextFormField(),
  ),
  Padding(
  padding: EdgeInsets.all(8.0),
  child: TextFormField(),
  ),
  Padding(
  padding: const EdgeInsets.all(8.0),
  child: RaisedButton(
  child: Text("Submitß"),
  onPressed: () {
  if (_formKey.currentState.validate()) {
  _formKey.currentState.save();
  }
  },
  ),
  )
  ],
  ),
  ),
  ],
  ),
  );
  });
  },
  child: Text("Open Popup"),
  ),
  ),
  );
  }
  }

*/

