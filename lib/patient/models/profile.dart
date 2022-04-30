// ignore_for_file: constant_identifier_names

enum Sexe {
  F,
  M,
}
enum Sang {
  Opositive,
  Onegative,
  Apositive,
  Anegative,
  Bpositive,
  Bnegative,
  ABpositive,
  ABnegative
}

// ignore: camel_case_types
class profile {
  final String imgUrl;
  final String fullName;
  final int profileId;
  final String bDay;
  final String region;
  final String adresse;
  final String telephone;
  final String nss;
  final Sexe sexe;
  final Sang sang;
  final String weight;
  final String height;

  profile(
      this.imgUrl,
      this.fullName,
      this.profileId,
      this.bDay,
      this.region,
      this.adresse,
      this.telephone,
      this.nss,
      this.sexe,
      this.sang,
      this.weight,
      this.height);
}
