import '../../../../data/models/responses/suggestion/data_suggestion.dart';
import '../../../../presentation/models/responses/suggestion/suggestion_data.dart';

class DomainSuggestionData {
  final String? kpp;
  final DomainManagement? management;
  final DomainName name;
  final String inn;
  final String ogrn;
  final DomainAddress address;

  DomainSuggestionData({
    this.kpp,
    this.management,
    required this.name,
    required this.inn,
    required this.ogrn,
    required this.address,
  });

  factory DomainSuggestionData.fromData(SuggestionDataDTO data) {
    return DomainSuggestionData(
      kpp: data.kpp,
      management: (data.management != null) ? DomainManagement
          .fromData(data.management!) : null,
      name: DomainName.fromData(data.name),
      inn: data.inn,
      ogrn: data.ogrn,
      address: DomainAddress.fromData(data.address),
    );
  }

  SuggestionData toPress() {
    return SuggestionData(
      kpp: kpp,
      management: management?.toPress(),
      name: name.toPress(),
      inn: inn,
      ogrn: ogrn,
      address: address.toPress(),
    );
  }
}

class DomainManagement {
  final String name;
  final String post;
  final String? disqualified;

  DomainManagement({
    required this.name,
    required this.post,
    this.disqualified,
  });

  factory DomainManagement.fromData(ManagementDTO data) {
    return DomainManagement(
      name: data.name,
      post: data.post,
      disqualified: data.disqualified,
    );
  }

  Management toPress() {
    return Management(
      name: name,
      post: post,
      disqualified: disqualified,
    );
  }
}

class DomainName {
  final String fullWithOpf;
  final String? shortWithOpf;
  final String? latin;
  final String? full;
  final String? short;

  DomainName({
    required this.fullWithOpf,
    this.shortWithOpf,
    this.latin,
    this.full,
    this.short,
  });

  factory DomainName.fromData(NameDTO data) {
    return DomainName(
      fullWithOpf: data.full_with_opf,
      shortWithOpf: data.short_with_opf,
      latin: data.latin,
      full: data.full,
      short: data.short,
    );
  }

  Name toPress() {
    return Name(
      fullWithOpf: fullWithOpf,
      shortWithOpf: shortWithOpf,
      latin: latin,
      full: full,
      short: short,
    );
  }
}

class DomainAddress {
  final String value;

  DomainAddress({
    required this.value,
  });

  factory DomainAddress.fromData(AddressDTO data) {
    return DomainAddress(value: data.value);
  }

  Address toPress() {
    return Address(value: value);
  }
}