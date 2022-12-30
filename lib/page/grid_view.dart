import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridView extends StatefulWidget {
  const GridView({super.key});

  @override
  State<GridView> createState() => _GridViewState();
  
  static count({required int crossAxisCount, required List<Padding> children}) {}
}

class _GridViewState extends State<GridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 3,
          children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              height: 50,
              width: 50,
              color: Colors.pinkAccent,
             ),
           ),
             Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              height: 50,
              width: 50,
              color: Colors.pinkAccent,
             ),
           ), 
             Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              height: 50,
              width: 50,
              color: Colors.pinkAccent,
             ),
           ), 
             Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              height: 50,
              width: 50,
              color: Colors.pinkAccent,
             ),
           ),  
          ],
        ));
      
    
  }
}