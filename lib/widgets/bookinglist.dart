import 'package:flutter/material.dart';

class Bookinglist extends StatelessWidget {
  const Bookinglist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 185, 170, 221),
                  blurRadius: 3,
                  offset: Offset(3, 5)),
            ],
            borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 185, 170, 221),
                        blurRadius: 3,
                        offset: Offset(3, 5)),
                  ],
                  borderRadius: BorderRadius.circular(30)),
            ),
            title: const Text('Lorem'),
            trailing: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 185, 170, 221),
                        blurRadius: 3,
                        offset: Offset(3, 5)),
                  ],
                  borderRadius: BorderRadius.circular(30)),
              child: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
            ),
          ),
        ),
      ),
    );
  }
}
