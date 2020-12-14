import 'package:flutter/material.dart';
class bag extends StatefulWidget {
  @override
  _bagState createState() => _bagState();
}

class _bagState extends State<bag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(title: Text("Confirmation Page"),
        centerTitle: true,
        backgroundColor: Colors.pink.shade700,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Order Confirmed",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300,fontSize: 30.0),),
            Icon(Icons.shopping_bag,color: Colors.grey,size: 30.0,),
          ],
        ),
      ),
    );
  }
}
