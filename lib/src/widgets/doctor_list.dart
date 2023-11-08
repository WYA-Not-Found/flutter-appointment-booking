import "package:appointment_booking/src/colors.dart";
import "package:appointment_booking/src/pages/public/appointment_page.dart";
import "package:flutter/material.dart";
import "package:material_design_icons_flutter/material_design_icons_flutter.dart";

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  void onPressDoctor(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AppointmentPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: const EdgeInsets.only(bottom: 30),
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 15, right: 15),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            height: 300,
            margin: const EdgeInsets.only(right: 15, top: 5, bottom: 5),
            decoration: BoxDecoration(
                color: const Color(0xFFF2F8FF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: sdColor, blurRadius: 2, spreadRadius: 1)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        onPressDoctor(context);
                      },
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        child: Image.asset(
                          "images/doctor${index + 1}.jpg",
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                            color: wColor, shape: BoxShape.circle),
                        child: const Icon(
                          Icons.favorite_outline,
                          color: pColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Dr Looney',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: pColor),
                  ),
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Surgeon',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('4.9'),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
