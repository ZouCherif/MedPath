import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:real_version/const/routes.dart';

class SearchPatient extends StatefulWidget {
  const SearchPatient({Key? key}) : super(key: key);

  @override
  State<SearchPatient> createState() => _SearchPatientState();
}

class _SearchPatientState extends State<SearchPatient> {
  var color = const Color(0xff0dbed8);
  var doctorName = 'djamel';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blue.withOpacity(0.04),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
          backgroundColor: Colors.blue.withOpacity(0.00),
          elevation: 0.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Row(
                children: [
                  Text(
                    'Dr. ' + doctorName,
                    style: const TextStyle(
                      color: Color(0xffc1c1c1),
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                      width: 28.05,
                      height: 28.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffc2c2c2),
                      ),
                      child: const Icon(
                        Icons.person_rounded,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          ],
          leading: IconButton(
            icon: const Icon(
              Icons.settings,
              size: 35,
            ),
            onPressed: () {
              // handle the press
            },
          ),
        ),
        body: Column(children: [
          SizedBox(height: size.height * 0.20),
          const Center(
            child: SizedBox(
              width: 301,
              child: Text(
                "Search for a patient in the box by typing his Id",
                style: TextStyle(
                  color: Color(0xff406083),
                  fontSize: 22,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 29.0,
          ),
          SizedBox(
            width: 321,
            height: 75,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 75,
                  width: 321,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: "Search for a patient here",
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
                        padding: const EdgeInsets.only(right: 8.0, bottom: 2.0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.search,
                            size: 30.0,
                          ),
                          color: const Color.fromRGBO(157, 157, 157, 100),
                          onPressed: () {},
                        ),
                      ),
                      hintMaxLines: 1,
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: ()async{
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushNamedAndRemoveUntil(
                loginRoute, 
                (_) => false
              );              
            }, 
            child: const Text('logout'),
          ),
        ]));
  }
}
