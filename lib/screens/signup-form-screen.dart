import 'package:BisikletroApp/screens/login-screen.dart';
import 'package:flutter/material.dart';

class SignupFormScreen extends StatefulWidget {
  @override
  _SignupFormScreenState createState() => _SignupFormScreenState();
}

class _SignupFormScreenState extends State<SignupFormScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var checkedValue = false;

  @override
  Widget build(BuildContext context) {
    var mqWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 2,),
                Container(
                  width: mqWidth * .9,
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text(
                        "Sign Up",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 36),
                      ),
                      Text("Create your account",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: mqWidth * .8,
                  child: Column(
                    children: [
                      Container(
                        height: 53,
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: "First name",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 53,
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: "Last name",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 53,
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: "Username",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 53,
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 53,
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: CheckboxListTile(
                    title: Text(
                        "I Agree on the Terms and Conditions and the Privacy policy.",
                        style: TextStyle(fontSize: 13)),
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                ),
                Container(
                  width: mqWidth * .8,
                  child: signUpButtonBuilder(),
                ),
                SizedBox(height: 5),
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
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? "),
                    FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (ctx) => LoginScreen()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget signUpButtonBuilder() => Container(
        child: AspectRatio(
          aspectRatio: 10 / 2,
          child: FlatButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => LoginScreen()));
            },
            child: const Text("SIGN UP", style: TextStyle(color: Colors.white)),
            color: Color(0xff3ACDDB),
          ),
        ),
      );
}
