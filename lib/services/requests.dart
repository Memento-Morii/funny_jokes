import 'package:http/http.dart' as http;
import 'package:funny_jokes/models/joke.dart';

class Requests {
  Future<List<Jokes>> getRandom() async {
    List<Jokes> jokes;
    Uri url = Uri.parse("https://official-joke-api.appspot.com/random_ten");
    var response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        if (response.body != null) {
          String responseString = response.body;

          jokes = jokesFromJson(responseString);
          print(jokes.length);
        }
      }
      return jokes;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<List<Jokes>> getTop10() async {
    List<Jokes> jokes;
    Uri url = Uri.parse("https://official-joke-api.appspot.com/jokes/ten");
    var response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        if (response.body != null) {
          String responseString = response.body;

          jokes = jokesFromJson(responseString);
          print(jokes.length);
        }
      }
      return jokes;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<List<Jokes>> getProgramming() async {
    List<Jokes> jokes;
    Uri url = Uri.parse(
        "https://official-joke-api.appspot.com/jokes/programming/ten");
    var response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        if (response.body != null) {
          String responseString = response.body;

          jokes = jokesFromJson(responseString);
          print(jokes.length);
        }
      }
      return jokes;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
