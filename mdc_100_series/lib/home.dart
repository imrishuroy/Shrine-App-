// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// import 'model/products_repository.dart';
// import 'model/product.dart';

// class HomePage extends StatelessWidget {
//   List<Card> _buildGridCards(BuildContext context) {
//     List<Product> products = ProductsRepository.loadProducts(Category.all);

//     if (products == null || products.isEmpty) {
//       return const <Card>[];
//     }

//     final ThemeData theme = Theme.of(context);

//     final NumberFormat formatter = NumberFormat.simpleCurrency(
//         locale: Localizations.localeOf(context).toString());

//     return products.map((product) {
//       return Card(
//         clipBehavior: Clip.antiAlias,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             AspectRatio(
//               aspectRatio: 18 / 11,
//               child: Image.asset(
//                 product.assetName,
//                 package: product.assetPackage,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   // crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       product == null ? '' : product.name,
//                       style: theme.textTheme.button,
//                       softWrap: false,
//                       overflow: TextOverflow.ellipsis,
//                       maxLines: 1,
//                     ),
//                     SizedBox(height: 4.0),
//                     Text(
//                       product == null ? '' : formatter.format(product.price),
//                       style: theme.textTheme.caption,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     }).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: Text('SHIRINE'),
//         leading: IconButton(
//           icon: Icon(
//             Icons.menu,
//             semanticLabel: 'menu',
//           ),
//           onPressed: () => print('Menu Clicked'),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.search,
//               semanticLabel: 'search',
//             ),
//             onPressed: () => print('Search Clicked'),
//           ),
//           IconButton(
//             icon: Icon(
//               Icons.tune,
//               semanticLabel: 'filter',
//             ),
//             onPressed: () => print('FIlter Clicked'),
//           )
//         ],
//       ),
//       body: GridView.count(
//         crossAxisCount: 2,
//         padding: EdgeInsets.all(16),
//         childAspectRatio: 8 / 9,
//         children: _buildGridCards(context),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// import 'model/products_repository.dart';
// import 'model/product.dart';
// import 'supplemental/asymmetric_view.dart';

// class HomePage extends StatelessWidget {
//   // TODO: Add a variable for Category (104)
//   final Category category;

//   const HomePage({this.category: Category.all});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: Return an AsymmetricView (104)
//     // TODO: Pass Category variable to AsymmetricView (104)
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     brightness: Brightness.dark,
//     //     leading: IconButton(
//     //       icon: Icon(Icons.menu),
//     //       onPressed: () {
//     //         print('Menu button');
//     //       },
//     //     ),
//     //     title: Text('SHRINE'),
//     //     actions: <Widget>[
//     //       IconButton(
//     //         icon: Icon(Icons.search),
//     //         onPressed: () {
//     //           print('Search button');
//     //         },
//     //       ),
//     //       IconButton(
//     //         icon: Icon(Icons.tune),
//     //         onPressed: () {
//     //           print('Filter button');
//     //         },
//     //       ),
//     //     ],
//     //   ),
//     //   body:

//     AsymmetricView(products: ProductsRepository.loadProducts(Category.all));
//   }
// }

import 'package:flutter/material.dart';

import 'model/products_repository.dart';
import 'model/product.dart';
import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  final Category category;

  const HomePage({this.category: Category.all});

  @override
  Widget build(BuildContext context) {
    return AsymmetricView(products: ProductsRepository.loadProducts(category));
  }
}
