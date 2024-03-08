


import 'package:big_project/identity.dart';
import 'package:flutter/material.dart';

import 'blood_type.dart';




void main() {
  
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BloodType(),
      
    );
  }
}