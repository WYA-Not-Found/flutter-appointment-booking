import "package:appointment_booking/src/colors.dart";
import "package:appointment_booking/src/widgets/doctor_list.dart";
import "package:flutter/material.dart";
import "package:material_design_icons_flutter/material_design_icons_flutter.dart";

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> catNames = [
    "Dental",
    "Heart",
    "Eye",
    "Brain",
    "EyeEaring",
  ];

  List<Icon> catIcons = [
    Icon(MdiIcons.toothOutline, color: pColor, size: 30),
    Icon(MdiIcons.heartPlus, color: pColor, size: 30),
    Icon(MdiIcons.eye, color: pColor, size: 30),
    Icon(MdiIcons.brain, color: pColor, size: 30),
    Icon(MdiIcons.earHearing, color: pColor, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.5,
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    colors: [pColor.withOpacity(0.8), pColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/doctor1.jpg'),
                      ),
                      Icon(
                        Icons.notifications_outlined,
                        color: wColor,
                        size: 30,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hi, Programmer',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: wColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your health is Our\n First Priority',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: wColor),
                  ),
                ]),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 3.8,
                  bottom: 30,
                  left: 20,
                  right: 20),
              padding: const EdgeInsets.only(right: 20, top: 5),
              width: MediaQuery.of(context).size.width,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: wColor,
                  boxShadow: const [
                    BoxShadow(blurRadius: 6, spreadRadius: 3, color: sdColor)
                  ]),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search here..',
                  hintStyle: TextStyle(color: Colors.black.withOpacity(.8)),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 25,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: catIcons.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                          right: 20,
                          left: index == 0 ? 20 : 0,
                        ),
                        width: 70,
                        height: 70,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: wColor,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: const [
                              BoxShadow(
                                  color: sdColor,
                                  blurRadius: 4,
                                  spreadRadius: 2)
                            ]),
                        child: catIcons[index],
                      ),
                      const SizedBox(
                        width: 0,
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            right: 20,
                            left: index == 0 ? 20 : 0),
                        child: Text(catNames[index]),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                'Recommended Doctors',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            DoctorList(),
          ]),
        ],
      ),
    ));
  }
}
