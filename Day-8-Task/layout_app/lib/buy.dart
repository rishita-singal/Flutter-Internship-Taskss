import 'package:flutter/material.dart';
import 'Credit.dart';
import 'COD.dart';
import 'bag.dart';
class buy extends StatefulWidget {
  @override
  _buyState createState() => _buyState();
}

class _buyState extends State<buy> {
  int colorgroup=0;
  int k=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink.shade700,
        title: Text("Payment Options",style: TextStyle(color: Colors.white),),
      ),
      body: Container(

        child: Column(
          children: [
           ListTile(title: Text("Credit Card"),
           trailing: Radio(value:1, groupValue: colorgroup,
               activeColor: Colors.pink,
               onChanged: (val){
             colorgroup=val;
             k=1;
             setState(() {

             });
           }),),
            Divider(thickness: 2.0,),
            ListTile(title: Text("Cash on Delivery"),
              trailing: Radio(value:2, groupValue: colorgroup,
                  activeColor: Colors.pink,
                  onChanged: (val){
                colorgroup=val;
                k=2;
                setState(() {});
              }),),
            Divider(thickness: 2.0,),
            RaisedButton(
              color: Colors.pink,
              onPressed: (){
                if(k==2){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>bag()));
                }
                else{
                  if(k==1){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>Credit()));
                  }
                }
              },
              elevation: 10.0,
              child: Text("SUBMIT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }

}
