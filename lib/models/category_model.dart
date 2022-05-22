

class CategoryModel {
  
  final String icon;
  final String text;

  CategoryModel(
    {
      required this.icon,
      required this.text,
    }
  );
}

List<CategoryModel> category = [
  
  CategoryModel(
    icon: 'assets/icons/bag-50.png', 
    text: 'Woman Bag'
  ),
  CategoryModel(
    icon: 'assets/icons/shoes-50.png', 
    text: 'Shoes'
  ),
  CategoryModel(
    icon: 'assets/icons/wedding-dress-50.png', 
    text: 'Dress'
  ),
  CategoryModel(
    icon: 'assets/icons/trousers-50.png', 
    text: 'Trouser'
  ),
  CategoryModel(
    icon: 'assets/icons/womens-t-shirt-50.png', 
    text: 'T-Shirt'
  ),
];