import 'package:flutter/foundation.dart';

enum Level { Junior, Mediocore, Senior, Principle }

class Cards {
  final String id;
  final String category;
  final String title;
  final String name;
  final String imageUrl;
  final String mail;
  final String phoneNo;
  final Level experience;

  const Cards(
      {@required this.id,
      @required this.category,
      @required this.title,
      @required this.name,
      @required this.experience,
      @required this.imageUrl,
      @required this.mail,
      @required this.phoneNo});
}
