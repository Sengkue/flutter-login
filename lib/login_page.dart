import 'dart:collection';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          flutterLogo(),
          const SizedBox(
            height: 20,
          ),
          emailTextformfield(context),
          const SizedBox(
            height: 20,
          ),
          passwordTextformfield(context),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          LoginButton(context),
          const Spacer(),
          Text('Nes User? Create Accound.'),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }

  Container LoginButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const home_page()),
          );
        },
        child: Text(
          'Login',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  Container passwordTextformfield(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      child: TextFormField(
        obscureText: visible,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.key),
            label: Text('Password'),
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    visible = !visible;
                  });
                },
                icon: Icon(
                  visible ? Icons.visibility : Icons.visibility_off,
                ))),
      ),
    );
  }

  Container emailTextformfield(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          border: OutlineInputBorder(),
          label: Text('Email'),
        ),
      ),
    );
  }

  Row flutterLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/flutter-icon.jpg',
          width: 80,
        ),
        Text(
          'Flutter',
          style: TextStyle(fontSize: 50),
        ),
      ],
    );
  }
}

// home page

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Color.fromRGBO(41, 49, 165, 1),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                Text(
                                  'Hey Seng',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'What would you like to do to day',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 50),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100))),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Go back!'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'images/flutter-icon.jpg',
                        width: 50,
                      ),
                      Text('pay Bills'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'images/flutter-icon.jpg',
                        width: 50,
                      ),
                      Text('Donate'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'images/flutter-icon.jpg',
                        width: 50,
                      ),
                      Text('Recipients'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'images/flutter-icon.jpg',
                        width: 50,
                      ),
                      Text('Offers'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('RECENT TRANSACTIONS'),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/flutter-icon.jpg',
                        width: 50,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Tou yang'),
                            Text('Groceries. 19 Feb, 19'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/flutter-icon.jpg',
                        width: 50,
                      ),
                      Column(
                        children: [
                          Text('Hue vang'),
                          Text('School Fee . 02 Feb, 19')
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
