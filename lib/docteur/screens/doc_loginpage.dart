import 'package:flutter/material.dart';
import 'package:real_version/patient/screens/login_page.dart';
import 'package:toggle_switch/toggle_switch.dart';

class DocLoginScreen extends StatefulWidget {
  const DocLoginScreen({Key? key}) : super(key: key);
  @override
  State<DocLoginScreen> createState() => _DocLoginScreenState();
}

class _DocLoginScreenState extends State<DocLoginScreen> {
  bool isPasswordVisible = false;
  @override
  int value = 0;
  bool positive = false;
  String bro = 'bro';
  var color = const Color(0xff0dbed8);
  Widget build(BuildContext context) {
    var _listIconTabToggle = [
      Icons.person,
      Icons.pregnant_woman,
    ];
    var _tabIconIndexSelected = 0;
    var _listGenderText = ["Male", "Female"];
    var _listGenderEmpty = ["", ""];

    return Scaffold(
        backgroundColor: Colors.blue.withOpacity(0.04),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 200,
                        child: Center(
                            child: Image.asset(
                          'assets/logo_1.png',
                          fit: BoxFit.cover,
                        )),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        'Welcome Back !',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(64, 96, 131, 100)),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 40.0),
                        child: Text(
                          'Wear the white coat with dignity and pride !',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 44, 98, 143)),
                        ),
                      ),
                      const SizedBox(height: 13),
                      Container(
                        width: 294,
                        height: 224,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 68,
                              width: 294,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "enter your ID",
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
                                    padding: const EdgeInsets.only(right: 9.0),
                                    child: IconButton(
                                      icon: const Icon(Icons.email),
                                      color: Color(0x55828B),
                                      onPressed: () {},
                                    ),
                                  ),
                                  hintMaxLines: 1,
                                ),
                                keyboardType: TextInputType.number,
                                maxLength: 15,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 52,
                              width: 294,
                              child: TextField(
                                  obscureText: isPasswordVisible ? false : true,
                                  decoration: InputDecoration(
                                    labelText: "enter your Password",
                                    labelStyle: const TextStyle(fontSize: 15),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                            color: Color(0xff0dbed8),
                                            width: 2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xff0dbed8), width: 2),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isPasswordVisible =
                                              !isPasswordVisible;
                                        });
                                      },
                                      icon: Icon(isPasswordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                  )),
                            ),
                            const SizedBox(height: 28),
                            Container(
                              width: 294,
                              height: 52,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shadowColor: color,
                                    elevation: 10,
                                    primary: color,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),

                                //MaterialStateProperty.all<RoundedRectangleBorder>(
                                //RoundedRectangleBorder(
                                //borderRadius: BorderRadius.circular(25.0),

                                onPressed: () {},
                                child: const Text(
                                  "Continue",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 102),
                      ToggleSwitch(
                        minWidth: 147.0,
                        minHeight: 52,
                        cornerRadius: 20.0,
                        activeBgColors: [
                          [color],
                          [color]
                        ],
                        fontSize: 22.0,
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.white,
                        inactiveFgColor: Color.fromRGBO(196, 196, 196, 100),
                        initialLabelIndex: 1,
                        totalSwitches: 2,
                        labels: const ['Patient', 'Doctor'],
                        radiusStyle: true,
                        onToggle: (index) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                          print('switched to: $index');
                        },
                      ),
                    ]))));
  }
}
