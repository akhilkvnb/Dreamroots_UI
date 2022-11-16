import 'package:flutter/material.dart';

class Knowmorelist extends StatelessWidget {
  const Knowmorelist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 16),
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 185, 170, 221),
                      blurRadius: 3,
                      offset: Offset(3, 8)),
                ],
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
        ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            leading: Transform.rotate(
              angle: -2.36,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(255, 227, 222, 240),
                          blurRadius: 3,
                          spreadRadius: 3,
                          offset: Offset(2, 1)),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        // bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
            ),
            title: Text('Lorem ipsum'),
            trailing: Padding(
              padding: const EdgeInsets.only(left: 10, right: 16),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 227, 222, 240),
                        blurRadius: 3,
                        offset: Offset(8, 3)),
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ))
      ],
    );
  }
}
