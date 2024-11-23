import 'package:flutter/material.dart';
import 'package:menjawi/shop.dart';

void main (){
  runApp(const Jawify());
}

class Jawify extends StatelessWidget {
  const Jawify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: ShopPage());
  }
}
