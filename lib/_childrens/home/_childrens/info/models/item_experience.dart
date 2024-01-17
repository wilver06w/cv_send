import 'package:equatable/equatable.dart';

class ItemExperience extends Equatable {
  const ItemExperience({
    required this.title,
    required this.profile,
    required this.date,
    required this.urlSite,
    required this.description,
    required this.descriptionSpanish,
    required this.resposabilitys,
  });

  final String title;
  final String profile;
  final String date;
  final String description;
  final String descriptionSpanish;
  final String urlSite;
  final List<String> resposabilitys;

  factory ItemExperience.fromJson(Map<String, dynamic> json) {
    return ItemExperience(
      title: json['title'],
      profile: json['profile'],
      date: json['date'],
      description: json['description'],
      descriptionSpanish: json['description_spanish'],
      resposabilitys: json['resposabilitys'],
      urlSite: json['url_site'],
    );
  }

  @override
  List<Object?> get props {
    return [
      title,
      urlSite,
      profile,
      date,
      description,
      descriptionSpanish,
      resposabilitys,
    ];
  }
}
