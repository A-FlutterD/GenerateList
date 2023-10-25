import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wilverar_app/main.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text("No favorites yet."),
      );
    }
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("You have ${appState.favorites.length} favorites:"),
        ),
        for (var element in appState.favorites)
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                appState.deleteFavorite(element);
              },
            ),
            title: Text(element.asLowerCase),
          ),
      ],
    );
  }
}