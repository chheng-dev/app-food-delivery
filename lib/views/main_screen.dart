import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/category_controller.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/models/categoy.dart';
import 'package:food_delivery/views/login_screen.dart';
import 'package:food_delivery/widgets/outline_input_widget.dart';
import 'package:food_delivery/widgets/section_header_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: AppConstants.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppBar(),
              _buildGeetingSection(),
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  AppConstants.mediumGap,
                  OutlineInputWidget(
                    icon: Icons.search_sharp,
                    onChanged: (value) {
                      print(value);
                    },
                    hintText: 'Search dishes, restaurants',
                  ),
                  AppConstants.mediumGap,
                  SectionHeaderWidget(
                    title: "All Categories",
                    onPressedSeemore: () {},
                    buttonTitle: "See more",
                  ),
                  _buildCategorySection(context),
                  SectionHeaderWidget(
                    title: "Open Restaurants",
                    onPressedSeemore: () {},
                    buttonTitle: "See more",
                  ),
                  AppConstants.smallGap,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.150,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(AppConstants.smallRaduis),
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
                      }, child: Text("Login"))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildCategorySection(BuildContext context) {
    final CategoryController controller = CategoryController();
    final List<CategoyModel> categories = controller.getCategories();

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.1,
      padding: EdgeInsets.symmetric(vertical: AppConstants.margin1),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Container(
            width:
                MediaQuery.of(context).size.width / 3 -
                (AppConstants.margin1 *
                    2),
            margin: EdgeInsets.symmetric(
              horizontal: AppConstants.margin1,
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: AppConstants.whiteColor,
              borderRadius: BorderRadius.circular(44),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppConstants.whiteColor,
                      radius: 20,
                      backgroundImage: AssetImage(category.image)
                    ),
                    SizedBox(width: 8),
                    Text(
                      category.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppConstants.heading3
                      ),
                    )
                  ],
                ),
                // You can add more widgets below if needed, e.g. text or icons
              ],
            ),
          );
        },
      ),
    );
  }

  Text _buildGeetingSection() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Hey Halal,",
            style: TextStyle(
              color: AppConstants.greyColor,
              fontSize: AppConstants.heading1
            )
          ),
          TextSpan(
            text: " Good morning!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppConstants.heading1
            )
          )
        ]
      )
    );
  }

  Row _buildAppBar() {
    return Row(
      children: [
        Ink(
          decoration: ShapeDecoration(
            color: AppConstants.secondaryColor,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: Icon(Icons.menu_sharp),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: ListTile(
            title: Text(
              "Delivery To",
              style: TextStyle(
                color: AppConstants.primaryColor,
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text(
              "Vtenh, Office"
            ),
          ),
        ),
        Ink(
          decoration: ShapeDecoration(
            color: AppConstants.orangeColor,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            color: AppConstants.whiteColor,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}