import 'package:coffee_order_app/models/drinks.dart';
import 'package:coffee_order_app/widgets/DrinkCard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'Coffee';
  String searchQuery = '';

  List<Map<String, String>> get filteredDrinks {
    return drinks
        .where((drink) =>
            drink['title']!.toLowerCase().contains(searchQuery.toLowerCase()))
        .where((drink) =>
            selectedCategory == 'All' || drink['category'] == selectedCategory)
        .toList();
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
                padding: const EdgeInsets.only(left: 6.0, top: 10.0),
                child: Text(
                  'Pek Kafé',
                  style: textTheme.headlineSmall?.copyWith(
                    fontSize: 14,
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
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: colorScheme.surface,
                  prefixIcon: Icon(
                    Icons.search,
                    color: colorScheme.onSurface.withOpacity(0.6),
                  ),
                  hintText: 'Search...',
                  hintStyle: textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurface.withOpacity(0.6),
                    fontStyle: FontStyle.italic,
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
                      color: colorScheme.onSurface.withOpacity(0.2),
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
                style: textTheme.bodyLarge?.copyWith(
                  color: colorScheme.onSurface,
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
                      title: 'All',
                      isSelected: selectedCategory == 'All',
                      onTap: () => setState(() => selectedCategory = 'All'),
                    ),
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
                      onTap: () =>
                          setState(() => selectedCategory = 'Fruit Juices'),
                    ),
                    CoffeeCategory(
                      title: 'Mix Coffee',
                      isSelected: selectedCategory == 'Mix Coffee',
                      onTap: () =>
                          setState(() => selectedCategory = 'Mix Coffee'),
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
                      imageUrl: drink['imageUrl']!,
                      detail: drink['detail']!,
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
            color: isSelected ? colorScheme.primary : colorScheme.surface,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: isSelected
                  ? colorScheme.primary
                  : colorScheme.onSurface.withOpacity(0.2),
              width: 1.5,
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: isSelected
                  ? colorScheme.onPrimary
                  : colorScheme.onSurfaceVariant,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
