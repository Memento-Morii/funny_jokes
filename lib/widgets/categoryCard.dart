import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    @required this.url,
    @required this.name,
    @required this.onTap,
    @required this.background,
  });

  String url;
  String name;
  Function onTap;
  Color background;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: 10,
        color: background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 90,
                width: 90,
                image: AssetImage(
                  url,
                ),
              ),
              Text(
                name,
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
