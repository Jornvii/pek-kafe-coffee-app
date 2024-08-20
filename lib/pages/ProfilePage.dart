import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Top Bar with Profile Title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back,
                          color: colorScheme.onBackground),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Text(
                      "Profile",
                      style: textTheme.headlineSmall?.copyWith(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onBackground,
                      ),
                    ),
                    Icon(Icons.more_vert, color: colorScheme.onSurface),
                  ],
                ),
                const SizedBox(height: 30),

                Center(
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        child: const CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(
                            'assets/images/pfpf.JPG',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: colorScheme.primary,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Name
                Center(
                  child: Text(
                    'Jii Vorn Zin',
                    style: textTheme.headlineMedium?.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onBackground,
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                // Description
                Center(
                  child: Text(
                    'Eater\n Sleeper and  Coder ',
                    textAlign: TextAlign.center,
                    style: textTheme.bodyLarge?.copyWith(
                      fontSize: 16,
                      height: 1.5,
                      color: colorScheme.onBackground.withOpacity(0.7),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Recent Orders (Title)
                Text(
                  "Recent Orders",
                  style: textTheme.titleLarge?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onBackground,
                  ),
                ),
                const SizedBox(height: 10),

                // Recent Orders List
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: colorScheme.onSurface.withOpacity(0.2),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      _buildOrderItem(
                        'Cappuccino',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWBJz3yXslUdTK_M6JhC_-cAnpp8muuh-AAYv4S-fyKA_wSH5a',
                        '\$4.99',
                        colorScheme,
                      ),
                      _buildOrderItem(
                        'Latte',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWBJz3yXslUdTK_M6JhC_-cAnpp8muuh-AAYv4S-fyKA_wSH5a',
                        '\$3.99',
                        colorScheme,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("See all")],
                  ),
                ),
                const SizedBox(height: 30),

                // Edit Button
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const EditProfilePage()),
                      );
                    },
                    icon: Icon(Icons.edit, color: colorScheme.onPrimary),
                    label: Text(
                      'Edit Profile',
                      style: TextStyle(color: colorScheme.onPrimary),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme.primary,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 14),
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper function to build order items
  Widget _buildOrderItem(
      String title, String imageUrl, String price, ColorScheme colorScheme) {
    return Card(
      color: colorScheme.surface,
      margin: const EdgeInsets.symmetric(
          vertical: 4.0), // Adjust margin for spacing
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child:
              Image.network(imageUrl, width: 50, height: 50, fit: BoxFit.cover),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          price,
          style: TextStyle(
            color: colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: const Center(
        child: Text('Edit Profile Page'),
      ),
    );
  }
}
