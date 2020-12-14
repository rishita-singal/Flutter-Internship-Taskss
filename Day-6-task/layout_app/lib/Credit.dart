import 'package:flutter/material.dart';
import 'bag.dart';
class Credit extends StatefulWidget {
  @override
  _CreditState createState() => _CreditState();
}

class _CreditState extends State<Credit> {
  TextEditingController numberController=TextEditingController();
  TextEditingController MonthController=TextEditingController();
  TextEditingController holderController=TextEditingController();
  TextEditingController CVVController=TextEditingController();
  TextEditingController YearController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade700,
        title: Text("Card Information",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 4.0,),
          Container(
            child: TextFormField(
              decoration:sty("Card Holder Name"),
              controller: holderController,
            ),
          ),
          SizedBox(height: 4.0,),
          Container(
            child: TextFormField(
              decoration:sty("Card Number"),
              controller: numberController,
            ),
          ),
          SizedBox(height: 4.0,),
          Container(
            child: TextFormField(
              decoration: sty("CVV"),
              controller: CVVController,
            ),
          ),
          SizedBox(height: 4.0,),
          SizedBox(height: 4.0,),
          Container(
            child:Text("Expiry",),
          ),
          Container(
            child: TextFormField(
              decoration: sty("Month"),
              controller: MonthController,
            ),
          ),
          SizedBox(height: 4.0,),
          Container(
            child: TextFormField(
              decoration: sty("Year"),
              controller: YearController,
            ),
          ),
          SizedBox(height: 4.0,),
          RaisedButton(onPressed:(){
            if(CVVController.text=="" || holderController.text=="" || MonthController.text=="" || YearController.text=="" || numberController.text=="")
              Text("All fields are mandatory",style: TextStyle(color: Colors.black,fontSize: 5.0),);
            else{
              Navigator.push(context, MaterialPageRoute(builder: (context)=>bag()));
            }

          },
            color: Colors.pink,
            child: Text("SAVE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),)
        ],
      ),
    );
  }
}
InputDecoration sty(S){
  return InputDecoration(
    labelText: S,
    border: new OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.pink,
        style: BorderStyle.solid,
      ),
    ),
  );
}