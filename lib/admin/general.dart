// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:real_version/const/routes.dart';
import 'package:real_version/utilities/get_role.dart';
import '../colors.dart';

// ignore: must_be_immutable
class Userinfo extends StatefulWidget {
  String userid;
  Userinfo({required this.userid, Key? key}) : super(key: key);

  @override
  State<Userinfo> createState() => _UserinfoState();
}

class _UserinfoState extends State<Userinfo> {
  late final TextEditingController _firstname;
  late final TextEditingController _secondname;
  late final TextEditingController _placeofbirth;
  late final TextEditingController _phone;
  late final TextEditingController _fathername;
  int id = 1;
  String radioButtonItem = 'Patient';
  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
    _firstname = TextEditingController();
    _secondname = TextEditingController();
    _phone = TextEditingController();
    _placeofbirth = TextEditingController();
    _fathername = TextEditingController();
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  void dispose() {
    _fathername.dispose();
    _firstname.dispose();
    _secondname.dispose();
    _phone.dispose();
    _placeofbirth.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgcolor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 335, vertical: 100),
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
                "General User informations",
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: bluefnc,
                ),
              ),
              centerTitle: true,
            ),
            body: Center(
              child: Container(
                width: 525,
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          //this row is for general user informations row

                          //first infos line
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 42,
                                width: 215,
                                child: TextField(
                                  controller: _firstname,
                                  decoration: InputDecoration(
                                    fillColor: const Color.fromARGB(
                                        253, 209, 209, 209),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(253, 209, 209, 209),
                                        width: 1.5,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(253, 209, 209, 209),
                                        width: 1.5,
                                      ),
                                    ),
                                    labelText: "First Name",

                                    labelStyle: const TextStyle(
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
                                  controller: _secondname,
                                  decoration: InputDecoration(
                                    fillColor: const Color.fromARGB(
                                        253, 209, 209, 209),
                                    // border: OutlineInputBorder(
                                    //   borderRadius: BorderRadius.circular(10),

                                    // ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(253, 209, 209, 209),
                                        width: 1.5,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(253, 209, 209, 209),
                                        width: 1.5,
                                      ),
                                    ),
                                    labelText: "last Name",

                                    labelStyle: const TextStyle(
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

                          const SizedBox(
                            height: 11,
                          ),
                          Container(
                              height: 65,
                              width: 440,
                              child: Center(
                                  child: TextField(
                                controller:
                                    dateinput, //editing controller of this TextField
                                decoration: InputDecoration(
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
                                  icon: const Icon(Icons
                                      .calendar_today), //icon of text field
                                  labelText: "Enter Date Of Birth", //label text of field
                                  labelStyle: const TextStyle(
                                    color: bluefnc,
                                    fontFamily: 'poppins',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                readOnly:
                                    true, //set it true, so that user will not able to edit text
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(
                                          2000), //DateTime.now() - not to allow to choose before today.
                                      lastDate: DateTime(2101));

                                  if (pickedDate != null) {
                                    print(
                                        pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                    String formattedDate =
                                        DateFormat('yyyy-MM-dd')
                                            .format(pickedDate);
                                    print(
                                        formattedDate); //formatted date output using intl package =>  2021-03-16
                                    //you can implement different kind of Date Format here according to your requirement

                                    setState(() {
                                      dateinput.text =
                                          formattedDate; //set output date to TextField value.
                                    });
                                  } else {
                                    print("Date is not selected");
                                  }
                                },
                              ))),

                          const SizedBox(
                            height: 11,
                          ),
                          Container(
                            height: 42,
                            width: 440,
                            child: TextField(
                              controller: _placeofbirth,
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
                                labelText: "Place Of Birth",

                                labelStyle: const TextStyle(
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
                          Container(
                            height: 42,
                            width: 440,
                            child: TextField(
                              controller: _phone,
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
                                labelText: "Phone Number",

                                labelStyle: const TextStyle(
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

                          //this next row is for choosing sexe
                          Row(
                            children: const [
                              SizedBox(
                                width: 45,
                              ),
                              Text(
                                " Sexe :",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: bluefnc,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),

                          Container(
                            width: 525,
                            height: 42,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 40,
                                ),
                                Container(
                                  width: 140.50,
                                  height: 43.50,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 140.50,
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
                                          left: 15,
                                          right: 17,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "Male",
                                              style: TextStyle(
                                                color: Color(0xff406083),
                                                fontSize: 13,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox(width: 57),
                                            Container(
                                              height: 21,
                                              width: 21,
                                              child: Radio(
                                                activeColor:
                                                    const Color.fromRGBO(
                                                        13, 190, 216, 100),
                                                value: 1,
                                                groupValue: id,
                                                onChanged: (val) {
                                                  setState(() {
                                                    radioButtonItem = 'Man';
                                                    id = 1;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Container(
                                  width: 140.50,
                                  height: 43.50,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 140.50,
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
                                          left: 15,
                                          right: 17,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "female",
                                              style: TextStyle(
                                                color: Color(0xff406083),
                                                fontSize: 13,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox(width: 34),
                                            Container(
                                              height: 21,
                                              width: 21,
                                              child: Radio(
                                                activeColor:
                                                    const Color.fromRGBO(
                                                        13, 190, 216, 100),
                                                value: 2,
                                                groupValue: id,
                                                onChanged: (val) {
                                                  setState(() {
                                                    radioButtonItem = 'women';
                                                    id = 2;
                                                  });
                                                },
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
                            height: 11,
                          ),
                          Container(
                            height: 42,
                            width: 440,
                            child: TextField(
                              controller: _fathername,
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
                                labelText: "last Name Of Father",
                                labelStyle: const TextStyle(
                                  color: bluefnc,
                                  fontFamily: 'poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),

                          // const SizedBox(height: 11),
                          // //Morher Infos Line
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     //const SizedBox(width: 42),
                          //     Container(
                          //       height: 42,
                          //       width: 215,
                          //       child: TextField(
                          //         decoration: InputDecoration(
                          //           fillColor: const Color.fromARGB(
                          //               253, 209, 209, 209),
                          //           // border: OutlineInputBorder(
                          //           //   borderRadius: BorderRadius.circular(10),

                          //           // ),
                          //           enabledBorder: OutlineInputBorder(
                          //             borderRadius: BorderRadius.circular(10),
                          //             borderSide: const BorderSide(
                          //               color:
                          //                   Color.fromARGB(253, 209, 209, 209),
                          //               width: 1.5,
                          //             ),
                          //           ),
                          //           focusedBorder: OutlineInputBorder(
                          //             borderRadius: BorderRadius.circular(10),
                          //             borderSide: const BorderSide(
                          //               color:
                          //                   Color.fromARGB(253, 209, 209, 209),
                          //               width: 1.5,
                          //             ),
                          //           ),
                          //           labelText: "First Name Of Mother",

                          //           labelStyle: const TextStyle(
                          //             color: bluefnc,
                          //             fontFamily: 'poppins',
                          //             fontSize: 14,
                          //             fontWeight: FontWeight.w600,
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //     const SizedBox(
                          //       width: 11,
                          //     ),
                          //     Container(
                          //       height: 42,
                          //       width: 215,
                          //       child: TextField(
                          //         decoration: InputDecoration(
                          //           fillColor: const Color.fromARGB(
                          //               253, 209, 209, 209),
                          //           // border: OutlineInputBorder(
                          //           //   borderRadius: BorderRadius.circular(10),

                          //           // ),
                          //           enabledBorder: OutlineInputBorder(
                          //             borderRadius: BorderRadius.circular(10),
                          //             borderSide: const BorderSide(
                          //               color:
                          //                   Color.fromARGB(253, 209, 209, 209),
                          //               width: 1.5,
                          //             ),
                          //           ),
                          //           focusedBorder: OutlineInputBorder(
                          //             borderRadius: BorderRadius.circular(10),
                          //             borderSide: const BorderSide(
                          //               color:
                          //                   Color.fromARGB(253, 209, 209, 209),
                          //               width: 1.5,
                          //             ),
                          //           ),
                          //           labelText: "Second Name of Mother",

                          //           labelStyle: const TextStyle(
                          //             color: bluefnc,
                          //             fontFamily: 'poppins',
                          //             fontSize: 14,
                          //             fontWeight: FontWeight.w600,
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
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
                                  onPressed: () async{
                                    // final newuser = FirebaseAuth.instance.currentUser;
                                    // final newuserid = newuser!.uid;
                                    FirebaseFirestore.instance.collection('users').doc(widget.userid).update({
                                      'first name' : _firstname.text,
                                      'last name' : _secondname.text,
                                      'place of birth' : _placeofbirth.text,
                                      'phone number' : _phone.text,
                                      'father name' : _fathername.text,
                                    });
                                    final role = await getRole(widget.userid);
                                    if (role == 'patient'){
                                      Navigator.of(context).pushNamed(patientinfo);
                                    }else{
                                      Navigator.of(context).pushNamed(docteurinfo);
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shadowColor: blueclr,
                                      elevation: 4,
                                      primary: blueclr,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
