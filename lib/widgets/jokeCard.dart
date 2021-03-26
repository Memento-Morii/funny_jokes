import 'package:flutter/material.dart';
import 'package:funny_jokes/models/joke.dart';

class JokeCard extends StatefulWidget {
  JokeCard({this.jokes});
  Jokes jokes;
  @override
  _JokeCardState createState() => _JokeCardState();
}

class _JokeCardState extends State<JokeCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                widget.jokes.setup,
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.headline3.fontFamily,
                  fontSize: Theme.of(context).textTheme.headline3.fontSize,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                widget.jokes.punchline,
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
