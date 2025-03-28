
import 'package:food_delivery/models/categoy.dart';

class CategoryController {
  List<CategoyModel> getCategories() {
    return [
      CategoyModel(title: "All", image: "assets/images/fire.png"),
      CategoyModel(title: "Burger", image: "assets/images/burger.jpg"),
      CategoyModel(title: "Pork", image: "assets/images/pork.jpg"),
      CategoyModel(title: "Pizza", image: "assets/images/pizza.jpg"),
      CategoyModel(title: "Salad", image: "assets/images/salad.jpg"),
    ];
  }
}
