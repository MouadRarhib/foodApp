import 'package:flutter/material.dart';
import 'package:foodapp/data/demoData.dart';
import 'package:foodapp/pages/details_screen.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/section_title.dart';
import 'package:foodapp/widgets/images_carousel.dart';
import 'package:foodapp/widgets/restaurant_info_medium_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            floating: true,
            automaticallyImplyLeading: false,
            leading: TextButton(
              onPressed: () {},
              child: Image.asset(
                'assets/icons/menu.png',
              ),
            ),
            actions: [
              Container(
                height: 40.0,
                width: 40.0,
                margin: const EdgeInsets.only(right: 20, top: 10, bottom: 5),
                decoration: BoxDecoration(
                  color: orange,
                  boxShadow: [
                    BoxShadow(
                      color: green.withOpacity(0.5),
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/pro.png'),
                  ),
                ),
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
                child: Row(
              children: [
                Text(
                  "Find your delicious dish!",
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            )),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(title: "Popular near you", press: () {}),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoMediumCard(
                      deliveryTime: demoMediumCardData[index]['delivertTime'],
                      location: demoMediumCardData[index]['location'],
                      image: demoMediumCardData[index]['image'],
                      press: () {},
                      rating: demoMediumCardData[index]['rating'],
                      title: demoMediumCardData[index]['name'],
                      price: demoMediumCardData[index]['price'],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
