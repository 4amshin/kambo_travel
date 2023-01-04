import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  List<Food>? _foods;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _foods = [
      Food('Food 1', 10.0, 'Category 1'),
      Food('Food 4', 40.0, 'Category 2'),
      Food('Food 2', 20.0, 'Category 2'),
      Food('Food 5', 50.0, 'Category 2'),
      Food('Food 5', 50.0, 'Category 2'),
      Food('Food 5', 50.0, 'Category 2'),
      Food('Food 5', 50.0, 'Category 2'),
      Food('Food 5', 50.0, 'Category 2'),
      Food('Food 3', 30.0, 'Category 3'),
      Food('Food 6', 60.0, 'Category 3'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          labelColor: Colors.black,
          isScrollable: true,
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: 'Category 1'),
            Tab(text: 'Category 2'),
            Tab(text: 'Category 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          _buildCategoryList('Category 1'),
          _buildCategoryList('Category 2'),
          _buildCategoryList('Category 3'),
        ],
      ),
    );
  }

  Widget _buildCategoryList(String category) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _foods!.length,
      itemBuilder: (context, index) {
        final food = _foods![index];
        if (food.foodCategory == category) {
          return _buildFoodItem(food);
        }
        return Container();
      },
    );
  }

  Widget _buildFoodItem(Food food) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(food.foodName),
          Text(food.foodPrice.toString()),
        ],
      ),
    );
  }
}

class Food {
  final String foodName;
  final double foodPrice;
  final String foodCategory;

  Food(this.foodName, this.foodPrice, this.foodCategory);
}
