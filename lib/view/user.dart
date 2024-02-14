import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zomato/view/LoginPage.dart';

// ignore: camel_case_types
class user_page extends StatelessWidget {
  const user_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FaIcon(FontAwesomeIcons.user,
        size: 50,),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const FaIcon(FontAwesomeIcons.arrowLeft)),
        bottom: AppBar(
          automaticallyImplyLeading: false,
          // backgroundColor: Colors.green[100],
          toolbarHeight: 140,
          title: Card(
            child: Column(children: [
              const Text('Jijin'),
              const Text(
                'email',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                "View Activity >",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.red),
              ),
              Card(
                // height: 50,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.chessKing,
                        color: Colors.yellow[100],
                      ),
                      const Text(
                        'Joined Zomato Gold',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.yellow),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      const Text(
                        '>',
                        style: TextStyle(
                            color: Colors.yellow, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
           const  SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Mobile',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Date of birth',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  await FirebaseAuth.instance.signOut();
                  // ignore: use_build_context_synchronously
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                      (route) => false);
                } catch (e) {
                 print("Error signing out: $e");
                }
              },
              child: const Text('Log out'),
            ),
          ],
        ),
      ),
    );
  }
}
