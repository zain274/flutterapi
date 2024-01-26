// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  var data;
   Details({super.key,this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("${data['id']}"),
          Text("${data['name']}"),
          Text("${data['email']}"),
          Text("${data['address']['city']}")

          
          
        ],
      ),
    );
  }
}