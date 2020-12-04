import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'create3.dart';

class CreateAccount2 extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _CreateAccountState2();
  }
}

class _CreateAccountState2 extends State<CreateAccount2>{
  String _POIfilePath = null;
  String _POAfilePath = null;
  String _PhotofilePath = null;
  pickPOIFile() async{
   try {
      String filePath = await FilePicker.getFilePath(type: FileType.any);
      if (filePath == '') {
        return;
      }
      print("File path: " + filePath);
      var pos = filePath.lastIndexOf('/');
      String fileName = (pos != -1)? filePath.substring(pos+1): filePath;
      setState((){this._POIfilePath = fileName;});
    } catch (e) {
      print("Error while picking the file: " + e.toString());
    }
  }

  pickPOAFile() async{
   try {
      String filePath = await FilePicker.getFilePath(type: FileType.any);
      if (filePath == '') {
        return;
      }
      print("File path: " + filePath);
      var pos = filePath.lastIndexOf('/');
      String fileName = (pos != -1)? filePath.substring(pos+1): filePath;
      setState((){this._POAfilePath = fileName;});
    } catch (e) {
      print("Error while picking the file: " + e.toString());
    }
  }

  pickPhotoFile() async{
   try {
      String filePath = await FilePicker.getFilePath(type: FileType.any);
      if (filePath == '') {
        return;
      }
      print("File path: " + filePath);
      var pos = filePath.lastIndexOf('/');
      String fileName = (pos != -1)? filePath.substring(pos+1): filePath;
      setState((){this._PhotofilePath = fileName;});
    } catch (e) {
      print("Error while picking the file: " + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Account Opening',
        style: TextStyle(fontWeight: FontWeight.bold))
    ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            child: Text('Step 2: Upload Documents',
              style: TextStyle(fontWeight:FontWeight.bold,
                fontSize: 20,
                // color: Colors.red,
              ),
            ),),
          Container(
            margin:EdgeInsets.all(15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text('Proof of Identity :',
              style: TextStyle(fontWeight:FontWeight.bold,
                fontSize: 15,
                // color: Colors.red,
              ),),
              MaterialButton(
                  onPressed: pickPOIFile,
                  color: Colors.blue,
              child: Text('Select ',
                      style: TextStyle(fontSize: 15)),
              textColor: Colors.white,
            ),
            ],),),
          _POIfilePath != null ? Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(),
            child: Text("POI File :  " + _POIfilePath,
            style: TextStyle(fontWeight:FontWeight.bold,
            fontSize: 18,),),):Container(),
          Container(
            margin:EdgeInsets.all(15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Proof of Address :',
                  style: TextStyle(fontWeight:FontWeight.bold,
                    fontSize: 15,
                    // color: Colors.red,
                  ),),
                MaterialButton(
                  onPressed: pickPOAFile,
                  color: Colors.blue,
                  child: Text('Select ',
                      style: TextStyle(fontSize: 15)),
                  textColor: Colors.white,
                ),
              ],),),
              _POAfilePath != null ? Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(),
            child: Text("POA File :  " + _POAfilePath,
            style: TextStyle(fontWeight:FontWeight.bold,
            fontSize: 18,),),):Container(),
            Container(
            margin:EdgeInsets.all(15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Passport size photo :',
                  style: TextStyle(fontWeight:FontWeight.bold,
                    fontSize: 15,
                    // color: Colors.red,
                  ),),
                MaterialButton(
                  onPressed: pickPhotoFile,
                  color: Colors.blue,
                  child: Text('Select ',
                      style: TextStyle(fontSize: 15)),
                  textColor: Colors.white,
                ),
              ],),),
              _PhotofilePath != null ? Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(),
            child: Text("Photo File :  " + _PhotofilePath,
            style: TextStyle(fontWeight:FontWeight.bold,
            fontSize: 18,),),):Container(),
          Container(
            margin: EdgeInsets.all(15),
            child: MaterialButton(
              elevation: 0,
              height: 50,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CreateAccount3()));
              },
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Submit ',
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