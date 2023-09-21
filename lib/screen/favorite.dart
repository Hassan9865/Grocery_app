import 'package:flutter/material.dart';

class FavoriteIconPage extends StatefulWidget {
  const FavoriteIconPage({super.key});

  @override
  State<FavoriteIconPage> createState() => _FavoriteIconPageState();
}

class _FavoriteIconPageState extends State<FavoriteIconPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Favourite icon page"),
      ),
    );
  }
}
