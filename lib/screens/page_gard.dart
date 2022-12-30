import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'login.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Center(
              child: Lottie.network(
                  'https://assets6.lottiefiles.com/packages/lf20_q4fu8eyb.json'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              'Welcome',
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 40,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 70, 126, 221),
              ),
            ),
          ),
        ],
      ),
    );
  }
}