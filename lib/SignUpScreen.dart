import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: buildBody(),
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 60),
        Row(
          children: <Widget>[
            FlatButton(
              child: Text("Login",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 32),
              ),
              onPressed: (){}, // Navigate to Login Screen and change the Text color to black
            ),
            SizedBox(width: 80,),
            FlatButton(
              child: Text("Sign Up",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35),
              ),
              onPressed: (){}, // navigate to the SignUp Screen and set the Text color black
            ),
          ],
        ),
        SizedBox(height: 50,),
        Image.asset("images/logo.png", scale: 15),
        Text("GoKart",
          style: TextStyle(color: Colors.deepPurple, fontSize: 28, fontStyle: FontStyle.italic),
        ),
        SizedBox(height: 50),
        TextField(
          decoration: InputDecoration(hintText: 'Email address'),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(hintText: 'Username'),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(hintText: 'Password', suffixIcon:Icon(Icons.visibility)),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(hintText: 'Repeat Password', suffixIcon:Icon(Icons.visibility)),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Material(elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.check,color: Colors.blue,),
                  Text("SIGN UP",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Already have an Account?",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            Text("Login",
              style: TextStyle(color: Colors.black, fontSize: 18),
            )
          ],
        )
      ],
    );
  }
}