// import 'package:first_day/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _textcontroler = new TextEditingController();
  final TextEditingController _textcontroler2 = new TextEditingController();
  var value = "";
  bool cb = false;
  bool c = true;
  final _formkey = GlobalKey<FormState>();
  movetohome(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        cb = true;
      });
      await Future.delayed(Duration(seconds: 1));
      // await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        cb = false;
        _textcontroler.clear();
        _textcontroler2.clear();
        c = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.9,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          labelText: "Username",
                          hintText: " Enter username",
                          hintStyle: TextStyle(
                              fontSize: 5,
                              fontWeight: FontWeight.w100,
                              color: Colors.white)),
                      onChanged: (name) {
                        value = name;
                        setState(() {});
                        if (c = false) {
                          name = "";
                        }
                        setState(() {});
                      },
                      validator: (value) {
                        if (value != "ADMIN") {
                          return "wrong username or password";
                        }

                        return null;
                      },
                      controller: _textcontroler,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: " Enter password",
                          hintStyle: TextStyle(
                              fontSize: 5,
                              fontWeight: FontWeight.w100,
                              color: Colors.white)),
                      validator: (value) {
                        if (value != "12345678") {
                          return "wrong username or password";
                        }

                        return null;
                      },
                      controller: _textcontroler2,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(cb ? 50 : 5),
                      color: Colors.orange,
                      child: InkWell(
                        // splashColor: Colors.amber,
                        enableFeedback: true,
                        onTap: () => movetohome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: cb ? 60 : 50,
                          width: cb ? 60 : 120,
                          child: Center(
                            child: cb
                                ? Icon(Icons.done, color: Colors.white)
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
