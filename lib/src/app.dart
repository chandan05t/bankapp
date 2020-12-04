import 'package:flutter/material.dart';
import 'file:///C:/Users/chand/Desktop/Team27_GradHack-main/Main_App/lib/src/screens/create.dart';
import 'package:login_app/src/screens/login.dart';

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login App',
//       theme: ThemeData(
//         accentColor: Colors.orange,
//         primarySwatch: Colors.blue
//       ),
//       home: LoginScreen(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color primaryColor = Color(0xff18203d);
  Color secondaryColor = Color(0xff232c51);
  Color logoGreen = Color(0xff25bcbb);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //We take the image from the assets
            Image.asset(
              'assets/IMG.png',
              height: 250,
            ),
            SizedBox(
              height: 20,
            ),
            //Texts and Styling of them
            Text(
              'Welcome to GRAD BANK !',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(height: 20),
            Text(
              'Bank of the Future',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            //Our MaterialButton which when pressed will take us to a new screen named as
            //LoginScreen
            MaterialButton(
              elevation: 0,
              height: 50,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CreateAccount()));
              },
              color: logoGreen,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Get Started',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
