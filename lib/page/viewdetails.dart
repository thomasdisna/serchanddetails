import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewDetails extends StatefulWidget {
  ViewDetails({required this.email,required this.name,required this.username,required this.img});
  String img;
  String name;
  String username;
  String email;
  @override
  _ViewDetailsState createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Details"),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Image.network(widget.img),
          ),
          Text("NAME:"+widget.name),
          Text("USERNAME:"+widget.username),
          Text("EMAIL:"+widget.email)

        ],
      ),
    );
  }
}
