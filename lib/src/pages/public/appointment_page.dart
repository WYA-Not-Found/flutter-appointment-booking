import 'package:appointment_booking/src/colors.dart';
import 'package:appointment_booking/src/pages/public/home_page.dart';
import 'package:flutter/material.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.3,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/doctor1.jpg',
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          child: Container(
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              pColor.withOpacity(0.9),
              pColor.withOpacity(0),
              pColor.withOpacity(0)
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: wColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: sdColor, blurRadius: 2, spreadRadius: 2)
                          ],
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: pColor,
                            size: 25,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: wColor,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: sdColor,
                                  spreadRadius: 2,
                                  blurRadius: 2)
                            ]),
                        child: const Icon(
                          Icons.favorite_outline,
                          color: pColor,
                          size: 25,
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Patients',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: wColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '1.8k',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: wColor),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Experience',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: wColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '10 yr',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: wColor),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Rating',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: wColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '4.9',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: wColor),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Dr Looney',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: pColor),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/lined heart.png',
                        width: 50,
                        height: 50,
                      ),
                      const Text('Surgeon'),
                    ],
                  ),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: bColor.withOpacity(0.6)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Book Date',
                    style: TextStyle(
                        fontSize: 19,
                        color: bColor.withOpacity(.6),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                          right: 10,
                          left: index == 0 ? 20 : 4),
                      width: 90,
                      height: 70,
                      decoration: BoxDecoration(
                          color: index == 1 ? pColor : wColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: sdColor, blurRadius: 1, spreadRadius: 1)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${index + 1}",
                            style: TextStyle(
                                color: index == 1
                                    ? wColor
                                    : bColor.withOpacity(.5),
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('DEC',
                              style: TextStyle(
                                  color: index == 1
                                      ? wColor
                                      : bColor.withOpacity(.5),
                                  fontWeight: FontWeight.w700))
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Book Time',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: bColor.withOpacity(.6)),
              ),
            ),
            Container(
              height: 60,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                          right: 10,
                          left: index == 0 ? 20 : 4),
                      width: 90,
                      height: 70,
                      decoration: BoxDecoration(
                          color: index == 2 ? pColor : wColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: sdColor, blurRadius: 1, spreadRadius: 1)
                          ]),
                      child: Center(
                        child: Text(
                          "${index + 1} : 00 PM",
                          style: TextStyle(
                              color:
                                  index == 2 ? wColor : bColor.withOpacity(.5),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              child: InkWell(
                onTap: () {
                  print('you booked an appointment');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: pColor, borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'Book Appontment',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: wColor),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ]),
    ));
  }
}
