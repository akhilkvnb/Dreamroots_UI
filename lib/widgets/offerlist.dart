import 'package:flutter/material.dart';

class Offerlist extends StatelessWidget {
  const Offerlist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 227, 222, 240),
                blurRadius: 3,
                offset: Offset(3, 8)),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Lorem ipsum',
                style: TextStyle(
                    color: Colors.indigo, fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }
}
