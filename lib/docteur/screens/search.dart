

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_version/colors.dart';
import 'package:real_version/const/routes.dart';

import 'docSettings_page.dart';

class SearchPatient extends StatefulWidget {
  const SearchPatient({Key? key}) : super(key: key);

  @override
  State<SearchPatient> createState() => _SearchPatientState();
}

class _SearchPatientState extends State<SearchPatient> {
  late final TextEditingController searchcontroller;
  var color = const Color(0xff0dbed8);
  var doctorName = 'djamel';


    @override
  void initState() {
    searchcontroller = TextEditingController();
    super.initState();
  }

    @override
  void dispose() {
    searchcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme));
    return Scaffold(
        backgroundColor: bgcolor,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: bluefnc),
          backgroundColor: bgcolor,
          elevation: 0.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child: Row(
                children: [
                  FittedBox(
                    child: Text(
                      'Dr. ' + doctorName,
                      style: const TextStyle(
                        color: Color(0xffc1c1c1),
                        fontSize: 14,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                ],
              ),
            ),
            PopupMenuButton(
                icon: Container(
                    width: 50,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: const Color(0xffc2c2c2),
                    ),
                    child: const Icon(
                      Icons.person_rounded,
                      color: Colors.white,
                    )),
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: InkWell(
                          onTap: () async{
                            await FirebaseAuth.instance.signOut();
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              loginRoute, 
                              (_) => false
                            );
                          },
                          child: Row(
                            children: const <Widget>[
                              Icon( 
                                Icons.exit_to_app,
                                color: bluefnc, 
                              ),
                              SizedBox(width: 10.0),
                              Text("Sign Out"),
                            ],
                          ),
                        ),
                      ),
                    ]),
          ],
          leading: IconButton(
            icon: const Icon(
              Icons.settings,
              size: 35,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DocSettingsScreen()));
            },
          ),
        ),
        body: Column(children: [
          SizedBox(height: size.height * 0.20),
          const Center(
            child: SizedBox(
              width: 301,
              child: Text(
                "Search for a patient in the box by typing his Email",
                style: TextStyle(
                  color: bluefnc,
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
                    controller: searchcontroller,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: "Search for a patient here",
                      labelStyle: const TextStyle(fontSize: 15, color: bluefnc),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: blueclr, width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: blueclr, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.only(right: 8.0, bottom: 2.0),
                        child: Icon(
                          Icons.search,
                          size: 30.0,
                          color: Color.fromRGBO(157, 157, 157, 100),
                        ),
                      ),
                      hintMaxLines: 1,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 321,
            height: 52,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shadowColor: blueclr,
                  elevation: 4,
                  primary: blueclr,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),

              onPressed: () async{
                if (searchcontroller.text.isNotEmpty){
                  try{
                    
                  }catch (e){
                    log(e.toString());
                  }
                }else{
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 0,
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            width: 132,
                            height: 177,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    width: 132,
                                    height: 140,
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              width: 118,
                                              height: 118,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(70),
                                                color: const Color.fromRGBO(
                                                    255, 112, 112, 100),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 132,
                                          height: 129,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: const Icon(
                                            Icons.close_rounded,
                                            size: 129,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  "Not found !",
                                  style: TextStyle(
                                    color: bluefnc,
                                    fontSize: 22,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ));
                    });
                }
                
              },
              child: const Text(
                "Search",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ]));
  }
}


Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> searchByField(String value) async {
  final data = await FirebaseFirestore.instance.collection('users').where('id', isEqualTo: value).get();
  return data.docs;
}
