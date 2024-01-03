import 'package:araba_sevdasi/anaMenu.dart';
import 'package:araba_sevdasi/pages/auth/kullanici_sozlesmesi.dart';
import 'package:flutter/material.dart';
import 'package:araba_sevdasi/components/buttons.dart';
import 'package:araba_sevdasi/components/textfieldStructure.dart';
import 'package:araba_sevdasi/components/square_tile.dart';
import 'package:araba_sevdasi/pages/auth/signup.dart';

// ignore: must_be_immutable

bool isChecked = false;
bool durum = false;

class Login extends StatefulWidget {
  @override
  State<Login> createState() => LoginState();
  Login({super.key});
}

class LoginState extends State<Login> {
  // text editing controllers
  final _emailController = TextEditingController(text: "emirozturk3@gmail.com");
  final _passwordController = TextEditingController(text: "123");

  // initialize the emailController

  // sign user in method
  void signUserIn(BuildContext context) {
    // DB ya da kullanici listesinden kontrol edilicek
    if (_emailController.text == "emirozturk3@gmail.com" &&
        _passwordController.text == "123" &&
        durum) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const AnaMenu()));
    } else {
      // Alert message
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            "Hata!",
            style: TextStyle(
              fontSize: 30,
              fontFamily: "Oswald",
              fontWeight: FontWeight.w400,
            ),
          ),
          content: const Text(
            "E-mail veya şifre yanlış!",
            style: TextStyle(
              fontSize: 22,
              fontFamily: "Oswald",
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                "Tamam",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Oswald",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

  // method for route to signup page
  void pushSingUp(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
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
                  "Sign in",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                // text -> Welcome Back :)

                SizedBox(
                  height: 10,
                ),

                const Text(
                  'Welcome Again',
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

                // forgot password?

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                          child: Checkbox(
                              activeColor: Colors.white,
                              checkColor: Colors.black,
                              fillColor:
                                  const MaterialStatePropertyAll(Colors.white),
                              value: isChecked,
                              onChanged: (value) {
                                durum = true;
                                setState(() => isChecked = value!);
                              }),
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sozlesme())),
                          child: const Text(
                            "Terms and Conditions",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 189, 189, 189)),
                          ),
                        ),
                      ]),
                ),

                // sign in button
                SizedBox(height: 20),

                Buttons(
                  onTap: () => signUserIn(context),
                ),

                SizedBox(
                  height: 30,
                ),

                // or continue with

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Or continue with",
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                // google + xPlatform

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'assets/images/auth/google.png'),
                    SizedBox(
                      width: 30,
                    ),
                    SquareTile(imagePath: 'assets/images/auth/facebook.png'),
                  ],
                ),

                SizedBox(
                  height: 40,
                ),

                // not a member? register now

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You don't have account?",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () => pushSingUp(context),
                      child: const Text(
                        'Register now',
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
