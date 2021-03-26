import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:funny_jokes/models/joke.dart';
import 'package:funny_jokes/widgets/jokeCard.dart';

class JokePage extends StatefulWidget {
  JokePage({Key key, this.jokes, this.name, this.background}) : super(key: key);
  List<Jokes> jokes;
  String name;
  Color background;
  @override
  _JokePageState createState() => _JokePageState();
}

class _JokePageState extends State<JokePage> {
  int i;
  Jokes joke;
  @override
  void initState() {
    i = 0;
    joke = widget.jokes[i];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              color: widget.background,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.35,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 40, 15, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.name,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                JokeCard(
                  jokes: widget.jokes[i],
                ),
                SizedBox(
                  height: 30,
                ),
                FAProgressBar(
                  currentValue: i + 1,
                  size: 5,
                  maxValue: 10,
                  progressColor: widget.background,
                  direction: Axis.horizontal,
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  color: widget.background,
                  borderRadius: BorderRadius.circular(30),
                  elevation: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          iconSize: 40,
                          onPressed: () {
                            if (i > 0) {
                              setState(() {
                                i--;
                              });
                            }
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          iconSize: 40,
                          onPressed: () {
                            if (i < widget.jokes.length - 1) {
                              setState(() {
                                i++;
                              });
                            }
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
