import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:onlinexox/RoomD.dart';
import 'package:toggle_switch/toggle_switch.dart';

int buildNumber = 0;

class Rooms extends StatefulWidget{
  @override
  _RoomState createState() => _RoomState();

}

class _RoomState extends State<Rooms>{
  List<Map<String, dynamic>> rooms = [];
  @override
  Widget build(BuildContext context) {
    buildNumber += 1;
    print("Rebuild : $buildNumber times");
    return Scaffold(
      appBar: AppBar(
        title: Text('Rooms'),
        actions: <Widget>[
        ],
      ),
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
      FloatingActionButton(child: Icon(Icons.add), onPressed:  createroom,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        child: Test(),
      ),
    );
  }

  void addProduct(String name) {
    rooms.add({"id":"/game", "name": name, "status": true, "lock": true});
    rebuildScreen();
  }

  void rebuildScreen() {
    setState(() {});
  }

  void createroom(){
    final myController = TextEditingController();

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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Create Room'),
                      TextField(
                        controller: myController,
                        cursorColor: Theme.of(context).cursorColor,
                        maxLength: 15,
                        decoration: InputDecoration(
                          labelText: 'Room Name',
                          suffixIcon: Icon(
                            Icons.check_circle,
                          ),
                        ),
                      ),
                      ToggleSwitch(
                        initialLabelIndex: 0,
                        labels: ['',''],
                        icons: [
                          Icons.lock_open,
                          Icons.lock,
                        ],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                      ElevatedButton.icon(
                      onPressed: () {
                        if ((myController.text).isEmpty)
                          addProduct("Username's room");
                        else
                          addProduct(myController.text);
                      },
                      icon: Icon(Icons.add, size: 18),
                      label: Text("Create"),
                    ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget Test() {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: rooms.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return GridTile(
            child: Container(
              width: 400, padding: const EdgeInsets.all(5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, rooms[index]['id']);
                } ,
                child: Column(children: [
                  Container(padding: EdgeInsets.only(top: 10), child:Text(rooms[index]['name']),),
                  Container(padding: EdgeInsets.only(top: 10), child:Icon(lockControl(rooms[index]['lock']),size: 25,),),
                  Container(padding: EdgeInsets.only(top: 10), child: Text(statusControl(rooms[index]['status'])),)
                ]
                  ,),)
            ) //just for testing, will fill with image later
          );
      },
    );
}
}




/*

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
 */
