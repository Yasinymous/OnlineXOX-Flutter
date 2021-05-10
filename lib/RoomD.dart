import 'package:flutter/material.dart';

class RoomItem {
  const RoomItem({this.Roomid,this.RoomName, this.Status, this.Lock});
  final String Roomid;
  final String RoomName;
  final bool Status;
  final bool Lock;
}

IconData lockControl(bool lock){
  if (lock)
    return Icons.done;
  else
    return Icons.lock;
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