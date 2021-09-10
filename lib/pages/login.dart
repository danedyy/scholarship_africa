import 'package:flutter/material.dart';
import 'package:scholarship_africa/util/constants.dart';
import 'package:scholarship_africa/util/spacer.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
                // color: Colors.blue,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Column(
                    // mainAxisSize: ,
                    children: const [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 38, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Back',
                        style: TextStyle(
                            fontSize: 38, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              S.h(MediaQuery.of(context).size.height * .05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none),
                        filled: true,
                        hintStyle: const TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w600),
                        hintText: "Email",
                        fillColor: Colors.indigo.shade50),
                  ),
                  S.h(10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none),
                        filled: true,
                        hintStyle: const TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w600),
                        hintText: "Password",
                        suffixIcon: const Icon(Icons.visibility),
                        fillColor: Colors.indigo.shade50),
                  ),
                  S.h(20),
                  const Text(
                    'Forgot Password? Reset here',
                    style: TextStyle(
                        color: Colors.blueGrey, fontWeight: FontWeight.w700),
                  ),
                  S.h(40),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/', (Route<dynamic> route) => false);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Log In',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white70,
                                fontWeight: FontWeight.w600),
                          ),
                          S.w(10),
                          const Card(
                              shape: CircleBorder(),
                              child: Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ))
                        ],
                      ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primaryColor),
                    ),
                  ),
                ],
              ),
              S.h(MediaQuery.of(context).size.height * .2),
              Text(
                'Don\'t have an account? Sign Up',
                style: TextStyle(
                    color: Colors.indigo.shade900, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
