import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mini_market/screens/product_card.dart';

import '../page/app_bar.dart';
import '../page/drawers.dart';
import 'home.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerPage(),
        appBar: navbar(
          titre: 'Product',
        ),
        body: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 12,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 30,
                  color: Colors.pink,
                ),
              );
            })));
  }
}
