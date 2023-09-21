class Item {
  final String title;
  final String description;
  final String imageUrl;
  final String price;

  Item(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.price});
}

final List<Item> items = [
  Item(
    title: 'fish',
    description: 'from sea',
    price: "Rs 30",
    imageUrl:
        'https://previews.123rf.com/images/boarding1now/boarding1now1402/boarding1now140200039/25724391-fresh-fish-on-ice-in-a-supermarket.jpg',
  ),
  Item(
    title: 'fruit',
    description: 'fresh and organic',
    price: "Rs 72",
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Culinary_fruits_front_view.jpg/500px-Culinary_fruits_front_view.jpg',
  ),
  Item(
    title: 'vegetable',
    description: 'fresh and organic',
    price: "Rs 93",
    imageUrl:
        'https://www.bhg.com/thmb/Mwd_YEkDbVg_fPsUDcWr3eZk9W0=/5645x0/filters:no_upscale():strip_icc()/difference-between-fruits-vegetables-01-5f92e7ec706b463287bcfb46985698f9.jpg',
  ),
  Item(
    title: 'Beef',
    description: 'Organic',
    price: "Rs 92",
    imageUrl:
        'https://www.allrecipes.com/thmb/zN81HQ86Fa2rHnkH-KUvUf6pBZE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Cuts-of-Beef-3x2-1-a557f31f8b13462185b4f2c17ab5b746.png',
  ),
  Item(
    title: 'Chicken',
    description: 'Organic',
    price: "Rs 26",
    imageUrl:
        'https://previews.123rf.com/images/dulsita/dulsita1307/dulsita130700068/21201847-pieces-of-raw-chicken-meat.jpg',
  ),
  Item(
    title: 'meat',
    description: 'Organic',
    price: "Rs 82",
    imageUrl:
        'https://www.allrecipes.com/thmb/zN81HQ86Fa2rHnkH-KUvUf6pBZE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Cuts-of-Beef-3x2-1-a557f31f8b13462185b4f2c17ab5b746.png',
  ),
];
