class SuggestionData {
  final String? kpp;
  final Management? management;
  final Name name;
  final String inn;
  final String ogrn;
  final Address address;

  SuggestionData({
    this.kpp,
    this.management,
    required this.name,
    required this.inn,
    required this.ogrn,
    required this.address,
  });
}

class Management {
  final String name;
  final String post;
  final String? disqualified;

  Management({
    required this.name,
    required this.post,
    this.disqualified,
  });
}

class Name {
  final String fullWithOpf;
  final String? shortWithOpf;
  final String? latin;
  final String? full;
  final String? short;

  Name({
    required this.fullWithOpf,
    this.shortWithOpf,
    this.latin,
    this.full,
    this.short,
  });
}

class Address {
  final String value;

  Address({
    required this.value,
  });
}