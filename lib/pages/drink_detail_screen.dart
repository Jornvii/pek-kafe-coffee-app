import 'package:flutter/material.dart';

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

  void _addToCart() {
    print('Order Details:');
    print('Title: ${widget.title}');
    print('Price: ${widget.price}');
    print('Size: $selectedSize');
    print('Sugar Level: $selectedSugar%');
    // Here, you can add logic to add the item to the cart
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: colorScheme.primary,
      ),
      body: Padding(
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
                      elevation: 5, // Add shadow for depth
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
            const Spacer(),
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
                  color: colorScheme.onPrimary, // Ensure the text color contrasts with the background
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
