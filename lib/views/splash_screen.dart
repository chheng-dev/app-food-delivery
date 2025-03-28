import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/splash_controller.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/models/slide_model.dart';
import 'package:food_delivery/views/main_screen.dart';
import 'package:food_delivery/widgets/slide_widget.dart';
import 'package:food_delivery/widgets/text_button_widget.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SplashController(),
      child: Consumer<SplashController>(
        builder: (context, controller, child) {
          return Scaffold(
            body: Padding(
              padding: AppConstants.screenPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height:
                        MediaQuery.of(context).size.height *
                        0.6, 
                    child: PageView.builder(
                      controller: controller.pageController,
                      onPageChanged: (index) {
                        controller.onPageChanged(index);
                      },
                      itemCount: slideList.length,
                      itemBuilder:
                          (context, index) =>
                              SlideWidget(slide: slideList[index]),
                    ),
                  ),
                  // Custom Dots Indicator
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      slideList.length,
                      (index) => GestureDetector(
                        onTap: () {
                          controller.pageController.jumpToPage(
                            index,
                          ); 
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          height: 10,
                          width: controller.currentIndex == index ? 20 : 10,
                          decoration: BoxDecoration(
                            color:
                                controller.currentIndex == index
                                    ? AppConstants.primaryColor
                                    : Colors.grey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AppConstants.largeGap,
                  // ButtonWidget(
                  //   btnTtitle: "NEXT", 
                  //   onPressed: (){
                  //     if(controller.currentIndex == slideList.length - 1){
                  //        Navigator.pushReplacement(
                  //         context,
                  //         MaterialPageRoute(builder: (_) => MainScreen()),
                  //       );
                  //     } else {
                  //       controller.pageController.nextPage(
                  //         duration: Duration(milliseconds: 300), 
                  //         curve: Curves.easeIn
                  //       );
                  //     }
                  //   }
                  // ),
                  AppConstants.smallGap,
                  TextButtonWidget(
                    btnTtitle: "Skip", 
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => MainScreen()),
                      );
                    }
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
