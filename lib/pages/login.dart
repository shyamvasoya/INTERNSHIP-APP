import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.homeroutes);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      //  appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/login.png",
            scale: 2,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "welcome $name",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: "username",
                        hintText: "enter your name",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "user name can not be empty";
                        }

                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "password",
                      hintText: "enter password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "password can not be empty";
                      } else if (value.length < 6) {
                        return "password length should be 6 ";
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  Material(
                    color: Color(0xFF673AB7),
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 40),
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changeButton ? 50 : 150,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "LogIn",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   child: Text("Log In"),
                  //   style: TextButton.styleFrom(),
                  //   onPressed: () {
                  //     // Text("shyam vasoya");
                  //     Navigator.pushNamed(context, MyRoutes.homeroutes);
                  //   },
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
