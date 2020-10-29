import 'package:flutter/material.dart';
import 'package:itsme/dummy_data.dart';
import 'package:itsme/widgets/carditem.dart';

class CategoryCardScreen extends StatelessWidget {
  static const routeName = '/category-cards';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryCards = DUMMY_CARDS.where((card) {
      return card.category.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return CardItem(
                id: categoryCards[index].id,
                name: categoryCards[index].name,
                imageUrl: categoryCards[index].imageUrl,
                experience: categoryCards[index].experience);
          },
          itemCount: categoryCards.length,
        ));
  }
}
