// ignore_for_file: sized_box_for_whitespace
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:real_version/patient/models/profile.dart';
import 'package:real_version/patient/screens/notifications_screen.dart';
import 'package:real_version/utilities/getdata.dart';
import 'navBar.dart';

// ignore: must_be_immutable
class ProfilPage1 extends StatefulWidget {
  String id;
  ProfilPage1({required this.id,Key? key}) : super(key: key);

  @override
  State<ProfilPage1> createState() => _ProfilPage1State();
}

class _ProfilPage1State extends State<ProfilPage1> {
  var imageUrl = "assets/avatar.png";
  var fullName = "Dalia Benafia";
  var id = '98746578562365';
  var region = "Amizour, Bejaia";
  var adresse = "bloc i chambre 214";
  var telephone = "0662541966";
  var nss = "1563486513254165";
  var sexe = Sexe.M;
  final sang = Sang.Onegative;
  var pheight = 177;
  var pweight = 67;
  var sexewidth = 80;
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FutureBuilder(
      future: getData(widget.id),
      builder: (BuildContext context,snapshot) {
      if (snapshot.hasData){
      Map content = snapshot.data as Map;
      return SafeArea(
        child: Scaffold(
            floatingActionButton: content['role'] == 'docteur'
            ? FloatingActionButton(
              backgroundColor: const Color.fromRGBO(64, 96, 131, 100),
              child: const Icon(
                Icons.add,
                size: 35,
              ),
              onPressed: () {
                showModalBottomSheet<dynamic>(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(25.0))),
                    context: context,
                    builder: (context) => Container(
                          height: 0.8 * size.height,
                          child: ListView(children: <Widget>[
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Center(
                                  child: Text(
                                    "Ajouter une consultation",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(64, 96, 131, 100)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.05),
                                  child: SizedBox(
                                    height: 50,
                                    width: size.width,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xff0dbed8),
                                                width: 2),
                                          ),
                                          labelText: 'Full name',
                                          labelStyle: TextStyle(
                                              color: Color.fromRGBO(
                                                  209, 209, 209, 100))),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.05),
                                  child: SizedBox(
                                    height: 50,
                                    width: size.width,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xff0dbed8),
                                                width: 2),
                                          ),
                                          labelText: 'choose a date',
                                          labelStyle: TextStyle(
                                              color: Color.fromRGBO(
                                                  209, 209, 209, 100))),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.05),
                                  child: SizedBox(
                                    height: 50,
                                    width: size.width,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xff0dbed8),
                                                width: 2),
                                          ),
                                          labelText: 'ID',
                                          labelStyle: TextStyle(
                                              color: Color.fromRGBO(
                                                  209, 209, 209, 100))),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.05),
                                  child: SizedBox(
                                    height: 200,
                                    width: size.width,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 150, horizontal: 0),
                                          border: OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xff0dbed8),
                                                width: 2),
                                          ),
                                          labelText: 'Rapport',
                                          labelStyle: TextStyle(
                                              fontSize: 25,
                                              color: Color.fromRGBO(
                                                  209, 209, 209, 100))),
                                      maxLength: 99,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 294,
                                  height: 52,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: const Color(0xff0dbed8),
                                        elevation: 4,
                                        primary: const Color(0xff0dbed8),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                    onPressed: () {},
                                    child: const Text(
                                      "ajouter des documents",
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
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 294,
                                  height: 52,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: const Color(0xff0dbed8),
                                        elevation: 4,
                                        primary: const Color(0xff0dbed8),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                    onPressed: () {},
                                    child: const Text(
                                      "ajouter une Ordonnance",
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
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      width: 0.3 * 294,
                                      height: 52,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shadowColor: const Color(0xff0dbed8),
                                            elevation: 4,
                                            primary: const Color(0xff0dbed8),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15))),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text(
                                          "save",
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
                                    const SizedBox(
                                      width: 15,
                                    )
                                  ],
                                ),
                                const SizedBox(height: 40),
                              ],
                            ),
                          ]),
                        ));
              },
            ): FloatingActionButton(
                    backgroundColor: const Color.fromRGBO(64, 96, 131, 100),
                    child: const Icon(
                      Icons.qr_code,
                      size: 35,
                    ),
                    onPressed: () async {
                      // create popup screen
                      String userId = FirebaseAuth.instance.currentUser!.uid;
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Container(
                                height: 200,
                                width: 200,
                                child: QrImage(
                                  data: userId.toString(),
                                  size: 200,
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    "Ok",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                  ),
            backgroundColor: Colors.white,
            drawer:  NavBar(id: widget.id),
            appBar: AppBar(
                iconTheme:
                    const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
                centerTitle: true,
                title: const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'Poppins',
                    color: Color.fromARGB(156, 6, 37, 70),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Colors.blue.withOpacity(0.00),
                elevation: 0.0,
                actions: [
                  Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const NotificationsPage()));
                        },
                        child: const Icon(
                          Icons.notifications,
                        ),
                      ))
                ],
                actionsIconTheme:
                    const IconThemeData(color: Color.fromARGB(156, 6, 37, 70))),
            body: SafeArea(
                child: ListView(children: <Widget>[
              Column(children: [
                Center(
                  child: SizedBox(
                    height: 146,
                    width: 146,
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    fullName,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 44, 98, 143),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('ID :',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 44, 98, 143),
                        )),
                    Text(id,
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 44, 98, 143),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: SizedBox(
                        height: 20,
                        width: 50,
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () async {
                              final data = ClipboardData(text: id);
                              Clipboard.setData(data);
                            },
                            child: const Text('copy',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 44, 98, 143),
                                ))),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.65641,
                        height: size.height * 0.33,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: size.width * 0.65641,
                              height: size.height * 0.33,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 45,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.only(
                                left: 9,
                                right: 24,
                                top: 16,
                                bottom: 15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: size.width * 0.65641,
                                    height: size.height * 0.02463541871921,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        FittedBox(
                                          child: Text(
                                            "Date de naissance:  ",
                                            style: TextStyle(
                                              color: const Color(0xff406083),
                                              fontSize: 0.032 * size.width,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        FittedBox(
                                          child: Text(
                                            content['date of birth'],
                                            style: TextStyle(
                                              color: const Color(0xffc4c4c4),
                                              fontSize: 0.03333333 * size.width,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 23.25),
                                  SizedBox(
                                    width: size.width * 0.65641,
                                    height: size.height * 0.02463541871921,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        FittedBox(
                                          child: Text(
                                            "Region:",
                                            style: TextStyle(
                                              color: const Color(0xff406083),
                                              fontSize: size.width * 0.03333333,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        FittedBox(
                                          child: Text(
                                            content['place of birth'],
                                            style: TextStyle(
                                              color: const Color(0xffc4c4c4),
                                              fontSize: size.width * 0.03333333,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 23.25),
                                  FittedBox(
                                    child: Container(
                                      width: size.width * 0.65641,
                                      height: size.height * 0.02463541871921,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FittedBox(
                                            child: Text(
                                              "Adresse:",
                                              style: TextStyle(
                                                color: const Color(0xff406083),
                                                fontSize: size.width * 0.03333333,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          FittedBox(
                                            child: Text(
                                              content['localisation'],
                                              style: TextStyle(
                                                color: const Color(0xffc4c4c4),
                                                fontSize: size.width * 0.03333333,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 23.25),
                                  FittedBox(
                                    child: Container(
                                      width: size.width * 0.65641,
                                      height: size.height * 0.02463541871921,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FittedBox(
                                            child: Text(
                                              "Téléphone:",
                                              style: TextStyle(
                                                color: const Color(0xff406083),
                                                fontSize: size.width * 0.03333333,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 15),
                                          FittedBox(
                                            child: Text(
                                              telephone,
                                              style: TextStyle(
                                                color: const Color(0xffc4c4c4),
                                                fontSize: size.width * 0.03333333,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 15),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 15.25),
                                  FittedBox(
                                    child: Container(
                                      width: size.width * 0.66,
                                      height: size.height * 0.02463541871921,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FittedBox(
                                            child: Text(
                                              "Numéro de sécurité: ",
                                              style: TextStyle(
                                                color: const Color(0xff406083),
                                                fontSize: size.width * 0.03333333,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          FittedBox(
                                            child: Text(
                                              nss,
                                              style: TextStyle(
                                                color: const Color(0xffc4c4c4),
                                                fontSize: size.width * 0.03333333,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          width: size.width * 0.21794871794871,
                          height: size.height * 0.33,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: size.width * 0.21794871794871,
                                height: size.height * 0.33,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      blurRadius: 80,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 13.73333 * size.width,
                                      height: 0.13 * size.height,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const FittedBox(
                                            child: Text(
                                              "Sexe:",
                                              style: TextStyle(
                                                color: Color(0xff406083),
                                                fontSize: 23,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: size.width * 0.106666,
                                            height: 45,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                // ignore: unrelated_type_equality_checks
                                                if (sexe == Sexe.F)
                                                  FittedBox(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: const [
                                                        FittedBox(
                                                          child: Text(
                                                            "F",
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xffc4c4c4),
                                                              fontSize: 30,
                                                              fontFamily:
                                                                  "Poppins",
                                                              fontWeight:
                                                                  FontWeight.w700,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.0),
                                                          child: Icon(
                                                            Icons.female,
                                                            color: Color.fromRGBO(
                                                                255,
                                                                133,
                                                                143,
                                                                100),
                                                            size: 20,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                else
                                                  FittedBox(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: const [
                                                        FittedBox(
                                                          child: Text(
                                                            "M",
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xffc4c4c4),
                                                              fontSize: 30,
                                                              fontFamily:
                                                                  "Poppins",
                                                              fontWeight:
                                                                  FontWeight.w700,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.0),
                                                          child: Icon(
                                                            Icons.male,
                                                            color: Colors.blue,
                                                            size: 20,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Flexible(
                                      child: Container(
                                        width: 13.73333 * size.width,
                                        height: 0.19 * size.height,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const FittedBox(
                                              child: Text(
                                                "Group \n Sanguin:",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xff406083),
                                                  fontSize: 22,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            if (sang == Sang.Opositive)
                                              const FittedBox(
                                                child: Text(
                                                  "O+",
                                                  style: TextStyle(
                                                    color: Color(0xffc4c4c4),
                                                    fontSize: 20,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              )
                                            else if (sang == Sang.Onegative)
                                              const FittedBox(
                                                child: Text(
                                                  "O-",
                                                  style: TextStyle(
                                                    color: Color(0xffc4c4c4),
                                                    fontSize: 27,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              )
                                            else if (sang == Sang.Anegative)
                                              Text(
                                                "A-",
                                                style: TextStyle(
                                                  color: const Color(0xffc4c4c4),
                                                  fontSize: 0.06 * size.width,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              )
                                            else if (sang == Sang.Apositive)
                                              Text(
                                                "A+",
                                                style: TextStyle(
                                                  color: const Color(0xffc4c4c4),
                                                  fontSize: 0.06 * size.width,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              )
                                            else if (sang == Sang.Bnegative)
                                              Text(
                                                "B-",
                                                style: TextStyle(
                                                  color: const Color(0xffc4c4c4),
                                                  fontSize: 0.06 * size.width,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              )
                                            else if (sang == Sang.Bpositive)
                                              Text(
                                                "B+",
                                                style: TextStyle(
                                                  color: const Color(0xffc4c4c4),
                                                  fontSize: 0.06 * size.width,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              )
                                            else if (sang == Sang.ABnegative)
                                              Text(
                                                "AB-",
                                                style: TextStyle(
                                                  color: const Color(0xffc4c4c4),
                                                  fontSize: 0.06 * size.width,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              )
                                            else if (sang == Sang.ABpositive)
                                              FittedBox(
                                                child: Text(
                                                  "AB+",
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xffc4c4c4),
                                                    fontSize: 0.06 * size.width,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SafeArea(
                  child: Container(
                    width: size.width * 0.91,
                    height: size.height * 0.0995260666350710,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width * 0.86,
                          height: size.height * 0.0995260666350710,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 22,
                                top: 8,
                                child: FittedBox(
                                  child: Text(
                                    "Poids",
                                    style: TextStyle(
                                      color: Color(0xff406083),
                                      fontSize: 17,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 34,
                                child: SizedBox(
                                  width: 0.16154 * size.width,
                                  height: 35,
                                  child: FittedBox(
                                    child: Text(
                                      pweight.toString() + " KG ",
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Color(0xff0dbed8),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 50,
                                child: SizedBox(
                                  width: 0.46 * size.width,
                                  height: 19,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Doctor’s review ",
                                        style: TextStyle(
                                          color: Color(0xffc4c4c4),
                                          fontSize: 9,
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Container(
                                        width: 52,
                                        height: 19,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            FittedBox(
                                              child: Container(
                                                width: 52,
                                                height: 19,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: const Color(0xffff858f),
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                  vertical: 2,
                                                ),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: const [
                                                    FittedBox(
                                                      child: Text(
                                                        "Bad",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 145,
                                top: 17,
                                child: Text(
                                  "derniere mise a jour:  Before 2 months",
                                  style: TextStyle(
                                    color: Color(0xffc4c4c4),
                                    fontSize: 9,
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 0.27 * size.width,
                                  top: 23,
                                  child: IconButton(
                                    icon: const Icon(Icons.mode_edit_outline),
                                    color:
                                        const Color.fromRGBO(209, 209, 209, 100),
                                    onPressed: () {},
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  width: size.width * 0.91,
                  height: size.height * 0.0995260666350710,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.86,
                        height: size.height * 0.0995260666350710,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 22,
                              top: 8,
                              child: FittedBox(
                                child: Text(
                                  "Taille",
                                  style: TextStyle(
                                    color: Color(0xff406083),
                                    fontSize: 17,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 34,
                              child: SizedBox(
                                width: 0.16154 * size.width,
                                height: 35,
                                child: FittedBox(
                                  child: Text(
                                    pheight.toString() + " CM ",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff0dbed8),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 100,
                              top: 50,
                              child: SizedBox(
                                width: 0.46 * size.width,
                                height: 19,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Doctor’s review ",
                                      style: TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontSize: 9,
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Container(
                                      width: 52,
                                      height: 19,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FittedBox(
                                            child: Container(
                                              width: 52,
                                              height: 19,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: const Color(0xffff858f),
                                              ),
                                              padding: const EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical: 2,
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: const [
                                                  FittedBox(
                                                    child: Text(
                                                      "Bad",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 145,
                              top: 17,
                              child: FittedBox(
                                child: Text(
                                  "derniere mise a jour:  Before 2 months",
                                  style: TextStyle(
                                    color: Color(0xffc4c4c4),
                                    fontSize: 9,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                left: 0.27 * size.width,
                                top: 23,
                                child: IconButton(
                                  icon: const Icon(Icons.mode_edit_outline),
                                  color: const Color.fromRGBO(209, 209, 209, 100),
                                  onPressed: () {},
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ]))),
      );
      }else{
        return const Scaffold(body: Center(child: CircularProgressIndicator()),);
      }
      }
    );
  }
}
