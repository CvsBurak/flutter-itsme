import 'package:flutter/material.dart';
import 'package:itsme/dummy_data.dart';

class CardDetailScreen extends StatelessWidget {
  static const routeName = '/card-detail';

  @override
  Widget build(BuildContext context) {
    final cardId = ModalRoute.of(context).settings.arguments as String;
    final selectedCard = DUMMY_CARDS.firstWhere((card) => card.id == cardId);

    return Scaffold(
        appBar: AppBar(
          title: Text('${selectedCard.name}'),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                height: 125,
                width: 125,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.network(
                    selectedCard.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3))
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text('${selectedCard.name}'),
                            Text('${selectedCard.experience}')
                          ],
                        )
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('${selectedCard.mail}'),
                          Text('${selectedCard.phoneNo}')
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
