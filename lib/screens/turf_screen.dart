import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TurfScreen extends StatelessWidget {
  const TurfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.white24,
              filled: true,
              labelText: 'Enter Turf Name',
              
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Select Sports",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: GridView.count(crossAxisCount: 4, 
            dragStartBehavior: DragStartBehavior.start,
            children: [
              Container(color: Colors.blue,),
              Container(color: Colors.black,),
              Container(color: Colors.red,),
              Container(color: Colors.orange,),
            ],),
          ),
          
          Text(
            "Select Facilities",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          Flexible(
            child: GridView.count(
              dragStartBehavior: DragStartBehavior.down,
              shrinkWrap: true,
              mainAxisSpacing: 10,
        crossAxisSpacing: 10,
              crossAxisCount: 4,
              primary: false,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(color: Colors.amber),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(color: Colors.red),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(color: Colors.blue),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(color: Colors.orange),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(color: Colors.pink),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
