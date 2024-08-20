import 'package:coffee_order_app/pages/drink_detail_screen.dart';
import 'package:flutter/material.dart';

class DrinkCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;
  final String detail; // Added detail field

  const DrinkCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.detail, // Added detail field
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DrinkDetailScreen(
              title: title,
              price: price,
              imageUrl: imageUrl,
              detail: detail,
            ),
          ),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: colorScheme.primary, 
            width: 0.5, 
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                child: imageUrl.isNotEmpty
                    ? Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )
                    : const Placeholder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    price,
                    style: theme.textTheme.headlineMedium?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
