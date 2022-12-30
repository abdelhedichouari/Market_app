import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mini_market/screens/home.dart';
import 'package:mini_market/screens/login.dart';
import 'package:mini_market/screens/product_card.dart';
import 'package:url_launcher/url_launcher.dart';

import '../screens/product.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        )),
      );
  Widget buildHeader(BuildContext context) => Container(
      color: Colors.blue.shade700,
      padding: EdgeInsets.only(
        top: 24 + MediaQuery.of(context).padding.top,
        bottom: 24,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
                'https://www.thesun.co.uk/wp-content/uploads/2016/08/nintchdbpict000255715237.jpg'),
          ),
          SizedBox(height: 12),
          Text(
            'Balha',
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          GestureDetector(
            onTap: () {
              _launchUrl();
            },
            child: Text(
              'abdelhadialchouari@gmail.com',
              style: TextStyle(fontSize: 21, color: Colors.black),
            ),
          ),
        ],
      ));

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          runSpacing: 15,
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite_border),
              title: const Text('Favourites'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProductPage(),
                ));
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspaces_outline),
              title: const Text('WorkFlow'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProductCard(),
                ));
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.update),
              title: const Text('Update'),
              onTap: () {},
            ),
            const Divider(
              color: Colors.black12,
            ),
            ListTile(
              leading: const Icon(Icons.notifications_outlined),
              title: const Text('Notifications'),
              onTap: () {},
            ),
          ],
        ),
      );
}

final Uri _url = Uri.parse('https://www.google.com/intl/fr/gmail/about');

Future<void> _launchUrl() async {
  launchUrl(_url);
}
