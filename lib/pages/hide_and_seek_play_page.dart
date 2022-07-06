import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../logic/hide_and_seek_models.dart';

class HideAndSeekPlayPage extends StatelessWidget {
  const HideAndSeekPlayPage({Key? key}) : super(key: key);

  Future<String> _loadFileContent(String path) {
    return rootBundle.loadString(path);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: _loadFileContent("assets/game_3.json"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final level = HideAndSeekLevel.fromJson(jsonDecode(snapshot.data!));
            return HideAndSeekPlayPageContent(level);
          }
          return const CircularProgressIndicator();
        });
  }
}

class HideAndSeekPlayPageContent extends StatelessWidget {
  const HideAndSeekPlayPageContent(this.gameLevel, {Key? key}) : super(key: key);
  final HideAndSeekLevel gameLevel;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
