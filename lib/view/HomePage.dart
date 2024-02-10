import 'package:flutter/material.dart';
import 'package:zomato/view/LoginPage.dart';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 60, 59),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 216, 60, 59),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(20, 30),
              padding: const EdgeInsets.all(10),
            ),
          child:  const Text(
              'skip >',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Indians #1 food\n delivery app',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 1,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('60%\nOFF',
                  style: TextStyle(
                      fontSize: 40,
                      height: 1,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
              const SizedBox(
                height: 30,
              ),
              const Text('up to \$120',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 226, 221, 221))),
              const Text(
                '------ + -------',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const Text(
                'Free Delivery',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const Text(
                'on first oreder',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 226, 221, 221)),
              ),
              const SizedBox(
                height: 200,
              ),
              SizedBox(
                child: Image.network(
                  'https://freepngimg.com/thumb/pizza/2-pizza-png-image.png',
                  height: 300,
                  width: 600,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
