import 'package:coffee_order_app/models/drinks.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'Coffee';

  List<Map<String, String>> get filteredDrinks {
    return drinks.where((drink) => drink['category'] == selectedCategory).toList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "https://cdn.bio.link/uploads/profile_pictures/2021-10-05/jXxjMGd03YlgKnrAU6zDQlV78F6tAo1o.png",
                width: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  'Pek Kafé',
                  style: textTheme.headlineSmall?.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Welcome to Coffee Order!',
                style: textTheme.titleLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: colorScheme.surfaceContainerHighest,
                  prefixIcon: Icon(
                    Icons.search,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                    color: colorScheme.onSurfaceVariant.withOpacity(0.6),
                    fontStyle: FontStyle.italic,
                    fontSize: 16.0,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: colorScheme.onSurfaceVariant.withOpacity(0.2),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: colorScheme.primary,
                      width: 2.0,
                    ),
                  ),
                ),
                style: TextStyle(
                  color: colorScheme.onSurface,
                  fontSize: 16.0,
                ),
                cursorColor: colorScheme.primary,
                autofocus: true,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CoffeeCategory(
                      title: 'Coffee',
                      isSelected: selectedCategory == 'Coffee',
                      onTap: () => setState(() => selectedCategory = 'Coffee'),
                    ),
                    CoffeeCategory(
                      title: 'Tea',
                      isSelected: selectedCategory == 'Tea',
                      onTap: () => setState(() => selectedCategory = 'Tea'),
                    ),
                    CoffeeCategory(
                      title: 'Fruit Juices',
                      isSelected: selectedCategory == 'Fruit Juices',
                      onTap: () => setState(() => selectedCategory = 'Fruit Juices'),
                    ),
                    CoffeeCategory(
                      title: 'Mix Coffee',
                      isSelected: selectedCategory == 'Mix Coffee',
                      onTap: () => setState(() => selectedCategory = 'Mix Coffee'),
                    ),
                    CoffeeCategory(
                      title: 'Drinks',
                      isSelected: selectedCategory == 'Drinks',
                      onTap: () => setState(() => selectedCategory = 'Drinks'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: filteredDrinks.length,
                  itemBuilder: (ctx, index) {
                    final drink = filteredDrinks[index];
                    return DrinkCard(
                      title: drink['title']!,
                      price: drink['price']!,
                      // detail: drink['detail']!,
                      imageUrl: drink['imageUrl']!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CoffeeCategory extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const CoffeeCategory({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected ? colorScheme.primary : colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: isSelected ? colorScheme.primary : colorScheme.onSurfaceVariant.withOpacity(0.2),
              width: 1.5,
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? colorScheme.onPrimary : colorScheme.onSurfaceVariant,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class DrinkCard extends StatelessWidget {
  final String title;
  final String price;
  // final String detail;
  final String imageUrl;

  const DrinkCard({
    super.key,
    required this.title,
    required this.price,
    // required this.detail,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              price,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          //   child: Text(
          //     detail,
          //     style: TextStyle(
          //       fontSize: 12,
          //       color: Colors.grey[800],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
