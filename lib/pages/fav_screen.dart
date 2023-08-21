import 'package:flutter/material.dart';
import 'package:foodapp/utils/colors.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Favourites",
                      style: TextStyle(
                        color: black.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height / 3,
                      width: width / 1.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(16),
                          image: DecorationImage(
                              image: AssetImage("assets/images/cartemty.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "  Looks like you don't have any \n            favourites yet!",
                  style: TextStyle(
                    color: black.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                )
              ],
            ),
            SizedBox(
              height: height / 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Browse our Home page to find your \n             favourite ones.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.0,
                  ),
                )
              ],
            ),
            SizedBox(
              height: height / 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90, top: 30),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: orange),
                      child: Center(
                          child: Text(
                        "Home Page",
                        style: TextStyle(
                          color: black.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
