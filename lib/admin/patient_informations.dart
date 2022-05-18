// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

String postifOrNegatif = "Positif or negatif";

// ignore: must_be_immutable
class PatientInformations extends StatefulWidget {
  String userid;
   PatientInformations({required this.userid, Key? key}) : super(key: key);

  @override
  State<PatientInformations> createState() => _PatientInformationsState();
}

class _PatientInformationsState extends State<PatientInformations> {
  // ignore: non_constant_identifier_names
  String dropdownvalue = 'O +';

  // List of items in our dropdown menu
  var items = [
    'O +',
    'O -',
    'A +',
    'A -',
    'B +',
    'B -',
    'AB +',
    'AB -',
  ];
  late int height = 10;
  late int weight = 10;
  int id = 1;

  // void _incrementCount() {
  //   setState(() {
  //     height++;
  //   });
  // }

  // void _decrementCount() {
  //   setState(() => height--);
  // }

  // void _incrementCount1() {
  //   setState(() {
  //     weight++;
  //   });
  // }

  // void _decrementCount1() {
  //   setState(() => weight--);
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: bgcolor,
      child: Padding(
        padding: EdgeInsets.only(
            top: 0.09 * size.height,
            bottom: 0.25 * size.height,
            right: 0.15 * size.width,
            left: 0.15 * size.width),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              iconTheme: const IconThemeData(color: bluefnc),
              toolbarHeight: 100,
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              title: const Text(
                "General Patient informations",
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: bluefnc,
                ),
              ),
              centerTitle: true,
            ),
            body: SafeArea(
              child: Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: 0.5 * size.width,
                  child: Column(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            //this row is for general user informations row

                            //first infos line

                            const SizedBox(
                              height: 11,
                            ),
                            Container(
                              height: 0.046 * size.height,
                              width: 440,
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor:
                                      const Color.fromARGB(253, 209, 209, 209),
                                  // border: OutlineInputBorder(
                                  //   borderRadius: BorderRadius.circular(10),

                                  // ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(253, 209, 209, 209),
                                      width: 1.5,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(253, 209, 209, 209),
                                      width: 1.5,
                                    ),
                                  ),
                                  hintText: "chronic diseases",
                                  hintStyle: const TextStyle(
                                    color: bluefnc,
                                    fontFamily: 'poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 11,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 0.046 * size.height,
                                  width: 0.20 * size.width,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      fillColor: const Color.fromARGB(
                                          253, 209, 209, 209),
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),

                                      // ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color.fromARGB(
                                              253, 209, 209, 209),
                                          width: 1.5,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color.fromARGB(
                                              253, 209, 209, 209),
                                          width: 1.5,
                                        ),
                                      ),
                                      hintText: "allergies",

                                      hintStyle: const TextStyle(
                                        color: bluefnc,
                                        fontFamily: 'poppins',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 11,
                                ),
                                Container(
                                  height: 0.046 * size.height,
                                  width: 0.20 * size.width,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      fillColor: const Color.fromARGB(
                                          253, 209, 209, 209),
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),

                                      // ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color.fromARGB(
                                              253, 209, 209, 209),
                                          width: 1.5,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color.fromARGB(
                                              253, 209, 209, 209),
                                          width: 1.5,
                                        ),
                                      ),
                                      hintText: "Wilaya of birth",

                                      hintStyle: const TextStyle(
                                        color: bluefnc,
                                        fontFamily: 'poppins',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 11),
                            Container(
                              height: 0.046 * size.height,
                              width: 440,
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor:
                                      const Color.fromARGB(253, 209, 209, 209),
                                  // border: OutlineInputBorder(
                                  //   borderRadius: BorderRadius.circular(10),

                                  // ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(253, 209, 209, 209),
                                      width: 1.5,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(253, 209, 209, 209),
                                      width: 1.5,
                                    ),
                                  ),
                                  hintText: "Phone number",

                                  hintStyle: const TextStyle(
                                    color: Color(0xff406083),
                                    fontSize: 11,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 0.01 * size.height,
                            ),

                            Container(
                              height: 47,
                              width: 530,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 45.0, left: 45),
                                child: DropdownButtonFormField2(
                                  scrollbarRadius: const Radius.circular(10),
                                  focusColor: Colors.white,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color.fromRGBO(
                                                  253, 209, 209, 100),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  value: dropdownvalue,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: const TextStyle(
                                          color: Color(0xff406083),
                                          fontSize: 12,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 0.02 * size.height,
                            ),
                            Container(
                              width: 0.45 * size.width,
                              height: 0.046 * size.height,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const FittedBox(
                                    child: Text(
                                      "Height :",
                                      style: TextStyle(
                                        color: Color(0xff406083),
                                        fontSize: 13,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 0.006),
                                  Container(
                                    width: 0.11 * size.width,
                                    height: 0.046 * size.height,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 0.11 * size.width,
                                          height: 0.046 * size.height,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: const Color(0x66d1d1d1),
                                              width: 1.50,
                                            ),
                                            color: const Color(0x0cd1d1d1),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              FittedBox(
                                                child: Text(
                                                  height.toString() + "CM",
                                                  style: const TextStyle(
                                                    color: Color(0xff0dbed8),
                                                    fontSize: 13,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 0.001 * size.width),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.01 * size.width,
                                  ),
                                  const FittedBox(
                                    child: Text(
                                      "Height :",
                                      style: TextStyle(
                                        color: Color(0xff406083),
                                        fontSize: 13,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 0.006),
                                  Container(
                                    width: 0.11 * size.width,
                                    height: 0.046 * size.height,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 0.11 * size.width,
                                          height: 43.50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: const Color(0x66d1d1d1),
                                              width: 1.50,
                                            ),
                                            color: const Color(0x0cd1d1d1),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              FittedBox(
                                                child: Text(
                                                  height.toString() + "CM",
                                                  style: const TextStyle(
                                                    color: Color(0xff0dbed8),
                                                    fontSize: 13,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 0.001 * size.width),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 0.03 * size.height,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 103,
                                  height: 0.040 * size.height,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: blueclr,
                                        elevation: 4,
                                        primary: blueclr,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Next",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Icon(Icons.arrow_right),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
