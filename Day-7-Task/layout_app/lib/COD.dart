import 'package:flutter/material.dart';
import 'buy.dart';
class COD extends StatefulWidget {
  @override
  _CODState createState() => _CODState();
}
class _CODState extends State<COD> {
  TextEditingController firstNameController=TextEditingController();
  TextEditingController LastNameController=TextEditingController();
  TextEditingController AddressController=TextEditingController();
  TextEditingController CityController=TextEditingController();
  TextEditingController StateController=TextEditingController();
  TextEditingController CountryController=TextEditingController();
  TextEditingController PincodeController=TextEditingController();
  TextEditingController ContactController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  int colorgroup=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink.shade700,
        title: Text("Shipping Information",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          SizedBox(height: 4.0,),
          Row(
            children: [
            
              Expanded(
                
                child: Container(
                  child: TextFormField(
                    decoration: sty("First Name"),
                    controller: firstNameController,
                    keyboardType: TextInputType.text,

                  ),
                ),
              ),
SizedBox(width: 5.0,),

              Expanded(
                
                child: Container(
                  width: 50.0,
                  child: TextFormField(
                    decoration: sty("Last Name"),
                    controller: LastNameController,
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
            ],
      ),
          SizedBox(height: 4.0,),
          ListTile(title: Text("Home Address"),
            trailing: Radio(value:1, groupValue: colorgroup,
                activeColor: Colors.pink,
                onChanged: (val){
                  colorgroup=val;
                  setState(() {
                  });
                }),),
          ListTile(title: Text("Work Address"),
            trailing: Radio(value:2, groupValue: colorgroup,
                activeColor: Colors.pink,
                onChanged: (val){
                  colorgroup=val;

                  setState(() {

                  });
                }),),
          SizedBox(height: 4.0,),
          Container(
            child: TextFormField(
              decoration:sty("Address"),
              controller: AddressController,
              keyboardType: TextInputType.streetAddress,
            ),
          ),
          SizedBox(height: 4.0,),
          Container(
            child: TextFormField(
              decoration: sty("City"),
              controller: CityController,
              keyboardType: TextInputType.streetAddress,
            ),
          ),
          SizedBox(height: 4.0,),
          Container(

            child: TextFormField(
              decoration: sty("State"),
              controller: StateController,
              keyboardType: TextInputType.streetAddress,
            ),
          ),
          SizedBox(height: 4.0,),
          Container(

            child: TextFormField(
              decoration: sty("Country"),
              controller: CountryController,
              keyboardType: TextInputType.streetAddress,
            ),
          ),
          SizedBox(height: 4.0,),
          Container(

            child: TextFormField(
              decoration: sty("Pincode"),
              controller: PincodeController,
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(height: 4.0,),
          Container(

            child: TextFormField(
              decoration: sty("Contact"),
              controller: ContactController,
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(height: 4.0,),
          Container(

            child: TextFormField(
              decoration: sty("Email"),
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
          ),
RaisedButton(onPressed:(){
  if(firstNameController.text=="" || LastNameController.text=="" || AddressController.text=="" || CityController.text=="" || StateController.text=="" ||CountryController.text=="" ||ContactController.text=="" || PincodeController.text==""  || emailController.text=="")
    Text("All fields are mandatory",style: TextStyle(color: Colors.black,fontSize: 5.0),);
  else{
    Navigator.push(context, MaterialPageRoute(builder: (context)=>buy()));
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