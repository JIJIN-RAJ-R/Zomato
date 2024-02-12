import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class user_page extends StatelessWidget {
  const user_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: FaIcon(FontAwesomeIcons.arrowLeft)),
        bottom: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.green[100],
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
                      SizedBox(
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
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Mobile',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Date of birth',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            )
          ],
        ),
      ),
    );
  }
}
