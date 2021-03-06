import 'package:c_square2/Screens/signup_screen.dart';
import 'package:c_square2/Widgets/round_Button.dart';
import 'package:flutter/material.dart';
import 'package:c_square2/palette.dart';
import 'login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'Welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: Image(
                width: 150,
                height: 150,
                image: AssetImage('images/Corona.png'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'C - S Q U A R E ',
                style: TextStyle(
                    fontSize: 35,
                    // fontWeight: FontWeight.bold,
                    color: kTextColor,
                    fontFamily: 'Even_Stevens'),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Hero(
                tag: 'login',
                child: RoundedButton(
                  color: kDarkPrimaryColor,
                  text: 'Log In',
                  onPress: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Hero(
                tag: 'signup',
                child: RoundedButton(
                  color: kDarkPrimaryColor,
                  text: 'Sign Up',
                  onPress: () {
                    Navigator.pushNamed(context, SignUpScreen.id);
                  },
                ),
              ),
            ),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
                child: Text(
                  'Skip ',
                  style: TextStyle(color: kTextColor),
                )),
          ],
        ),
      ),
    );
  }
}
