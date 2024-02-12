import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:zomato/view/menu.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final TextEditingController _mobileTextcontroller = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                                fontSize: 40,
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const menuPage(),
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(8, 30),
                                    backgroundColor: Colors.black45),
                                child: const Text(
                                  'skip>',
                                  style: TextStyle(color: Colors.white),
                                )))
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
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Log in  or Sign up',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    // input mobile number
                    child: TextField(
                      // controller: _mobileTextcontroller,
                      decoration: InputDecoration(
                        labelText: 'Enter Mobile Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.06,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    border: Border(),
                    // color: Colors.red
                  ),
                  child: const Text(
                    'continue',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
            ),
            const Text('_____ or ______'),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(7)),
                    width: 50,
                    child: Image.network(
                        'http://pngimg.com/uploads/google/google_PNG19635.png'),
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
            const Text('By Continuing,You agree to our'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Terms of Service',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                  'Privacy policy',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                  'Content Policies',
                  style: TextStyle(decoration: TextDecoration.underline),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
