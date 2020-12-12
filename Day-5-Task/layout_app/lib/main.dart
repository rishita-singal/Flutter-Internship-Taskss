import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myApp(),
  ));
}
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Product Selection Page"),
        centerTitle: true,
        backgroundColor: Colors.pink.shade700,
      ),
      body: select(),
    );
  }
}

class select extends StatefulWidget {
  @override
  _selectState createState() => _selectState();
}

class _selectState extends State<select> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset("images/watch.jpg"),
                  ),
                ),
                Container(
                  child: Expanded(
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("RUDEX",style: TextStyle(color: Colors.black,fontSize: 30.0),),
                        Text("Buy Rolex AU809 Watch",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        Container(color: Colors.white,
                          height: 10.0,),
                        Container(color: Colors.white,
                          height: 10.0,),
                        Container(

                         width:150.0,
                         height:40.0,
                         decoration: BoxDecoration(
                             color:Colors.white,
                             border:Border.all(color: Colors.grey)),
                         child: Row(
                           children: [
                              Container(
                                width: 10.0,
                                color: Colors.white,
                              ),
                             Expanded(
                                 flex:1,
                                 child: Text("4.5",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                             Expanded(
                                 flex:1,
                                 child: Icon(Icons.star,color: Colors.blue.shade800,)),
                             Expanded(
                                 flex:1,
                                 child: VerticalDivider()),
                             Expanded(
                                 flex:3,
                                 child: Text("240 ratings",style: TextStyle(color:Colors.grey),)),
                           ],
                         ),
                       ),
                            Container(color: Colors.white,
                            height: 10.0,),
                            Divider(thickness: 2.0,
                            height: 1.0,),
                        Container(color: Colors.white,
                          height: 10.0,),
                        Text("Rs.1699",style: TextStyle(color:Colors.black,fontSize: 35.0,fontWeight: FontWeight.bold),),
                        Container(color: Colors.white,
                          height: 10.0,),
                        Text("inclusive of all taxes",style: TextStyle(color:Colors.green.shade800,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
          child: Column(children: [
            Container(
              height: 20.0,
            ),
            Row(
              children: [
                Container(
                  width: 20.0,
                ),
                RaisedButton(

                  color: Colors.pink,
                  elevation: 10.0,
                  onPressed: (){
                    print("edf");
                  },
                  child:Row(
                    children: [
                      Icon(Icons.shopping_bag,color: Colors.white,),
                      Text(" ADD TO BAG",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ) ,
                ),
                Container(
                  width: 20.0,
                ),
                Container(
                  width: 20.0,
                ),
                Container(
                  width: 20.0,
                ),
                RaisedButton(

                  color: Colors.pink,
                  elevation: 10.0,
                  onPressed: (){
                    print("edf");
                  },
                  child:Row(
                    children: [
                      Icon(Icons.monetization_on,color: Colors.white,),
                      Text(" BUY NOW",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ) ,
                ),
              ],
            ),
            Container(
              height: 20.0,
            ),
            Row(children: [
              Container(
                height:20.0,
                width: 10.0,
                color: Colors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("100% Original Products",style: TextStyle(color:Colors.grey,fontSize: 15.0),),
                  Text("Free Delivery",style: TextStyle(color:Colors.grey,fontSize: 15.0),),
                  Text("Pay on Delivery might be available",style: TextStyle(color:Colors.grey,fontSize: 15.0),),
                  Text("Easy 30 days returns",style: TextStyle(color:Colors.grey,fontSize: 15.0),),
                  Text("This item is only returnable and not exchangeable",style: TextStyle(color:Colors.grey,fontSize: 15.0),),
                  SizedBox(height: 3.0,),
                  Text("Product is at it's Best Price",style: TextStyle(color:Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold)),
                ],
              )
            ],)
          ],),
          ),
          Expanded(
              flex:1,
              child: Row(
                children:[
                  Container(
                    height:20.0,
                    width: 10.0,
                    color: Colors.white,
                  ),
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PRODUCT DETAILS",style: TextStyle(color: Colors.black,fontSize: 19.0),),
                    Container(
                      height: 10.0,
                    ),
                    Text("Display: Analogue",style: TextStyle(color:Colors.grey,fontSize: 15.0),),
                    Text("Movement: Quartz",style: TextStyle(color:Colors.grey,fontSize: 15.0),),
                    Text("Warranty: 6 Months",style: TextStyle(color:Colors.grey,fontSize: 15.0),),
                    Text("Dial style: Solid round brass dial",style: TextStyle(color:Colors.grey,fontSize: 15.0),),
                    Text("Warranty: 6 Months",style: TextStyle(color:Colors.grey,fontSize: 15.0),),
                    Text("Strap style: Brown regular,leather strap",style: TextStyle(color:Colors.grey,fontSize: 15.0),),
                    Container(
                      height: 20.0,
                    ),
                    GestureDetector(
                      onTap: () => _popupDialog(context),
                      child: Container(
                        height: 40.0,
                        width:335.0,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          border: Border.all(color: Colors.pink),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(child: Text("TAP FOR OFFER",style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ],
                ),

                ]
              ),

          ),


        ],
      ),
    );
  }
}

void _popupDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('OFFER !!!'),
          content: Text('Pay through axis bank credit card and get 20% cashback..'),
          actions: <Widget>[
            FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('OK',style: TextStyle(color: Colors.pink),)),
            FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('CANCEL',style: TextStyle(color: Colors.pink),)),
          ],
        );
      });
}


