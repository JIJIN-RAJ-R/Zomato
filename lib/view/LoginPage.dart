import 'package:flutter/material.dart';
import 'package:zomato/controller/auth.dart';

import 'package:zomato/view/menu.dart';
import 'package:zomato/view/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Column(
                  children: [
                    Stack(
                      children: <Widget>[
                        Image.network(
                          'https://img.freepik.com/premium-vector/hamburger-red-background_821599-635.jpg',
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 300),
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Zomato',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 30, right: 20),
                          alignment: Alignment.topRight,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              // context,
                              // MaterialPageRoute(
                              // builder: (context) => const menuPage(
                              // email: '',
                              // ),
                              // ),
                              // );
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(8, 30),
                              backgroundColor: Colors.black45,
                            ),
                            child: const Text(
                              'skip>',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              'India\'s #1 Food Delivery\n      and Dining App ',
              style: TextStyle(
                fontSize: 30,
                height: 1,
                fontWeight: FontWeight.w700,
              ),
            ),
            // const SizedBox(
            // height: 10,
            // ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Log in  or',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupPage(),
                            ));
                      },
                      child: Text('sign up'))
                ],
              ),
            ),
            // const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // Input field for email
                  TextField(
                    controller: _emailTextController,
                    decoration: const InputDecoration(
                      labelText: 'Enter Email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Input field for password
                  TextField(
                    controller: _passwordTextController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Enter Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                onPressed: () async {
                  if (_emailTextController.text.isEmpty ||
                      _passwordTextController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter Email and password.'),
                      ),
                    );
                    return;
                  }

                  setState(() {
                    _loading = true;
                  });
                  // call login method from auth
                  final message = await AuthService().login(
                    email: _emailTextController.text,
                    password: _passwordTextController.text,
                  );
                  setState(() {
                    _loading = false;
                  });
                  if (message == 'Success') {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const menuPage(
                          email: ' ',
                        ),
                      ),
                      (route) => false,
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message ?? 'An error occurred'),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.06,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    border: Border(),
                  ),
                  child: _loading
                      ? const CircularProgressIndicator()
                      : const Text(
                          'Login',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                ),
              ),
            ),
            // TextButton(
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => const  SignupPage(),
            //         ));
            //   },
            //   child: Container(
            //     child: const
            //     Text(
            //       'Sign Up',
            //       style: TextStyle(
            //         fontSize: 10.0,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
            const Text('_____ or ______'),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const EmailPage(),
                      //   ),
                      // );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      width: 50,
                      child: Image.network(
                        'http://pngimg.com/uploads/google/google_PNG19635.png',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(7)),
                    width: 50,
                    height: 50,
                    child: Image.network(
                        'https://cdn.freebiesupply.com/images/thumbs/2x/apple-logo.png'),
                  ),
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(7)),
                      child: const Icon(Icons.more_horiz)),
                ],
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            const Text(
              'By Continuing,You agree to our',
              style: TextStyle(fontSize: 15),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Terms of Service',
                  style: TextStyle(
                      decoration: TextDecoration.underline, fontSize: 10),
                ),
                Text(
                  'Privacy policy',
                  style: TextStyle(
                      decoration: TextDecoration.underline, fontSize: 10),
                ),
                Text(
                  'Content Policies',
                  style: TextStyle(
                      decoration: TextDecoration.underline, fontSize: 10),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
