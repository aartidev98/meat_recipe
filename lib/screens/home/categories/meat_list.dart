import 'package:flutter/material.dart';
import 'package:meat_recipes/model/meatModel.dart';
import 'package:meat_recipes/screens/home/detail_recipe_screen.dart';

class MeatList extends StatefulWidget {
  const MeatList({Key? key}) : super(key: key);

  @override
  _MeatListState createState() => _MeatListState();
}

class _MeatListState extends State<MeatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272731),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75.0),
                  child: Container(
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 10.0),
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (ctx, index) {
                        return CardDinner(meat_model: meatModelArray[index]);
                      },
                      itemCount: meatModelArray.length,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 80.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/appBar.png'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 28.0, left: 10.0, right: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Meat",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 19.5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardDinner extends StatelessWidget {
  final meatModel? meat_model;

  const CardDinner({Key? key, this.meat_model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailRecipeScreen(
                image: meat_model!.image,
                title: meat_model!.title,
                id: meat_model!.id,
                ingredient: meat_model!.ingredient,
                directions: meat_model!.directions,
                rating: meat_model!.rating)));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Hero(
                tag: meat_model!.id,
                child: Material(
                  child: Container(
                    width: double.infinity,
                    height: _height / 4,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      image: DecorationImage(
                          image: AssetImage(meat_model!.image),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ),
            ClipPath(
              clipper: new DialogonalClipper(),
              child: Container(
                height: _height / 4,
                decoration:
                    BoxDecoration(color: Colors.black12.withOpacity(0.8)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.0),
                    child: Container(
                      width: 400,
                      child: Text(
                        meat_model!.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Heart",
                            fontSize: 30.0),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DialogonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(110.0, size.height);
    path.lineTo(220.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    Path path = Path();
    // Draws a line from left top corner to right bottom
    path.lineTo(40, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
