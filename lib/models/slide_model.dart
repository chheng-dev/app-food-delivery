class SlideModel {
  final String imageUrl;
  final String title;
  final String description;

  SlideModel({required this.imageUrl, required this.title, required this.description});
}

final List<SlideModel> slideList = [
  SlideModel(
    imageUrl: 'assets/images/slides/slide-1.png',
    title: 'All your favorites',
    description: 'Get all your loved foods in one once place, you just place the orer we do the rest',
  ),
  SlideModel(
    imageUrl: 'assets/images/slides/slide-2.png',
    title: 'Order from choosen chef',
    description: 'Get all your loved foods in one once place, you just place the orer we do the rest',
  ),
  SlideModel(
    imageUrl: 'assets/images/slides/slide-3.png',
    title: 'Free delivery offers',
    description: 'Get all your loved foods in one once place, you just place the orer we do the rest',
  ),
]; 
