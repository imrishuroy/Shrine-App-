import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'model/products_repository.dart';
import 'model/product.dart';

class HomePage extends StatelessWidget {
  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(
      count,
      (index) => Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 18 / 11,
              child: Image.asset('assets/diamond.png'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 12, 16, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title'),
                  SizedBox(
                    height: 8,
                  ),
                  Text('Secondary Text')
                ],
              ),
            )
          ],
        ),
      ),
    );
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('SHIRINE'),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () => print('Menu Clicked'),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () => print('Search Clicked'),
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () => print('FIlter Clicked'),
          )
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        childAspectRatio: 8 / 9,
        children: _buildGridCards(10),
      ),
    );
  }
}
