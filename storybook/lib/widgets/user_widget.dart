import 'package:flutter/material.dart';


class UserWidget extends StatelessWidget {
  final String name;
  final String email;
  final int age;

  UserWidget({required this.name, required this.email, required this.age});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Name: $name'),
        Text('Email: $email'),
        Text('Age: $age'),
      ],
    );
  }
}
