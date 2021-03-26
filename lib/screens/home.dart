import 'package:flutter/material.dart';
import 'package:funny_jokes/models/joke.dart';
import 'package:funny_jokes/screens/jokePage.dart';
import 'package:funny_jokes/services/requests.dart';
import 'package:funny_jokes/widgets/categoryCard.dart';
import 'package:funny_jokes/widgets/loading.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Jokes> jokes;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
          child: loading
              ? Loading()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 128, 0, 32),
                      child: Container(
                        height: 100,
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Funny Jokes",
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              Text(
                                "Over 300+ Jokes",
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .fontSize,
                                  fontFamily: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .fontFamily,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Categories",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 40,
                        mainAxisSpacing: 20,
                        children: [
                          CategoryCard(
                            background: Color.fromARGB(255, 32, 65, 97),
                            url: "assets/ten.png",
                            name: "Top 10",
                            onTap: () async {
                              setState(() {
                                loading = true;
                              });
                              jokes = await Requests().getRandom();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => JokePage(
                                    jokes: jokes,
                                    name: "Top 10 Jokes",
                                    background: Color.fromARGB(255, 32, 65, 97),
                                  ),
                                ),
                              );
                              setState(() {
                                loading = false;
                              });
                            },
                          ),
                          CategoryCard(
                            background: Color.fromARGB(255, 76, 101, 25),
                            url: "assets/code.png",
                            name: "Programming",
                            onTap: () async {
                              setState(() {
                                loading = true;
                              });
                              jokes = await Requests().getRandom();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => JokePage(
                                    jokes: jokes,
                                    name: "Programming Jokes",
                                    background:
                                        Color.fromARGB(255, 76, 101, 25),
                                  ),
                                ),
                              );
                              setState(() {
                                loading = false;
                              });
                            },
                          ),
                          CategoryCard(
                            background: Color.fromARGB(255, 77, 38, 115),
                            url: "assets/shuffle.png",
                            name: "Random",
                            onTap: () async {
                              setState(() {
                                loading = true;
                              });
                              jokes = await Requests().getRandom();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => JokePage(
                                    jokes: jokes,
                                    name: "Random Jokes",
                                    background:
                                        Color.fromARGB(255, 77, 38, 115),
                                  ),
                                ),
                              );
                              setState(() {
                                loading = false;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("API provided by Offical Jokes API"),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
