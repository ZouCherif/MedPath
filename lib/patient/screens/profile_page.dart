import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:real_version/patient/screens/notifications_screen.dart';
import 'navBar.dart';
import 'package:real_version/patient/models/profile.dart';

class ProfilPage1 extends StatefulWidget {
  const ProfilPage1({Key? key}) : super(key: key);

  @override
  State<ProfilPage1> createState() => _ProfilPage1State();
}

class _ProfilPage1State extends State<ProfilPage1> {
  var imageUrl = "assets/avatar.png";
  var fullName = "Dalia Benafia";
  var id = '98746578562365';
  var bDay = '24 / 05 / 2001';
  var region = "Amizour, Bejaia";
  var adresse = "bloc i chambre 214";
  var telephone = "0662541966";
  var nss = "1563486513254165";
  var sexe = Sexe.M;
  final sang = Sang.Onegative;
  var pheight = 177;
  var pweight = 67;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
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
                builder: (context) => Column(
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
                                        color: Color(0xff0dbed8), width: 2),
                                  ),
                                  labelText: 'Full name',
                                  labelStyle: TextStyle(
                                      color:
                                          Color.fromRGBO(209, 209, 209, 100))),
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
                                        color: Color(0xff0dbed8), width: 2),
                                  ),
                                  labelText: 'choose a date',
                                  labelStyle: TextStyle(
                                      color:
                                          Color.fromRGBO(209, 209, 209, 100))),
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
                                        color: Color(0xff0dbed8), width: 2),
                                  ),
                                  labelText: 'ID',
                                  labelStyle: TextStyle(
                                      color:
                                          Color.fromRGBO(209, 209, 209, 100))),
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
                                        color: Color(0xff0dbed8), width: 2),
                                  ),
                                  labelText: 'Rapport',
                                  labelStyle: TextStyle(
                                      fontSize: 25,
                                      color:
                                          Color.fromRGBO(209, 209, 209, 100))),
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
                                    borderRadius: BorderRadius.circular(15))),

                            //MaterialStateProperty.all<RoundedRectangleBorder>(
                            //RoundedRectangleBorder(
                            //borderRadius: BorderRadius.circular(25.0),

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
                                    borderRadius: BorderRadius.circular(15))),

                            //MaterialStateProperty.all<RoundedRectangleBorder>(
                            //RoundedRectangleBorder(
                            //borderRadius: BorderRadius.circular(25.0),

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

                                //MaterialStateProperty.all<RoundedRectangleBorder>(
                                //RoundedRectangleBorder(
                                //borderRadius: BorderRadius.circular(25.0),

                                onPressed: () {},
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
                    ));
          },
        ),
        backgroundColor: Colors.blue.withOpacity(0.04),
        drawer: const NavBar(),
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
            child: Column(children: [
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 256,
                  height: 224,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 256,
                        height: 224,
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 256,
                              height: 20,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const FittedBox(
                                    child: Text(
                                      "Date de naissance:",
                                      style: TextStyle(
                                        color: Color(0xff406083),
                                        fontSize: 13,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  FittedBox(
                                    child: Text(
                                      bDay,
                                      style: const TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontSize: 12.50,
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
                              width: 256,
                              height: 20,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const FittedBox(
                                    child: Text(
                                      "Region:",
                                      style: TextStyle(
                                        color: Color(0xff406083),
                                        fontSize: 13,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  FittedBox(
                                    child: Text(
                                      region,
                                      style: const TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontSize: 12.50,
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
                              width: 256,
                              height: 20,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const FittedBox(
                                    child: Text(
                                      "Adresse:",
                                      style: TextStyle(
                                        color: Color(0xff406083),
                                        fontSize: 13,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  FittedBox(
                                    child: Text(
                                      adresse,
                                      style: const TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontSize: 12.50,
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
                              width: 256,
                              height: 20,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const FittedBox(
                                    child: Text(
                                      "Téléphone:",
                                      style: TextStyle(
                                        color: Color(0xff406083),
                                        fontSize: 15,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  FittedBox(
                                    child: Text(
                                      telephone,
                                      style: const TextStyle(
                                        color:  Color(0xffc4c4c4),
                                        fontSize: 15,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  FittedBox(
                                    child: IconButton(
                                        icon: const Icon(
                                          Icons.edit,
                                        ),
                                        onPressed: () {}),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 23.25),
                            SizedBox(
                              width: 256,
                              height: 20,
                              child: FittedBox(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Numéro de sécurité: ",
                                      style: TextStyle(
                                        color: Color(0xff406083),
                                        fontSize: 13,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      nss,
                                      style: const TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontSize: 12.50,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
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
                SizedBox(
                  width: 85,
                  height: 225,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 85,
                        height: 224,
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
                        padding: const EdgeInsets.only(
                          top: 17,
                          bottom: 28,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 40,
                              height: 64.50,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Sexe:",
                                    style: TextStyle(
                                      color: Color(0xff406083),
                                      fontSize: 15,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 3.50),
                                  SizedBox(
                                    width: 40,
                                    height: 38,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        if (sexe == F)
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const [
                                              Text(
                                                "F",
                                                style: TextStyle(
                                                  color: Color(0xffc4c4c4),
                                                  fontSize: 25,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 2.0),
                                                child: Icon(
                                                  Icons.female,
                                                  color: Color.fromRGBO(
                                                      255, 133, 143, 100),
                                                ),
                                              )
                                            ],
                                          )
                                        else
                                          FittedBox(
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "M",
                                                  style: TextStyle(
                                                    color: Color(0xffc4c4c4),
                                                    fontSize: 25,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.0),
                                                  child: Icon(
                                                    Icons.male,
                                                    color: Colors.blue,
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
                            const SizedBox(height: 41.50),
                            SizedBox(
                              width: 59,
                              height: 73,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Group Sanguin:",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff406083),
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  if (sang == Sang.Opositive)
                                    const Text(
                                      "O+",
                                      style: TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontSize: 18,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  else if (sang == Sang.Onegative)
                                    const Text(
                                      "O-",
                                      style: TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontSize: 18,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  else if (sang == Sang.Anegative)
                                    const Text(
                                      "A-",
                                      style: TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontSize: 18,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  else if (sang == Sang.Apositive)
                                    const Text(
                                      "A+",
                                      style: TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontSize: 18,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  else if (sang == Sang.Bnegative)
                                    const Text(
                                      "B-",
                                      style: TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontSize: 18,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  else if (sang == Sang.Bpositive)
                                    const Text(
                                      "B+",
                                      style: TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontSize: 18,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  else if (sang == Sang.ABnegative)
                                    const Text(
                                      "AB-",
                                      style: TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontSize: 18,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  else if (sang == Sang.ABpositive)
                                    const Text(
                                      "AB+",
                                      style: TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontSize: 18,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            width: 353,
            height: 84,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 353,
                  height: 84,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 22,
                        top: 8,
                        child: Text(
                          "Weight",
                          style: TextStyle(
                            color: Color(0xff406083),
                            fontSize: 17,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 34,
                        child: SizedBox(
                          width: 63,
                          height: 35,
                          child: Text(
                            pweight.toString() + " KG ",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color(0xff0dbed8),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 200,
                        top: 50,
                        child: SizedBox(
                          width: 135,
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
                              SizedBox(
                                width: 52,
                                height: 19,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 52,
                                      height: 19,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 199,
                        top: 17,
                        child: Text(
                          "Last Update:  Before 2 months",
                          style: TextStyle(
                            color:  Color(0xffc4c4c4),
                            fontSize: 9,
                          ),
                        ),
                      ),
                      Positioned(
                          left: 110,
                          top: 23,
                          child: IconButton(
                            icon: const Icon(
                              Icons.mode_edit_outline,
                              color: Color.fromRGBO(209, 209, 209, 100),
                            ),
                            onPressed: () {},
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: 353,
            height: 84,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 353,
                  height: 84,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 22,
                        top: 8,
                        child: Text(
                          "Height",
                          style: TextStyle(
                            color: Color(0xff406083),
                            fontSize: 17,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 34,
                        child: SizedBox(
                          width: 63,
                          height: 35,
                          child: Text(
                            pheight.toString() + " KG ",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color(0xff0dbed8),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 200,
                        top: 50,
                        child: SizedBox(
                          width: 135,
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
                              SizedBox(
                                width: 52,
                                height: 19,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 52,
                                      height: 19,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 199,
                        top: 17,
                        child: Text(
                          "Last Update:  Before 2 months",
                          style: TextStyle(
                            color: Color(0xffc4c4c4),
                            fontSize: 9,
                          ),
                        ),
                      ),
                      Positioned(
                          left: 110,
                          top: 23,
                          child: IconButton(
                            icon: const Icon(
                              Icons.mode_edit_outline,
                              color: Color.fromRGBO(209, 209, 209, 100),
                            ),
                            onPressed: () {},
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )
        ])));
  }
}
