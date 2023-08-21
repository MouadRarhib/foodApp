import 'package:flutter/material.dart';
import 'package:foodapp/data/cartmodel.dart';
import 'package:foodapp/pages/cart_screen.dart';
import 'package:foodapp/utils/colors.dart';

class DetailsScreen extends StatelessWidget {
  final String title, image, location;
  final int deliveryTime;
  final double rating;
  final int price;

  const DetailsScreen({
    required this.title,
    required this.image,
    required this.location,
    required this.deliveryTime,
    required this.rating,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            title,
            style:
                Theme.of(context).textTheme.headline6?.copyWith(color: black),
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: height / 2,
                  decoration: BoxDecoration(
                    color: lightGreen,
                    boxShadow: [
                      BoxShadow(
                        color: green.withOpacity(0.2),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: title,
                                  style: TextStyle(
                                    color: black.withOpacity(0.8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding,
                                vertical: defaultPadding / 5),
                            decoration: BoxDecoration(
                                color: orange,
                                borderRadius: BorderRadius.circular(6)),
                            child: Text(
                              rating.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 30.0,
                            width: 30.0,
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: orange,
                              boxShadow: [
                                BoxShadow(
                                  color: green.withOpacity(0.2),
                                  blurRadius: 15,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset(
                              'assets/icons/heart.png',
                              color: white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 15,
                      ),
                      Row(
                        children: [
                          Text("Quantity",
                              style: TextStyle(
                                color: black.withOpacity(0.8),
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              )),
                          SizedBox(
                            width: width / 20,
                          ),
                          Container(
                              height: 40.0,
                              width: 100.0,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.grey[350],
                                boxShadow: [
                                  BoxShadow(
                                    color: green.withOpacity(0.2),
                                    blurRadius: 15,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, left: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("+",
                                        style: TextStyle(
                                          color: black.withOpacity(0.8),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                        )),
                                    Text("0",
                                        style: TextStyle(
                                          color: black.withOpacity(0.8),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                        )),
                                    Text("-",
                                        style: TextStyle(
                                          color: black.withOpacity(0.8),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                        ))
                                  ],
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: height / 12,
                              width: width / 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.grey[350],
                              ),
                              child: Center(
                                child: Text(
                                  "\$ " + price.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(
                                          color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: height / 12,
                                width: width / 2.5,
                                // color: orange,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.grey[350],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        'Add to Cart',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            ?.copyWith(
                                                color: Colors.black,
                                                fontSize: 15),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
