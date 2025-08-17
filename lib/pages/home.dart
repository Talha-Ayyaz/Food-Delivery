import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/custom_drawer.dart';
import 'package:food_delivery_app/components/custom_food_tile.dart';
import 'package:food_delivery_app/components/custom_sliver_app_bar.dart';
import 'package:food_delivery_app/components/custom_tab_bar.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_decription_box.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/pages/food_page.dart';
import 'package:provider/provider.dart';

import '../models/restaurant.dart';

class Home extends StatefulWidget{

  const Home({
    super.key
});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu){
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu){
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return FoodTile(
              food: food,
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FoodPage(food: food)))
          );
        }
      );
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
           MySliverAppBar(
               title: MyTabBar(tabController: _tabController),
               child: Column(
                 children: [
                   Spacer(),
                   Divider(
                     indent: 25,
                     endIndent: 25,
                     color: Theme.of(context).colorScheme.secondary,
                   ),

                   MyCurrentLocation(),

                   const MyDescriptionBox()
                 ],
               )
           )
          ],
          body: Consumer<Restaurant>(
            builder: (context, restaurant, child) => TabBarView(
                controller: _tabController,
                children: getFoodInThisCategory(restaurant.menu),
            )
          )
      ),
    );
  }
}