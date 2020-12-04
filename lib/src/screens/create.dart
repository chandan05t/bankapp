import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'create2.dart';

class CreateAccount extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _CreateAccountState();
  }}

class _CreateAccountState extends State<CreateAccount>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Account Opening',
        style: TextStyle(fontWeight: FontWeight.bold))
    ),
    body: ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(15),
          child: Text('Step 1: Personal Information',
            style: TextStyle(fontWeight:FontWeight.bold,
                fontSize: 20,
             // color: Colors.red,
            ),
          ),),
        Container(
          margin:EdgeInsets.all(15),
          child: TextField(
          decoration: InputDecoration(
              border: new OutlineInputBorder(
                  borderSide: new BorderSide()
              ),
              labelText: 'Full Name',
              hintText: 'Enter your Full Name'
          ),
        ),),
        Container(
          margin:EdgeInsets.all(15),
          child: TextField(
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderSide: new BorderSide()
                ),
                labelText: 'Date of Birth',
                hintText: 'Enter your Date of Birth'
            ),
          ),),
          Container(
          margin:EdgeInsets.all(15),
          child: TextField(
          decoration: InputDecoration(
              border: new OutlineInputBorder(
                  borderSide: new BorderSide()
              ),
              labelText: 'Email ID',
              hintText: 'Enter your Email ID'
          ),
        ),),
        Container(
          margin:EdgeInsets.all(15),
          child: TextField(
            minLines: 3,
            maxLines: 5,
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                borderSide: new BorderSide()
            ),
              labelText: 'Permanent Address',
                hintText: 'Enter your Permanent Address'
            ),
          ),),
        Container(
          margin: EdgeInsets.all(15),
          child: MaterialButton(
          elevation: 0,
          height: 50,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CreateAccount2()));
          },
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Next Step ',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          textColor: Colors.white,
        ),)
      ],
    ),);
  }

}

