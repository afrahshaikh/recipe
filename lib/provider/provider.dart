import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  List<String> title = [];
  List<String> get words => title;

  void toggleFavorite(String word) {
    final isExist = title.contains(word);
    if (isExist) {
      title.remove(word);
    } else {
      title.add(word);
    }
    notifyListeners();
  }

  bool isExist(String word) {
    final isExist = title.contains(word);
    return isExist;
  }

  void clearFavorite() {
    title = [];
    notifyListeners();
  }

  static FavoriteProvider of(
      BuildContext context, {
        bool listen = true,
      }) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}