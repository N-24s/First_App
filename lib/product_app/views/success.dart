import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Success"),),
      body: Center(
        child: Container(
          child: Text("تمت العملية بنجاح"),
        ),
      ),
    );
  }
}