import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {
  const Login({key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Work & Excel',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(),
        vsync: this,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Workstation Nigeria',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value.isEmpty ? 'Please enter email' : null;
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      maxLines: 1,
                      cursorColor: Colors.black,
                      autofocus: false,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter password',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value.isEmpty ? 'Please enter password' : null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.yellow,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ))
            ]),
      ),
    ));
  }

  // AnimatedBackground({behaviour, _LoginState vsync, Column child}) {}
}

// RandomParticleBehaviour() {}
