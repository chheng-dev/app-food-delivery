import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/text_form_field_widget.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      drawer: _buildDrawer(),
      appBar: _buildAppBar(),
      body: Container(
        padding: AppConstants.screenPadding,
        child: Column(
          children: [
            _buildSearchSection(),
            AppConstants.mediumGap,
            _buildDiscoverImageSection(context)
          ],
        ),
      ),
    );
  }

  Container _buildDiscoverImageSection(BuildContext context){
    List<String> images = [
      "https://as1.ftcdn.net/jpg/02/71/77/56/1000_F_271775672_yo8ZgraN2IHGbfqP2k0PsLjwvmatUNUJ.webp",
      "https://as1.ftcdn.net/v2/jpg/03/20/68/66/1000_F_320686681_Ur6vdYQgDC9WiijiVfxlRyQffxOgfeFz.jpg",
      "https://as1.ftcdn.net/v2/jpg/03/02/20/54/1000_F_302205432_GJdnxFsDfyeLTWZgoRr0htO20dP1gRen.jpg",
      "https://as1.ftcdn.net/v2/jpg/03/02/20/54/1000_F_302205432_GJdnxFsDfyeLTWZgoRr0htO20dP1gRen.jpg"
    ];

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.65,
      child: ListView(
        children: [
          Column(
            children: images.map((imageUrl) {
              return _buildDiscoverImageItem(context, imageUrl);
            }).toList(),
          ),
        ],
      ),
    );
  }

  Container _buildDiscoverImageItem(BuildContext context, String imageUrl) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.18,
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: AppConstants.margin2
      ),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        AppConstants.smallRaduis
      ),
      image: DecorationImage(
        image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Row _buildSearchSection() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: AppConstants.greyColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),

            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: AppConstants.descriptionStyle,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                prefixIcon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: AppConstants.primaryColor,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: AppConstants.greyColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.sliders,
              color: AppConstants.primaryColor,
              size: 18,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppConstants.whiteColor,
      leading: Builder(
        builder: (context) => IconButton(
          icon: FaIcon(FontAwesomeIcons.barsStaggered, size: 20),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      title: const Text('Discover'),
      centerTitle: true,
      actions: [
        IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.bell)),
      ],
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Menu', style: TextStyle(color: Colors.white)),
          ),
          ListTile(title: Text('Item 1')),
          ListTile(title: Text('Item 2')),
        ],
      ),
    );
  }
}
