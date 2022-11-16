import 'package:flutter/material.dart';

class listcontainer extends StatelessWidget {
  const listcontainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Container(
            height: 130,
            width: 90,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 185, 170, 221),
                      blurRadius: 3,
                      offset: Offset(2, 5)),
                ],
                borderRadius: BorderRadius.circular(30)),
          ),
          Container(
            height: 50,
            width: 90,
            decoration: const BoxDecoration(
                color: Colors.indigo,
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 185, 170, 221),
                      blurRadius: 3,
                      offset: Offset(3, 8)),
                ],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: Center(
                child: Text(
              'Lorem',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
          ),
          Positioned(
            top: 80,
            left: 10,
            child: Text(
              'Lorem ipsum',
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
