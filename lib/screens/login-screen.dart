import 'package:BisikletroApp/main.dart';
import 'package:BisikletroApp/screens/home-screen.dart';
import 'package:BisikletroApp/screens/signup-screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mqWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(height: 20),
              Text("Login to your account"),
              SizedBox(height: 20),
              Container(
                width: mqWidth * .8,
                child: Column(
                  children: [
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Username or email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 30),
                    AspectRatio(
                      aspectRatio: 10 / 2,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (ctx) => HomeScreen()));
                        },
                        child: Text("LOGIN",
                            style: TextStyle(color: Colors.white)),
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: mqWidth * .7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Divider(color: Colors.black)),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text("Or continue with"),
                    ),
                    Expanded(child: Divider(color: Colors.black)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      icon: Image.asset('assets/images/fb-icon.png'),
                      onPressed: () {}),
                  IconButton(
                      icon: Image.asset('assets/images/google-icon.png'),
                      onPressed: () {}),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Doesn't have an account? "),
                  FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => SignUpScreen()));
                    },
                    color: Colors.red,
                    child: Text(
                      "Signup",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
