import 'package:flutter/material.dart';

// class DetailRecipeScreen extends StatefulWidget {
//   String image, title, id;
//   List<String> ingredients, directions;
//   num ratings;
//   DetailRecipeScreen(
//       {Key? key,
//       required this.image,
//       required this.title,
//       required this.id,
//       required this.ingredients,
//       required this.directions,
//       required this.ratings})
//       : super(key: key);

//   @override
//   _DetailRecipeScreenState createState() => _DetailRecipeScreenState();
// }

// class _DetailRecipeScreenState extends State<DetailRecipeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF272731),
//       body: Stack(
//         children: [
//           Hero(
//             tag: widget.id,
//             child: Material(
//               child: Container(
//                 width: double.infinity,
//                 height: 500.0,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage(widget.image), fit: BoxFit.cover),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 40.00, left: 10.0),
//             child: InkWell(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: Container(
//                 height: 50.0,
//                 width: 35,
//                 child: Center(
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 4.0),
//                     child: Icon(
//                       Icons.arrow_back_ios_new,
//                       color: Colors.white,
//                       size: 20,
//                     ),
//                   ),
//                 ),
//                 decoration: BoxDecoration(
//                     color: Colors.black12.withOpacity(0.3),
//                     borderRadius: BorderRadius.all(Radius.circular(40))),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 300),
//             child: Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage('assets/images/background.png'),
//                       fit: BoxFit.fill)),
//               child: ListView(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: 20.0, right: 20.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           widget.title,
//                           style: TextStyle(
//                             fontFamily: "Sofia",
//                             color: Colors.white,
//                             fontWeight: FontWeight.w500,
//                             fontSize: 26.0,
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.star,
//                               color: Colors.yellow,
//                               size: 18.0,
//                             ),
//                             SizedBox(
//                               width: 4.0,
//                             ),
//                             Text(
//                               widget.ratings.toString(),
//                               style: TextStyle(
//                                 fontFamily: "Sofia",
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 26.0,
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 30.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Image.asset('assets/images/left.png'),
//                         Text(
//                           'Ingradients',
//                           style: TextStyle(
//                               fontFamily: "Heart",
//                               color: Colors.white,
//                               fontWeight: FontWeight.w500,
//                               fontSize: 24.0,
//                               letterSpacing: 2.8),
//                         ),
//                         Image.asset('assets/images/left.png'),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         top: 12.0, left: 10.0, right: 10.0),
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: widget.ingredients
//                             .map((item) => Padding(
//                                   padding: const EdgeInsets.all(20.0),
//                                   child: Column(
//                                     children: [
//                                       new Text(
//                                         "- " + item,
//                                         style: TextStyle(
//                                             color: Colors.white60,
//                                             fontFamily: "Sofia",
//                                             fontSize: 15.0,
//                                             fontWeight: FontWeight.w200),
//                                       ),
//                                     ],
//                                   ),
//                                 ))
//                             .toList()),
//                   ),
//                   SizedBox(
//                     height: 50.0,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Image.asset("assets/images/left.png"),
//                       Text(
//                         "Directions",
//                         style: TextStyle(
//                             fontFamily: "Heart",
//                             color: Colors.white70,
//                             fontWeight: FontWeight.w500,
//                             letterSpacing: 2.8,
//                             fontSize: 23.0),
//                       ),
//                       Image.asset("assets/images/left.png"),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         top: 12.0, left: 10.0, right: 10.0),
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: widget.directions
//                             .map((item) => Padding(
//                                   padding: const EdgeInsets.all(20.0),
//                                   child: Column(
//                                     children: [
//                                       Container(
//                                         width: 300.0,
//                                         child: new Text(
//                                           "- " + item,
//                                           textAlign: TextAlign.justify,
//                                           style: TextStyle(
//                                               color: Colors.white60,
//                                               fontFamily: "Sofia",
//                                               fontSize: 15.0,
//                                               overflow: TextOverflow.ellipsis,
//                                               fontWeight: FontWeight.w200),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ))
//                             .toList()),
//                   ),
//                   SizedBox(
//                     height: 30.0,
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class DetailRecipeScreen extends StatefulWidget {
  String image, title, id;
  List<String> ingredient, directions;
  num rating;
  DetailRecipeScreen({
    Key? key,
    required this.id,
    required this.title,
    required this.image,
    required this.ingredient,
    required this.directions,
    required this.rating,
  }) : super(key: key);

  @override
  _DetailRecipeScreenState createState() => _DetailRecipeScreenState();
}

class _DetailRecipeScreenState extends State<DetailRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272731),
      body: Stack(
        children: [
          Hero(
            tag: widget.id,
            child: Material(
              child: Container(
                width: double.infinity,
                height: 500.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.cover)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.0, left: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50.0,
                width: 35.0,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.3),
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.fill)),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 26.0),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              widget.rating.toString(),
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19.5),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/left.png"),
                        Text(
                          "Ingredients",
                          style: TextStyle(
                              fontFamily: "Heart",
                              color: Colors.white70,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2.8,
                              fontSize: 23.0),
                        ),
                        Image.asset("assets/images/left.png"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 10.0, right: 10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: widget.ingredient
                            .map((item) => Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Row(
                                    children: [
                                      new Text(
                                        "- " + item,
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontFamily: "Sofia",
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ],
                                  ),
                                ))
                            .toList()),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/left.png"),
                      Text(
                        "Directions",
                        style: TextStyle(
                            fontFamily: "Heart",
                            color: Colors.white70,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2.8,
                            fontSize: 23.0),
                      ),
                      Image.asset("assets/images/left.png"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 10.0, right: 10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: widget.directions
                            .map((item) => Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 360.0,
                                        child: new Text(
                                          "- " + item,
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontFamily: "Sofia",
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                            .toList()),
                  ),
                  SizedBox(
                    height: 30.0,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
