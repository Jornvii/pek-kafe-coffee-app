const List<Map<String, String>> drinks = [
  // Coffee
  {
    'title': 'Espresso',
    'price': '\$3.50',
    'detail': 'Strong and bold espresso shot with rich flavor.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Coffee',
  },
  {
    'title': 'Latte',
    'price': '\$4.00',
    'detail': 'Smooth latte with a hint of sweetness and creamy foam.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Coffee',
  },
  {
    'title': 'Cappuccino',
    'price': '\$4.50',
    'detail': 'Classic cappuccino with a perfect balance of espresso and foam.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Coffee',
  },
  {
    'title': 'Americano',
    'price': '\$3.00',
    'detail': 'Americano with a rich, smooth taste for coffee lovers.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Coffee',
  },
  {
    'title': 'Mocha',
    'price': '\$4.75',
    'detail': 'Delicious mocha with a blend of chocolate and espresso.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Coffee',
  },
  {
    'title': 'Flat White',
    'price': '\$4.25',
    'detail': 'Rich and creamy flat white with velvety microfoam.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Coffee',
  },
  // Tea
  {
    'title': 'Green Tea',
    'price': '\$2.50',
    'detail': 'Refreshing green tea with a light and calming flavor.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Tea',
  },
  {
    'title': 'Chai Latte',
    'price': '\$3.75',
    'detail': 'Spiced chai latte with a blend of black tea and aromatic spices.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Tea',
  },
  {
    'title': 'Earl Grey',
    'price': '\$2.75',
    'detail': 'Classic Earl Grey tea with a hint of bergamot citrus.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Tea',
  },
  {
    'title': 'Matcha Latte',
    'price': '\$4.50',
    'detail': 'Creamy matcha latte with vibrant green tea flavor.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Tea',
  },
  {
    'title': 'Peppermint Tea',
    'price': '\$2.50',
    'detail': 'Cooling peppermint tea with a refreshing aroma.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Tea',
  },
  {
    'title': 'Chamomile Tea',
    'price': '\$2.50',
    'detail': 'Soothing chamomile tea perfect for relaxation.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Tea',
  },
  // Fruit Juices
  {
    'title': 'Orange Juice',
    'price': '\$3.00',
    'detail': 'Freshly squeezed orange juice with a tangy taste.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Fruit Juices',
  },
  {
    'title': 'Apple Juice',
    'price': '\$2.75',
    'detail': 'Crisp and refreshing apple juice made from fresh apples.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Fruit Juices',
  },
  {
    'title': 'Mango Juice',
    'price': '\$3.50',
    'detail': 'Sweet and tropical mango juice with a rich flavor.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Fruit Juices',
  },
  {
    'title': 'Pineapple Juice',
    'price': '\$3.25',
    'detail': 'Tangy and sweet pineapple juice, a tropical delight.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Fruit Juices',
  },
  {
    'title': 'Grape Juice',
    'price': '\$2.80',
    'detail': 'Rich and fruity grape juice with natural sweetness.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Fruit Juices',
  },
  {
    'title': 'Lemonade',
    'price': '\$2.50',
    'detail': 'Zesty lemonade with a perfect balance of sweet and sour.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Fruit Juices',
  },
  // Mix Coffee
  {
    'title': 'Caramel Macchiato',
    'price': '\$4.75',
    'detail': 'Creamy caramel macchiato with layers of espresso and milk.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Mix Coffee',
  },
  {
    'title': 'Hazelnut Latte',
    'price': '\$4.50',
    'detail': 'Smooth latte with a nutty hazelnut flavor.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Mix Coffee',
  },
  {
    'title': 'Vanilla Latte',
    'price': '\$4.50',
    'detail': 'Latte infused with the sweetness of vanilla.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Mix Coffee',
  },
  {
    'title': 'Mocha Frappe',
    'price': '\$5.00',
    'detail': 'Blended mocha frappe with chocolate and coffee.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Mix Coffee',
  },
  {
    'title': 'Irish Coffee',
    'price': '\$5.50',
    'detail': 'Rich coffee with a splash of whiskey and cream.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Mix Coffee',
  },
  {
    'title': 'Affogato',
    'price': '\$4.75',
    'detail': 'Vanilla ice cream topped with a shot of espresso.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Mix Coffee',
  },
  // Drinks
  {
    'title': 'Hot Chocolate',
    'price': '\$3.50',
    'detail': 'Rich and creamy hot chocolate with whipped cream.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Drinks',
  },
  {
    'title': 'Iced Coffee',
    'price': '\$3.75',
    'detail': 'Chilled coffee with ice, perfect for a hot day.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Drinks',
  },
  {
    'title': 'Milkshake',
    'price': '\$4.00',
    'detail': 'Creamy milkshake with your choice of flavor.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Drinks',
  },
  {
    'title': 'Smoothie',
    'price': '\$4.25',
    'detail': 'Fruit smoothie made with fresh ingredients.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Drinks',
  },
  {
    'title': 'Lemon Iced Tea',
    'price': '\$3.00',
    'detail': 'Refreshing iced tea with a hint of lemon.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Drinks',
  },
  {
    'title': 'Choco Mint Shake',
    'price': '\$4.50',
    'detail': 'Minty chocolate shake with a cool refreshing taste.',
    'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
    'category': 'Drinks',
  },
];

class CartItem {
  final String title;
  final String price;
  final String detail;
  final String imageUrl;
  final String category; // Added category field
  int quantity;

  CartItem({
    required this.title,
    required this.price,
    required this.detail,
    required this.imageUrl,
    required this.category,
    this.quantity = 1,
  });
}


// class CartItem {
//   final String title;
//   final String price;
//   final String detail;
//   final String imageUrl;
//   int quantity;
  

//   CartItem({
//     required this.title,
//     required this.price,
//     required this.detail,
//     required this.imageUrl,
//     this.quantity = 1, required String category,
//   });
// }

// const List<Map<String, String>> drinks = [
//   {
//     'title': 'Espresso',
//     'price': '\$3.50',
//     'detail': 'Strong and bold espresso shot with rich flavor.',
//     'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
//   },
//   {
//     'title': 'Latte',
//     'price': '\$4.00',
//     'detail': 'Smooth latte with a hint of sweetness and creamy foam.',
//     'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
//   },
//   {
//     'title': 'Cappuccino',
//     'price': '\$4.50',
//     'detail': 'Classic cappuccino with a perfect balance of espresso and foam.',
//     'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
//   },
//   {
//     'title': 'Americano',
//     'price': '\$3.00',
//     'detail': 'Americano with a rich, smooth taste for coffee lovers.',
//     'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
//   },
//   {
//     'title': 'Mocha',
//     'price': '\$4.75',
//     'detail': 'Delicious mocha with a blend of chocolate and espresso.',
//     'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBTFlfnurMl_XFbr5nFWtkwh3AxTrB8vVjA&s',
//   },
// ];
