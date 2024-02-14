import 'package:flutter/material.dart';
import 'package:zomato/controller/auth.dart';
import 'package:zomato/view/menu.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://wallpaperboat.com/wp-content/uploads/2020/08/21/53277/food-19.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.center),
        ),
        child: const Center(
          child: SignupDialog(),
        ),
      ),
    );
  }
} // End of SignupPage

class SignupDialog extends StatefulWidget {
  const SignupDialog({Key? key}) : super(key: key);

  @override
  _SignupDialogState createState() => _SignupDialogState();
}

class _SignupDialogState extends State<SignupDialog> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _loading = false; // Variable to track loading state

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
      backgroundColor: Colors.white.withOpacity(0.8),

      title: const Text('Sign Up',
      ),
      content: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                  labelText: 'Enter your email',
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                  labelText: 'Enter your password',
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              obscureText: true,
            ),
            TextField(
              controller: _confirmPasswordController,
              decoration: const InputDecoration(
                  labelText: 'Confirm password',
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              obscureText: true,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            // Close the dialog
            Navigator.of(context).pop();
          },
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.red),
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            if (_passwordController.text != _confirmPasswordController.text) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Password and Confirm Password do not match.'),
                ),
              );
              return;
            } else {
              setState(() {
                _loading = true;
              });

              final message = await AuthService().registration(
                email: _emailController.text,
                password: _passwordController.text,
                confirmPassword:
                    _confirmPasswordController.text, // Pass confirm password
              );

              setState(() {
                _loading = false;
              });

              if (message!.contains('success')) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const menuPage(
                      email: ' ',
                    ),
                  ),
                  (route) => false,
                );
              }

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              );
            }
          },
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}
