// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

String postifOrNegatif = "Positif or negatif";

class PatientInformations extends StatefulWidget {
  const PatientInformations({Key? key}) : super(key: key);

  @override
  State<PatientInformations> createState() => _PatientInformationsState();
}

class _PatientInformationsState extends State<PatientInformations> {
  String radioButtonItem = 'Patient';
  // ignore: non_constant_identifier_names
  String dropdownvalue = 'Positif';

  // List of items in our dropdown menu
  var items = [
    'Positif',
    'negatif',
  ];
  late int height = 10;
  late int weight = 10;
  int id = 1;

  void _incrementCount() {
    setState(() {
      height++;
    });
  }

  void _decrementCount() {
    setState(() => height--);
  }

  void _incrementCount1() {
    setState(() {
      weight++;
    });
  }

  void _decrementCount1() {
    setState(() => weight--);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgcolor,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 333, right: 333, bottom: 100, top: 100),
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
                  width: 525,
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
                              height: 42,
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
                                  hintText: "Place of Birth",

                                  hintStyle: const TextStyle(
                                    color: bluefnc,
                                    fontFamily: 'poppins',
                                    fontSize: 14,
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
                                  height: 42,
                                  width: 215,
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
                                      hintText: "Balaladiya of birth",

                                      hintStyle: const TextStyle(
                                        color: bluefnc,
                                        fontFamily: 'poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 11,
                                ),
                                Container(
                                  height: 42,
                                  width: 215,
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
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 11),
                            Container(
                              height: 42,
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
                                    fontSize: 13,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 11,
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 60,
                                ),
                                FittedBox(
                                  child: Text(
                                    "Group Sanguin: ",
                                    style: TextStyle(
                                      color: Color(0xff406083),
                                      fontSize: 15,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                RadioGroup(),
                              ],
                            ),

                            const SizedBox(
                              height: 11,
                            ),
                            Container(
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 200.0, left: 45),
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
                                          fontSize: 15,
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

                            const SizedBox(
                              height: 27,
                            ),
                            Container(
                              width: 399,
                              height: 42,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Height :",
                                    style: TextStyle(
                                      color: Color(0xff406083),
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(width: 27),
                                  Container(
                                    width: 108.50,
                                    height: 43.50,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 108.50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: const Color(0x66d1d1d1),
                                              width: 1.50,
                                            ),
                                            color: const Color(0x0cd1d1d1),
                                          ),
                                          padding: const EdgeInsets.only(
                                            top: 11,
                                            bottom: 10,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
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
                                              const SizedBox(width: 17.45),
                                              Container(
                                                height: 23,
                                                width: 23,
                                                child: Column(
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        _incrementCount();
                                                      },
                                                      child: const Icon(
                                                        Icons.add,
                                                        size: 9,
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        _decrementCount();
                                                      },
                                                      child: const Icon(
                                                        Icons.remove,
                                                        size: 9,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 27),
                                  const Text(
                                    "Weight :",
                                    style: TextStyle(
                                      color: Color(0xff406083),
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(width: 27),
                                  Container(
                                    width: 108.50,
                                    height: 43.50,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 108.50,
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
                                          padding: const EdgeInsets.only(
                                            top: 11,
                                            bottom: 10,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                weight.toString() + "KG",
                                                style: const TextStyle(
                                                  color: Color(0xff0dbed8),
                                                  fontSize: 13,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              const SizedBox(width: 24.45),
                                              Container(
                                                height: 23,
                                                width: 23,
                                                child: Column(
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        _incrementCount1();
                                                      },
                                                      child: const Icon(
                                                        Icons.add,
                                                        size: 9,
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        _decrementCount1();
                                                      },
                                                      child: const Icon(
                                                        Icons.remove,
                                                        size: 9,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 34,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 380,
                                ),
                                SizedBox(
                                  width: 103,
                                  height: 36,
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

class RadioGroup extends StatefulWidget {
  const RadioGroup({Key? key}) : super(key: key);

  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'Patient';

  // Group Value for Radio Button.
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'O: ',
            style: TextStyle(
              color: Color(0xffb4b4b4),
              fontSize: 13,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
          Radio(
            activeColor: const Color.fromRGBO(13, 190, 216, 100),
            value: 1,
            groupValue: id,
            onChanged: (val) {
              setState(() {
                radioButtonItem = 'O';
                id = 1;
              });
            },
          ),
          const SizedBox(
            width: 15,
          ),
          const Text(
            "A :",
            style: TextStyle(
              color: Color(0xffb4b4b4),
              fontSize: 13,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
          Radio(
            activeColor: const Color.fromRGBO(13, 190, 216, 100),
            value: 2,
            groupValue: id,
            onChanged: (val) {
              setState(() {
                radioButtonItem = 'Doctor';
                id = 2;
              });
            },
          ),
          const SizedBox(
            width: 15,
          ),
          const Text(
            "B :",
            style: TextStyle(
              color: Color(0xffb4b4b4),
              fontSize: 13,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
          Radio(
            activeColor: const Color.fromRGBO(13, 190, 216, 100),
            value: 3,
            groupValue: id,
            onChanged: (val) {
              setState(() {
                radioButtonItem = 'B';
                id = 3;
              });
            },
          ),
          const SizedBox(
            width: 15,
          ),
          const Text(
            "AB: ",
            style: TextStyle(
              color: Color(0xffb4b4b4),
              fontSize: 13,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
          Radio(
            activeColor: const Color.fromRGBO(13, 190, 216, 100),
            value: 4,
            groupValue: id,
            onChanged: (val) {
              setState(() {
                radioButtonItem = 'AB';
                id = 4;
              });
            },
          ),
        ],
      ),
    ]);
  }
}
