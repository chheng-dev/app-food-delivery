import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/home/women_tab_wdiget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _activeIndex = 0; 

  final List<Map<String, dynamic>> tabIcons = [
    {"icon": FontAwesomeIcons.venus, "label": "Female"},
    {"icon": FontAwesomeIcons.mars, "label": "Male"},
    {"icon": FontAwesomeIcons.glasses, "label": "Accessories"},
    {"icon": FontAwesomeIcons.shirt, "label": "Clothing"},
  ];

  // List of widgets to show for each tab
  final List<Widget> tabContents = [
    WomenTabWdiget(),
    Center(
      child: Text(
        "Male Items",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        "Accessories",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        "Clothing",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: AppConstants.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: AppConstants.screenPadding,
          child: Column(
            children: [
              AppConstants.mediumGap,
              _buildSectionTopIcon(),
              SizedBox(height: 20),
              Expanded(child: _buildTabContent()), 
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTopIcon() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
              tabIcons.asMap().entries.map((entry) {
                int index = entry.key;
                var tab = entry.value;
                bool isActive = _activeIndex == index;
                var label = entry.value['label'];

                return Column(
                  children: [
                    _buildIconButton(
                      icon: tab["icon"],
                      isActive: isActive,
                      label: label,
                      onPressed: () {
                        setState(() {
                          _activeIndex = index;
                        });
                      },
                    ),
                  ],
                );
              }).toList(),
        ),
      ],
    );
  }

  Widget _buildTabContent() {
    return tabContents[_activeIndex]; 
  }

  Widget _buildIconButton({
    required IconData icon,
    required VoidCallback onPressed,
    bool isActive = false,
    required String label,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color:
                  isActive
                      ? AppConstants.primaryColor
                      : AppConstants.secondaryColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: FaIcon(
                icon,
                color:
                    isActive
                        ? AppConstants.secondaryColor
                        : AppConstants.blackColor.withOpacity(0.5),
                size: 22,
              ),
            ),
          ),
          AppConstants.smallGap,
          Text(label)
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      actionsPadding: AppConstants.screenPadding,
      backgroundColor: AppConstants.whiteColor,
      leading: IconButton(
        onPressed: () {},
        icon: FaIcon(FontAwesomeIcons.barsStaggered, size: 20),
      ),
      title: Text("My Shop"),
      actions: [
        IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.bell)),
      ],
    );
  }
}
