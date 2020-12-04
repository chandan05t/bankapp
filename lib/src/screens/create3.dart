import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class CreateAccount3 extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _CreateAccountState3();
  }
}

class _CreateAccountState3 extends State<CreateAccount3>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
      child:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Application Submitted Successfully',
          style: TextStyle(fontWeight:FontWeight.bold,
                fontSize: 20,
                color: Colors.blue,
              ),),
          Text('Further verification details will be mailed',
          style: TextStyle(fontWeight:FontWeight.bold,
                fontSize: 20,
                color: Colors.blue,
              ),),
              Container(
            margin: EdgeInsets.all(15),
            child: MaterialButton(
              elevation: 0,
              height: 50,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginScreen()));
              },
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Go Home',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
              textColor: Colors.white,
            ),)
        ],) ,));
  }
}