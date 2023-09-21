class homeItem {
  final String title;
  final String description;
  final String imageUrl;
  final String price;

  homeItem(
      {required this.title,
      required this.description,
      required this.price,
      required this.imageUrl});
}

final List<homeItem> home_item = [
  homeItem(
    title: 'fruit',
    description: 'fresh and organic',
    price: "Rs 30",
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Culinary_fruits_front_view.jpg/500px-Culinary_fruits_front_view.jpg',
  ),
  homeItem(
    title: 'fresh lemon',
    description: 'organic',
    price: "Rs 49",
    imageUrl: 'https://m.media-amazon.com/images/I/61AigOH-ptL._AC_SX385_.jpg',
  ),
  homeItem(
    title: 'Green Tea',
    description: 'Organic',
    price: "Rs 83",
    imageUrl:
        'https://www.tazaonline.com/wp-content/uploads/2022/04/Lipton-Green-Tea-Pure-Light-25-Bags.jpg',
  ),
  homeItem(
    title: 'fish',
    description: 'from sea',
    price: "Rs 82",
    imageUrl:
        'https://previews.123rf.com/images/boarding1now/boarding1now1402/boarding1now140200039/25724391-fresh-fish-on-ice-in-a-supermarket.jpg',
  ),
  homeItem(
    title: 'Chicken meat ',
    description: 'Organic',
    price: "Rs 99",
    imageUrl:
        'https://previews.123rf.com/images/dulsita/dulsita1307/dulsita130700068/21201847-pieces-of-raw-chicken-meat.jpg',
  ),
  homeItem(
    title: 'meat',
    description: 'Organic',
    price: "Rs 66",
    imageUrl:
        'https://www.allrecipes.com/thmb/zN81HQ86Fa2rHnkH-KUvUf6pBZE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Cuts-of-Beef-3x2-1-a557f31f8b13462185b4f2c17ab5b746.png',
  ),
];
