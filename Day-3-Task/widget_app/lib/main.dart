import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: wid()));
}
class wid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Switch Button",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 30.0),),
          backgroundColor: Colors.tealAccent.shade400,
        ),
        backgroundColor:Colors.black,
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Divider(
                color: Colors.grey.shade700,
              ),
              myApp(),
              Divider(
                color: Colors.grey.shade700,
              ),
              Column(

                children: <Widget>[
                  Text("TASK:-",style: TextStyle( color: Colors.white,fontSize: 20.0),),
                  Text("Create a homepage with all widgets and has swutch button in top-right corner.",style: TextStyle( color: Colors.white,fontSize: 20.0),),
                ],),

            ],
          ),
        )
    );
  }
}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  bool on=false;
  Color c=Colors.grey;
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Day 3 Task",style: TextStyle( color:c,fontSize: 20.0),),
        Switch(
          value: on,
          onChanged:(value){
            if(on==false){
              setState(() {
                on=value;
                c=Colors.white;
              });
            }
            else{
              setState(() {
                on=false;
                c=Colors.grey;
              });
            }
          },

          activeColor: Colors.tealAccent,
          activeTrackColor: Colors.teal.shade700,
          inactiveTrackColor: Colors.grey,
          inactiveThumbColor: Colors.grey.shade700,
        )
      ],);
  }
}
