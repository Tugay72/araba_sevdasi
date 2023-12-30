import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {

  final String imagePath;
  
  const SquareTile({super.key, required this.imagePath});

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context){
    return Container( 
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 52, 32, 124)),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200]
      ),
      child: Image.asset(
        imagePath,
        height: 40,
        ),
    );
  }

}