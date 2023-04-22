import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "welcome $name",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter password",
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // ElevatedButton(
              //   onPressed: () {
              //
              //   },
              //   style: TextButton.styleFrom(minimumSize: Size(130, 50)),
              //   child: (Text(
              //     "login",
              //     style: TextStyle(
              //       fontSize: 20,
              //     ),
              //   )),
              // )
              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(
                    seconds: 1,
                  ));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50,
                  width: changeButton ? 50 : 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: (Colors.purple),
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                  ),
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                ),
              )
            ],
          ),
        ));
  }
}
