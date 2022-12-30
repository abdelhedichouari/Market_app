


import 'package:flutter/material.dart';

import '../screens/page_gard.dart';

class navbar extends StatefulWidget with PreferredSizeWidget {
  const navbar({
    super.key,
    required this.titre,
  });
  final String titre;

  @override
  State<navbar> createState() => _navbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _navbarState extends State<navbar> {


  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(widget.titre),
      iconTheme: IconThemeData(color: Colors.black),
      actions: <Widget>[
        IconButton(
            onPressed: ()  {
             
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>MyWidget ()));
            },
            icon: Icon(Icons.logout)),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: MySearcheDelegate());
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class MySearcheDelegate extends SearchDelegate {
  List<String> searchResults = [
    'product',
    'product1',
    'product2',
    'product3',
  ];
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        )
      ];
  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
        ),
      );
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResults) {
      final result = searchResults.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}
