class _XOX {

  int _x;
  int _y;
  _XOX(this._x, this._y);

  int get y => _y;

  set y(int value) {
    _y = value;
  }

  int get x => _x;

  set x(int value) {
    _x = value;
  }


}


/*
 children:[
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/game');
            },
            child: Column(children: [
              Container(padding: EdgeInsets.only(top: 20), child:Text("Murat's Room"),),
              Container(padding: EdgeInsets.only(top: 20), child:Icon(Icons.done,size: 25,),),
              Container(padding: EdgeInsets.only(top: 20), child:Text("1/2"),),
            ]
         ,)
      ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/game');
              },
              child: Column(children: [
                Container(padding: EdgeInsets.only(top: 20), child:Text("Yasin's Room"),),
                Container(padding: EdgeInsets.only(top: 20), child:Icon(Icons.lock,size: 25,),),
                Container(padding: EdgeInsets.only(top: 20), child:Text("1/2"),),
              ]
                ,)
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/game');
              },
              child: Column(children: [
                Container(padding: EdgeInsets.only(top: 20), child:Text("Fatih's Room"),),
                Container(padding: EdgeInsets.only(top: 20), child:Icon(Icons.lock,size: 25,),),
                Container(padding: EdgeInsets.only(top: 20), child:Text("1/2"),),
              ]
                ,)
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/game');
              },
              child: Column(children: [
                Container(padding: EdgeInsets.only(top: 20), child:Text("Test's Room"),),
                Container(padding: EdgeInsets.only(top: 20), child:Icon(Icons.close,size: 25,),),
                Container(padding: EdgeInsets.only(top: 20), child:Text("2/2"),),
              ]
                ,)
          ),

        ]
 */