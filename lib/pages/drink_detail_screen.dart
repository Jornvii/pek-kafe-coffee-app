import 'package:coffee_order_app/models/CartItem.dart';
import 'package:coffee_order_app/pages/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrinkDetailScreen extends StatefulWidget {
  final String title;
  final String price;
  final String imageUrl;
  final String detail;

  const DrinkDetailScreen({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.detail,
  });

  @override
  _DrinkDetailScreenState createState() => _DrinkDetailScreenState();
}

class _DrinkDetailScreenState extends State<DrinkDetailScreen> {
  String selectedSize = 'Medium';
  int selectedSugar = 0;
  int quantity = 1;

  void _addToCart() {
    final cart = Provider.of<CartModel>(context, listen: false);
    cart.addItem(
      CartItem(
        title: widget.title,
        imageUrl: widget.imageUrl,
        price: widget.price,
        size: selectedSize,
        sugarLevel: selectedSugar,
        quantity: quantity,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Added to cart!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final cart = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: colorScheme.primary,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ),
                  );
                },
              ),
              if (cart.itemCount > 0)
                Positioned(
                  right: 4,
                  top: 4,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    child: Text(
                      cart.itemCount.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  widget.imageUrl,
                  fit: BoxFit.cover,
                  height: 250,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                widget.title,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.price,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                widget.detail,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Select Size:',
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: ['Small', 'Medium', 'Large'].map((size) {
                  return Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedSize = size;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedSize == size
                            ? colorScheme.primary
                            : colorScheme.surfaceContainerHighest,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5,
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                      ),
                      child: Text(
                        size,
                        style: TextStyle(
                          color: selectedSize == size
                              ? colorScheme.onPrimary
                              : colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              Text(
                'Select Sugar Level (%):',
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 8),
              Slider(
                value: selectedSugar.toDouble(),
                min: 0,
                max: 100,
                divisions: 10,
                label: '$selectedSugar%',
                onChanged: (value) {
                  setState(() {
                    selectedSugar = value.toInt();
                  });
                },
                activeColor: colorScheme.primary,
                inactiveColor: colorScheme.onSurfaceVariant.withOpacity(0.5),
              ),
              const SizedBox(height: 10),
              Text(
                'Quantity:',
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (quantity > 1) quantity--;
                      });
                    },
                  ),
                  Text(
                    quantity.toString(),
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        quantity++;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _addToCart,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  backgroundColor: colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 8,
                ),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                    color: colorScheme
                        .onPrimary, 
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
