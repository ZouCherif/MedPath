// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../colors.dart';

String postifOrNegatif = "Positif or negatif";

class DocInformations extends StatefulWidget {
  const DocInformations({Key? key}) : super(key: key);

  @override
  State<DocInformations> createState() => _DocInformationsState();
}

class _DocInformationsState extends State<DocInformations> {
  String radioButtonItem = 'Patient';
  // ignore: non_constant_identifier_names
  String GroupSanguin = "Group Sanguin";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgcolor,
      child: Padding(
        padding:
            const EdgeInsets.only(right: 335, left: 335, top: 93, bottom: 290),
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
                "General Doctor informations",
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

                          const SizedBox(
                            height: 11,
                          ),
                          Container(
                            height: 42,
                            width: 440,
                            child: TextFormField(
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
                                hintText: "Specefic number of the doctor",

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

                          const SizedBox(height: 11),
                          Container(
                            height: 42,
                            width: 440,
                            child: TextFormField(
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
                                hintText: "Specialite",

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

                          const SizedBox(height: 11),
                          Container(
                            height: 42,
                            width: 440,
                            child: TextFormField(
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
                                hintText: "Localisation",
                                suffixIcon:
                                    const Icon(Icons.location_on_rounded),

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
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(
                                        253, 209, 209, 209),
                                  ),
                                  child: Row(
                                    children: const [
                                      SizedBox(width: 10),
                                      Text(
                                        "Upload a picture",
                                        style: TextStyle(
                                          color: Color(0xff406083),
                                          fontSize: 15,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.upload_rounded,
                                        color: Color(0xff406083),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
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
