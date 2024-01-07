import 'package:flutter/material.dart';
import 'package:araba_sevdasi/components/buttons.dart';
import 'package:araba_sevdasi/components/textfieldStructure.dart';
import 'package:araba_sevdasi/pages/auth/signin.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  // text editing controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _secondPasswordController = TextEditingController();

  // sign user in method

  void signUserUp(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  // method for route to singin page

  void pushSignIn(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/auth/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                // Icon(Icons.lock,
                // size: 100,
                // ),

                // login
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                // text -> Welcome Back :)

                const SizedBox(
                  height: 10,
                ),

                const Text(
                  'Come and join us',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                // username textField

                textfieldStructure(
                  controller: _emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                // password textField

                textfieldStructure(
                  controller: _passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                // password textField again

                textfieldStructure(
                  controller: _secondPasswordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(
                  height: 20,
                ),

                // sign in button

                Buttons(
                  onTap: () => signUserUp(context),
                  yazi: "Sign In",
                ),

                const SizedBox(
                  height: 40,
                ),

                // not a member? register now

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do you have already account?",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () => pushSignIn(context),
                      child: const Text(
                        'Sign in now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
