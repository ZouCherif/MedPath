// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';


class VisitCard extends StatelessWidget {
  final String fullName;
  final String specialite;
  final String imageUrl;
  final String rapport;
  final String datee;
  final String localisation;
  const VisitCard(this.fullName, this.specialite, this.imageUrl, this.datee,
      this.localisation, this.rapport);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 194,
        width: 341,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(.1), blurRadius: 70)
        ]),
        child: Center(
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 4,
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 67,
                        height: 67,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'data:image/jpeg;base64,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'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          fullName,
                          style: const TextStyle(
                            color: Color(0xff406083),
                            fontFamily: 'Poppins',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          specialite,
                          style: const TextStyle(
                            color: Color(0xffc4c4c4),
                            fontFamily: 'Poppins',
                            fontSize: 13.0,
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.calendar_today_outlined,
                                color: Color(0xff0dbed8),
                                size: 22.0,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                datee,
                                style: const TextStyle(
                                  color: Color(0xffc4c4c4),
                                  fontSize: 11.0,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.location_on_outlined,
                                color: Color(0xff0dbed8),
                                size: 22.0,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                localisation,
                                style: const TextStyle(
                                  color: Color(0xffc4c4c4),
                                  fontSize: 11.0,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 265.0),
                  child: Text(
                    'Rapport:',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      color: Color(0xff406083),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5),
                  child: Expanded(
                    child: Container(
                      height: 40.0,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          rapport,
                          style: const TextStyle(
                            color: Color(0xff406083),
                            fontFamily: 'regular',
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0),
                  child: Container(
                    width: 150,
                    height: 32,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff0dbed8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),

                      //MaterialStateProperty.all<RoundedRectangleBorder>(
                      //RoundedRectangleBorder(
                      //borderRadius: BorderRadius.circular(25.0),

                      onPressed: () {},
                      child: const Text(
                        " Ordonance",
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: "regular",
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ])),
        ),
      ),
    );
  }
}
