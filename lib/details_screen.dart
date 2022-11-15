import 'package:flutter/material.dart';
class DetailScreen extends StatefulWidget {
  final String name ;
  const DetailScreen({Key? key,required this.name}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(widget.name,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
