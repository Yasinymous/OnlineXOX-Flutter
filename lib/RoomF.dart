import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinexox/RoomD.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_svg/flutter_svg.dart';


int buildNumber = 0;

class Rooms extends StatefulWidget{
  @override
  _RoomState createState() => _RoomState();

}
final String lock = 'https://firebasestorage.googleapis.com/v0/b/oxox-59fcb.appspot.com/o/padlock.svg?alt=media&token=c0411fdb-b6f9-4660-8cc7-f6f30d8186f5';
final String unlock = 'https://firebasestorage.googleapis.com/v0/b/oxox-59fcb.appspot.com/o/unlock.svg?alt=media&token=f5041507-46cc-403b-b594-5619ab5f7c67';

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

  void addProduct(String name,bool lock) {
    rooms.add({"id":"/game", "name": name, "status": true, "lock": lock});
    rebuildScreen();
  }

  void rebuildScreen() {
    setState(() {});
  }


  void createroom(){
    final myController = TextEditingController();
    bool lockcontrol = false;
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
                        maxLength: 10,
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
                          if (index==1)
                            lockcontrol = true;
                        },
                      ),
                      ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).pop();
                        if ((myController.text).isEmpty)
                          addProduct("Username",lockcontrol);
                        else
                          addProduct(myController.text,lockcontrol);
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
      padding: const EdgeInsets.all(20),
      itemCount: rooms.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        childAspectRatio: 0.8,
        mainAxisSpacing: 20,
        crossAxisSpacing: 1.0,
        ),
      itemBuilder: (BuildContext context, int index) {

        return GridTile(
            child: Container(
             padding: const EdgeInsets.all(5),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: const Radius.circular(45),
                          topLeft: const Radius.circular(15),
                          bottomRight: const Radius.circular(15),
                          bottomLeft: const Radius.circular(15),),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                      gradient: RadialGradient(
                        colors: [Colors.blue, Colors.lightBlue],
                        center: Alignment(-0.6, -1),
                        focal: Alignment(-1, -1),
                        focalRadius: 0.8,
                      ),
                    ),
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, rooms[index]['id']);
                    } ,

                     child: Stack(
                       overflow: Overflow.visible,
                      children: [
                        Positioned(
                         top: -15, left: -5,
                          child: Container(
                            child: SvgPicture.network(
                              lockControl(rooms[index]['lock']),
                              placeholderBuilder: (context) => CircularProgressIndicator(),
                              height: 50.0,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          child: Container(
                           child:Text(rooms[index]['name'],
                             style: GoogleFonts.getFont('Lato',fontSize: 17),),
                          ),
                        ),
                     /*   Positioned(
                          top: 100,
                          child:Container(
                            child: Text(statusControl(rooms[index]['status']),
                              style: GoogleFonts.getFont('Lato',fontSize: 20),)
                            ,)
                          ,),

                      */
                        Positioned(
                          top: 110,
                          child:Row(mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Icon(Icons.person,size:25,color: Colors.white,),
                              Icon(Icons.person,size:25,color: Colors.greenAccent,),
                            ])
                          ),
                        ],),


                  )
              )
            )
              //just for testing, will fill with image later
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





      Positioned(
                         top: -20,
                          child: Container(
                            child:Icon(lockControl(rooms[index]['lock']),size: 50,),),),
 */
