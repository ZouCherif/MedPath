// ignore_for_file: file_names

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class DocSettingsScreen extends StatefulWidget {
  const DocSettingsScreen({Key? key}) : super(key: key);

  @override
  State<DocSettingsScreen> createState() => _DocSettingsScreenState();
}

class _DocSettingsScreenState extends State<DocSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final oneSideShadow = Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.04,
        right: size.width * 0.04,
      ),
      child: Container(
        height: 53,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.1),
              blurRadius: 26,
              offset: const Offset(
                0,
                0,
              ), // changes position of shadow
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.04),
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 25.0,
            fontFamily: 'Poppins',
            color: Color.fromARGB(156, 6, 37, 70),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue.withOpacity(0.00),
        actionsIconTheme:
            const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.04,
          right: size.width * 0.04,
          top: 15,
        ),
        child: Stack(children: [
          oneSideShadow,
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.zero,
            child: ExpansionTileCard(
              baseColor: Colors.white,
              expandedColor: Colors.white,
              title: const Text(
                "changer le mot de passe",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(64, 96, 131, 100)),
              ),
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      child: SizedBox(
                        height: 40,
                        width: size.width * 0.85,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(209, 209, 209, 100),
                                      width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff0dbed8), width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              labelText: 'mot de passe recent',
                              labelStyle: TextStyle(
                                  color: Color.fromRGBO(209, 209, 209, 100))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      child: SizedBox(
                        height: 40,
                        width: size.width * 0.85,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(209, 209, 209, 100),
                                      width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff0dbed8), width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              labelText: 'nouveau mot de passe',
                              labelStyle: TextStyle(
                                  color: Color.fromRGBO(209, 209, 209, 100))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      child: SizedBox(
                        height: 40,
                        width: size.width * 0.85,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(209, 209, 209, 100),
                                      width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff0dbed8), width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              labelText: 'confirmer le nouveau mot de passe',
                              labelStyle: TextStyle(
                                  color: Color.fromRGBO(209, 209, 209, 100))),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15)
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
