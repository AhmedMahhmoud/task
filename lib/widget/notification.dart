import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 5),
          child: Icon(
            Icons.notifications,
            size: 32,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 0,
          top: 10,
          child: Container(
            height: 20,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            child: Center(
              child: Text(
                "12",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
