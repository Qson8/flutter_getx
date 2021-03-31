
import 'package:flutter/material.dart';

class UnknownRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UnknownRoutePage'),
        elevation: 0.0,
      ),
      body: Container(child: Center(
        child: Text('暂时没数据'),
      ),),
    );
  }
}