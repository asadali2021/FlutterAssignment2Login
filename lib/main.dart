import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: Colors.blue[400],
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
    );
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow[800],
        appBar: AppBar(
          title: Center(
            child: Text('Login Page'),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                TextField(
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.blueAccent,
                  cursorRadius: Radius.circular(16.0),
                  cursorWidth: 5.0,
                  maxLength: 30,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    backgroundColor: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter Email',
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                TextField(
                  obscureText: true,
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.blueAccent,
                  cursorRadius: Radius.circular(16.0),
                  cursorWidth: 5.0,
                  maxLength: 30,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    backgroundColor: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {},
                  child: Text('Just A Submit Button'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
