import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:itsme/models/cards.dart';
import 'package:itsme/screens/cardetailscreen.dart';
import 'package:itsme/screens/cardetailscreen.dart';

class CardItem extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  final Level experience;

  CardItem(
      {@required this.id,
      @required this.name,
      @required this.imageUrl,
      @required this.experience});

  String get experienceText {
    switch (experience) {
      case Level.Junior:
        return 'Junior';
      case Level.Mediocore:
        return 'Mediocore';
      case Level.Senior:
        return 'Senior';
      case Level.Principle:
        return 'Principle';
      default:
        return 'Unknown';
    }
  }

  void selectCard(BuildContext context) {
    Navigator.of(context).pushNamed(CardDetailScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCard(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.people,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text('$name')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_upward,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(experienceText)
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
