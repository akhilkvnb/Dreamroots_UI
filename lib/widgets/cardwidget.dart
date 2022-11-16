import 'package:flutter/material.dart';

class cardwidget extends StatelessWidget {
  const cardwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 20),
      child: Container(
        height: 130,
        width: 150,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 247, 236, 236),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 216, 173, 224),
                  blurRadius: 3,
                  offset: Offset(0, 0)),
            ],
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 222, 194, 223),
                      blurRadius: 5.0,
                      offset: Offset(
                        3.0, // Move to right 10  horizontally
                        10.0, // Move to bottom 10 Vertically
                      ),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(child: Icon(Icons.home)),
            ),
            const SizedBox(height: 15),
            const Center(
              child: Text(
                'Lorem',
                style: TextStyle(fontSize: 12),
              ),
            ),
            const SizedBox(height: 15),
            Stack(
              children: [
                Container(
                  height: 10,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                ),
                Container(
                    width: 80,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 185, 170, 221),
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: Offset(0, 0)),
                        BoxShadow(
                            color: Color.fromARGB(255, 184, 148, 207),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(3, 5)),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
