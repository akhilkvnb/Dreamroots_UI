import 'package:dreamroots_ui/widgets/cardwidget.dart';
import 'package:dreamroots_ui/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/bookinglist.dart';
import '../widgets/knowmore.dart';
import '../widgets/listcontainer.dart';
import '../widgets/offerlist.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 240, 245),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            height: 35,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              //border: Border.all(),
              boxShadow: const [
                BoxShadow(
                    color: Colors.white, blurRadius: 3, offset: Offset(0, 0)),
                BoxShadow(
                    color: Color.fromARGB(255, 234, 218, 236),
                    blurRadius: 3,
                    offset: Offset(1, 5)),
              ],
            ),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Icon(
                    Icons.menu,
                    color: Colors.indigo,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.search_rounded,
                  color: Colors.indigo,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.indigo,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TitleWidget(title: 'Services'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [cardwidget(), cardwidget()],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Align(
                alignment: Alignment.centerRight,
                child: TitleWidget(title: 'Doctor of the mouth')),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 230, 213, 230),
                              blurRadius: 5.0,
                              spreadRadius: 2,
                              offset: Offset(
                                6.0, // Move to right 10  horizontally
                                4.0, // Move to bottom 10 Vertically
                              ),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(90),
                        ),
                      ),
                      Positioned(
                        left: 13,
                        top: 13,
                        //bottom: 20,
                        //right: 20,
                        child: Container(
                          height: 125,
                          width: 125,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          child: Container(
                            height: 125,
                            width: 125,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                stops: [
                                  0.26,
                                  0.14,
                                  0.6,
                                ],
                                colors: [
                                  Colors.white,
                                  Colors.indigo,
                                  Color.fromARGB(255, 110, 48, 139),
                                ],
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 230, 213, 230),
                                  blurRadius: 5.0,
                                  offset: Offset(
                                    6.0, // Move to right 10  horizontally
                                    10.0, // Move to bottom 10 Vertically
                                  ),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(90),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 32,
                        left: 32,
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 230, 213, 230),
                                blurRadius: 5.0,
                                offset: Offset(
                                  2.0, // Move to right 10  horizontally
                                  1.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(90),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Lorem ipsum',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet,consectur adipiscing elit.Etiam eu turpis molestie,dictumest a,mat',
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: TitleWidget(
              title: 'Problems',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              height: 140,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const listcontainer();
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 16, bottom: 16),
            child: Align(
              alignment: Alignment.centerRight,
              child: TitleWidget(
                title: 'Booking',
              ),
            ),
          ),
          Bookinglist(),
          Bookinglist(),
          Bookinglist(),
          Bookinglist(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TitleWidget(
              title: 'Know more',
            ),
          ),
          Knowmorelist(),
          SizedBox(height: 10),
          Knowmorelist(),
          SizedBox(height: 10),
          Knowmorelist(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.centerRight,
              child: TitleWidget(title: 'Offers'),
            ),
          ),
          Offerlist(),
          Offerlist(),
          Offerlist(),
          Offerlist(),
        ],
      )),
      bottomSheet: Container(
        height: 50,
        color: Colors.indigo,
      ),
    );
  }
}
