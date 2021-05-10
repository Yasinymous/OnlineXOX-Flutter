import 'package:flutter/material.dart';

class RoomItem {
  const RoomItem({this.Roomid,this.RoomName, this.Status, this.Lock});
  final String Roomid;
  final String RoomName;
  final bool Status;
  final bool Lock;
}

String lockControl(bool lock){
  if (lock)
    return 'https://firebasestorage.googleapis.com/v0/b/oxox-59fcb.appspot.com/o/padlock.svg?alt=media&token=c0411fdb-b6f9-4660-8cc7-f6f30d8186f5';
  else
    return 'https://firebasestorage.googleapis.com/v0/b/oxox-59fcb.appspot.com/o/unlock.svg?alt=media&token=f5041507-46cc-403b-b594-5619ab5f7c67';

}
String statusControl(bool status){
  if (status)
    return '1/2';
  else
    return '2/2';
}
String RoomidGen(){
  return 'test';
}

const String test = 'Murat';
const String test1= 'Test';
const List RoomList = const [
  const RoomItem(RoomName: "$test's Room",Status: false,Lock:false),
  const RoomItem(RoomName: "$test1's Room",Status: true,Lock:true),
];

void CreateRoom(String name,bool status,bool lock){
  RoomList.add(RoomItem(Roomid: RoomidGen(),RoomName: name,Status: status,Lock: lock));
}

void CreateRoom1(){
  RoomList.add(RoomItem(RoomName: 'name',Status: true,Lock: true));
}