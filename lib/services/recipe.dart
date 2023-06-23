import 'dart:convert';
import 'package:recipe/models/hits.dart';
import 'package:http/http.dart' as http;

class Recipe {
  List<Hits> hits = [];

  Future<void> getRecipe() async {
    String url =
        "https://api.edamam.com/search?q=banana&app_id=d2244b70&app_key=b002ac59b2d18191f4d2e90adc53a3f3";
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);
    jsonData["hits"].forEach((element) {
      Hits hits = Hits(
        recipeModel: element['recipe'],
      );
      // hits.recipeModel = add(Hits.fromMap(hits.recipeModel));
    });
  }
}