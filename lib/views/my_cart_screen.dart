import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/button_widget.dart';
import 'package:food_delivery/widgets/cart/cart_item_wdiget.dart';
import 'package:food_delivery/widgets/header_title_widget.dart';
import 'package:food_delivery/widgets/home/trending_slider_widget.dart';
import 'package:food_delivery/widgets/text_form_field_widget.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<Map<String, String>> trendingItems = [
    {
      "title": "Get winter ready",
      "description": "We help you to grow your",
      "image":
          "https://static.vecteezy.com/system/resources/previews/047/394/332/non_2x/little-happy-child-kid-girl-in-casual-clothes-dancing-joyfully-isolated-on-a-transparent-background-free-png.png",
      "price": "80.00",
      "originalPrice": "99.00",
    },
    {
      "title": "Summer Collection",
      "description": "Stay cool in the summer heat",
      "image":
          "https://static.vecteezy.com/system/resources/previews/047/394/332/non_2x/little-happy-child-kid-girl-in-casual-clothes-dancing-joyfully-isolated-on-a-transparent-background-free-png.png",
      "price": "50.00",
      "originalPrice": "60.00",
    },
    {
      "title": "New Fashion Trends",
      "description": "Trendy outfits for all seasons",
      "image":
          "https://static.vecteezy.com/system/resources/previews/047/394/332/non_2x/little-happy-child-kid-girl-in-casual-clothes-dancing-joyfully-isolated-on-a-transparent-background-free-png.png",
      "price": "75.00",
      "originalPrice": "90.00",
    },
    {
      "title": "Spring Essentials",
      "description": "Blooming in style",
      "image":
          "https://static.vecteezy.com/system/resources/previews/047/394/332/non_2x/little-happy-child-kid-girl-in-casual-clothes-dancing-joyfully-isolated-on-a-transparent-background-free-png.png",
      "price": "45.00",
      "originalPrice": "55.00",
    },
    {
      "title": "Casual Weekend Wear",
      "description": "Perfect for your day off",
      "image":
          "https://static.vecteezy.com/system/resources/previews/047/394/332/non_2x/little-happy-child-kid-girl-in-casual-clothes-dancing-joyfully-isolated-on-a-transparent-background-free-png.png",
      "price": "60.00",
      "originalPrice": "70.00",
    },
    {
      "title": "Autumn Warmers",
      "description": "Stay warm in style",
      "image":
          "https://static.vecteezy.com/system/resources/previews/047/394/332/non_2x/little-happy-child-kid-girl-in-casual-clothes-dancing-joyfully-isolated-on-a-transparent-background-free-png.png",
      "price": "90.00",
      "originalPrice": "110.00",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Padding(
          padding: AppConstants.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppConstants.smallGap,
              _buildTabs(),
              Expanded(
                child: TabBarView(
                  controller: _tabController, 
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: ListView(
                            children: [
                              CartItemWdiget(),      
                              CartItemWdiget(),   
                              TextFormFieldWidget(
                                labelText: "Delivery & Service for", 
                                hintText: "", 
                                keyboardType: TextInputType.text, 
                                obscureText: false),      
                              _buildRecommendSection()
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: AppConstants.margin1),
                          child: ButtonWidget(
                            btnTtitle: "Proccess to buy 2 items", 
                            onPressed: (){}
                          ),
                        )
                      ],
                    ),
                    Center(child: Text("Saved Items Here")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Wrap _buildRecommendSection() {
    return Wrap(
      children: [
        HeaderTitleWidget(
          title: "Recommend items",
          btnTitle: "See all",
        ),
        TrendingItemsCarousel(trendingItems: trendingItems),                       
      ],
    );
  }

  Widget _buildTabs() {
    final List<String> tabTitles = ["Cart Items - 2", "Saved Items - 2"];

    return Container(
      height: 35.0,
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: AppConstants.greyColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(4),
      ),
      child: TabBar(
        controller: _tabController,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        indicator: BoxDecoration(
          color: AppConstants.brownColor,
          borderRadius: BorderRadius.circular(4),
        ),
        indicatorColor: Colors.transparent,
        indicatorSize: TabBarIndicatorSize.tab,
        dividerHeight: 0.0,
        tabs: tabTitles.map((title) => Tab(text: title)).toList(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded)),
      title: Text("My Cart"),
      centerTitle: false,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications_active)),
      ],
    );
  }
}
