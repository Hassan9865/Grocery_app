class ProductItem {
  final String title;
  final String description;
  final String imageUrl;

  ProductItem(
      {required this.title, required this.description, required this.imageUrl});
}

final List<ProductItem> Product_Items = [
  ProductItem(
    title: 'fish',
    description: 'from sea',
    imageUrl:
        'https://previews.123rf.com/images/boarding1now/boarding1now1402/boarding1now140200039/25724391-fresh-fish-on-ice-in-a-supermarket.jpg',
  ),
  ProductItem(
    title: 'fruit',
    description: 'fresh and organic',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Culinary_fruits_front_view.jpg/500px-Culinary_fruits_front_view.jpg',
  ),
  ProductItem(
    title: 'vegetable',
    description: 'fresh and organic',
    imageUrl:
        'https://www.bhg.com/thmb/Mwd_YEkDbVg_fPsUDcWr3eZk9W0=/5645x0/filters:no_upscale():strip_icc()/difference-between-fruits-vegetables-01-5f92e7ec706b463287bcfb46985698f9.jpg',
  ),
  ProductItem(
    title: 'Beef meat',
    description: 'Organic',
    imageUrl:
        'https://www.allrecipes.com/thmb/zN81HQ86Fa2rHnkH-KUvUf6pBZE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Cuts-of-Beef-3x2-1-a557f31f8b13462185b4f2c17ab5b746.png',
  ),
  ProductItem(
    title: 'Chicken meat',
    description: 'Organic',
    imageUrl:
        'https://previews.123rf.com/images/dulsita/dulsita1307/dulsita130700068/21201847-pieces-of-raw-chicken-meat.jpg',
  ),
  ProductItem(
    title: 'meat',
    description: 'Organic',
    imageUrl:
        'https://www.allrecipes.com/thmb/zN81HQ86Fa2rHnkH-KUvUf6pBZE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Cuts-of-Beef-3x2-1-a557f31f8b13462185b4f2c17ab5b746.png',
  ),
];
