// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../../patient/widgets/vaccin_card.dart';

class Docvaccin extends StatefulWidget {
  const Docvaccin({Key? key}) : super(key: key);

  @override
  State<Docvaccin> createState() => _DocvaccinState();
}

class _DocvaccinState extends State<Docvaccin> {
  var vaccinName = "Covid 19 vaccin";
  var myMenuItems = <String>[
    'Profile',
    'Visites Medicales',
    'Paramètres',
  ];

  void onSelect(item) {
    switch (item) {
      case 'Profile':
        print('Home clicked');
        break;
      case 'Visites Medicales':
        print('Profile clicked');
        break;
      case 'Paramètres':
        print('Setting clicked');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                elevation: 16,
                child: Container(
                  height: 307,
                  width: 307,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 20),
                      Center(
                          child: Text(
                        vaccinName,
                        style: const TextStyle(
                          color: Color(0xff406083),
                          fontSize: 17,
                        ),
                      )),
                      const SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: 259,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: const Color.fromRGBO(255, 255, 255, 100),
                            labelText: "Choose a date",
                            labelStyle: const TextStyle(fontSize: 15),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff0dbed8), width: 2),
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xff0dbed8), width: 2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(
                                  right: 8.0, bottom: 8.0),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.calendar_month,
                                  size: 30.0,
                                ),
                                color: const Color.fromRGBO(157, 157, 157, 100),
                              ),
                            ),
                            hintMaxLines: 1,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 50,
                        width: 259,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: const Color.fromRGBO(255, 255, 255, 100),
                            labelText: "Enter your password",
                            labelStyle: const TextStyle(fontSize: 15),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff0dbed8), width: 2),
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xff0dbed8), width: 2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintMaxLines: 1,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Container(
                        width: 258,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor:
                                  const Color.fromRGBO(64, 96, 131, 100),
                              elevation: 0,
                              primary: const Color.fromARGB(156, 36, 68, 100),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),

                          //MaterialStateProperty.all<RoundedRectangleBorder>(
                          //RoundedRectangleBorder(
                          //borderRadius: BorderRadius.circular(25.0),

                          onPressed: () {},
                          child: const Text(
                            "save vaccination session",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      backgroundColor: Colors.blue.withOpacity(0.04),
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.00),
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
        centerTitle: true,
        leading: PopupMenuButton<String>(
            onSelected: onSelect,
            itemBuilder: (BuildContext context) {
              return myMenuItems.map((String choice) {
                return PopupMenuItem<String>(
                  child: Text(choice),
                  value: choice,
                );
              }).toList();
            }),
        title: const Text(
          'Historiques des vaccins',
          style: TextStyle(
            fontSize: 25.0,
            fontFamily: 'Poppins',
            color: Color.fromARGB(156, 6, 37, 70),
            fontWeight: FontWeight.bold,
          ),
        ),
        actionsIconTheme:
            const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Container(
            color: Colors.blue.withOpacity(0.04),
            height: size.height,
            width: size.width,
            //  color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: ListView(
                //  mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "En Attente",
                    style: TextStyle(
                      color: Color(0xff0dbed8),
                      fontSize: 18,
                      fontFamily: "Regular",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      width: 339,
                      height: 2,
                      color: const Color(0xff0dbed8),
                    ),
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 1',
                    nombredevac: 3,
                    date1: '17/07/2010',
                    date3: '07/07/2022',
                    date2: '10/12/2021',
                    boolD1: true,
                    boolD2: true,
                    boolD3: false,
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 2',
                    nombredevac: 2,
                    date1: '17/07/2010',
                    date2: '07/07/2022',
                    date3: '17/05/2025',
                    boolD1: true,
                    boolD2: false,
                    boolD3: false,
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 3',
                    nombredevac: 3,
                    date1: '17/07/2010',
                    date2: '07/07/2022',
                    date3: '17/05/2025',
                    boolD1: false,
                    boolD2: false,
                    boolD3: false,
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Deja fait",
                    style: TextStyle(
                      color: Color(0xff0dbed8),
                      fontSize: 18,
                      fontFamily: "Regular",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      width: 339,
                      height: 2,
                      color: const Color(0xff0dbed8),
                    ),
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 1',
                    nombredevac: 3,
                    date1: '17/07/2010',
                    date3: '07/07/2022',
                    date2: '10/12/2021',
                    boolD1: true,
                    boolD2: true,
                    boolD3: true,
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 2',
                    nombredevac: 2,
                    date1: '17/07/2010',
                    date2: '07/07/2022',
                    boolD1: true,
                    boolD2: true,
                    boolD3: true,
                    date3: '07/10/2022',
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 3',
                    nombredevac: 3,
                    date1: '17/07/2010',
                    date2: '07/07/2022',
                    date3: '17/05/2025',
                    boolD1: true,
                    boolD2: true,
                    boolD3: true,
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 4',
                    nombredevac: 3,
                    date1: '17/07/2010',
                    date2: '07/07/2022',
                    date3: '17/05/2025',
                    boolD1: true,
                    boolD2: true,
                    boolD3: true,
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 5',
                    nombredevac: 3,
                    date1: '17/07/2010',
                    date2: '07/07/2022',
                    date3: '17/05/2025',
                    boolD1: true,
                    boolD2: true,
                    boolD3: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
