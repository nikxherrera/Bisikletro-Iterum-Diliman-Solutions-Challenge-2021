import 'package:BisikletroApp/screens/signup-form-screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    var mqWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 3),
            AspectRatio(
              aspectRatio: 5 / 3,
              child: Image.asset(
                'assets/images/logo1.png',
                fit: BoxFit.contain,
              ),
            ),
            Text("Sign Up",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
            Text("Its easier to sign up now", style: TextStyle(fontSize: 18)),
            Spacer(),
            Container(
              width: mqWidth * .8,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 10 / 2,
                    child: RaisedButton.icon(
                      color: Color(0xFF3B5998),
                      icon: new Image.asset(
                        'assets/images/fb-icon-w.png',
                      ),
                      onPressed: () {},
                      label: Text(
                        "Continue with Facebook",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  AspectRatio(
                    aspectRatio: 10 / 2,
                    child: OutlineButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => SignupFormScreen()));
                      },
                      child: Text("I'll use email or phone"),
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
                    icon: Image.asset('assets/images/google-icon.png'),
                    onPressed: () {}),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                FlatButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (ctx) => SignUpScreen()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
            Spacer(flex: 3)
          ],
        ),
      ),
    );
  }
}
