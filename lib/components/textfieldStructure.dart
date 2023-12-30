import 'package:flutter/material.dart';

class textfieldStructure extends StatelessWidget {

  final controller;
  final String hintText;
  final bool obscureText;

  const textfieldStructure({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });
 
  

  @override
  Widget build(BuildContext context) {

    var icon;

    if (hintText == "Email") {
      icon = Icons.email;
    } else if (hintText == "Password") {
      icon = Icons.password;
    }
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),

      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          
          prefixIcon: Icon(icon, color:  const Color.fromARGB(255, 110, 0, 132),),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide.none
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
        ),
      ),
    );
  }
  
}