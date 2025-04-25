import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO(ali): Replace Scaffold with appropriate layout if needed
    return Scaffold(
      // TODO(ali): Add AppBar if required by design, or use SafeArea
      appBar: AppBar(
        // TODO(ali): Remove elevation if not needed, style according to Figma
        elevation: 0,
        backgroundColor: Colors.white, // Placeholder color
        title: const _SearchBar(),
      ),
      body: const _HomeBody(),
      bottomNavigationBar: const _BottomNavBar(),
    );
  }
}

// --- Body Content ---

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    // TODO(ali): Replace with SingleChildScrollView or CustomScrollView
    return ListView(
      // TODO(ali): Adjust padding based on Figma
      padding: const EdgeInsets.symmetric(vertical: 16),
      children: const [
        _FilterTabs(),
        SizedBox(height: 16), // TODO(ali): Use Figma spacing
        _BannerCarousel(),
        SizedBox(height: 24), // TODO(ali): Use Figma spacing
        _SectionHeader(title: 'Categories'), // TODO(ali): Get title from Figma/logic
        SizedBox(height: 8), // TODO(ali): Use Figma spacing
        _CategoryList(),
        SizedBox(height: 24), // TODO(ali): Use Figma spacing
        _SectionHeader(title: 'Products'), // TODO(ali): Get title from Figma/logic
        SizedBox(height: 8), // TODO(ali): Use Figma spacing
        _ProductGrid(),
        // TODO(ali): Add more sections if needed based on Figma
      ],
    );
  }
}

// --- Sub Widgets ---

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    // TODO(ali): Implement search bar based on Figma node 1:2338
    // Use TextField with appropriate styling, padding, hint text, and icons
    return Container(
      height: 40, // From Figma 1:2338
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5), // From Figma 1:2338 fill_3CDRZL
        borderRadius: BorderRadius.circular(8), // From Figma 1:2338
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: Color(0xFF828282)), // Placeholder icon
          SizedBox(width: 12), // From Figma 1:2338 gap
          Expanded(
            child: TextField(
              // TODO(ali): Style according to style_Y0795F
              decoration: InputDecoration(
                hintText: 'Search', // From Figma 1:2342 text
                hintStyle: TextStyle(color: Color(0xFF828282)), // From Figma 1:2342 fill_LMCKU0
                border: InputBorder.none,
                isDense: true, // Keeps the height minimal
              ),
              // TODO(ali): Add controller and logic
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterTabs extends StatelessWidget {
  const _FilterTabs();

  @override
  Widget build(BuildContext context) {
    // TODO(ali): Implement filter tabs based on Figma node 1:2321 ("Pills")
    // Use ToggleButtons, TabBar, or custom Row with styled buttons
    return Padding(
      // TODO(ali): Adjust padding based on Figma
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        // TODO(ali): Use gap from Figma 1:2321 (8px)
        mainAxisAlignment: MainAxisAlignment.start, // Or spaceAround/Evenly
        children: [
          _FilterTabItem(
            label: 'Favorites', // From 1:2325
            icon: Icons.favorite_border, // Placeholder for 1:2324
            isSelected: true, // Example state
          ),
          const SizedBox(width: 8),
          _FilterTabItem(
            label: 'History', // From 1:2329
            icon: Icons.history, // Placeholder for 1:2328
          ),
          const SizedBox(width: 8),
          _FilterTabItem(
            label: 'Following', // From 1:2333
            icon: Icons.person_outline, // Placeholder for 1:2332
          ),
          // TODO(ali): Add "Orders" tab (1:2334) if required
        ],
      ),
    );
  }
}

class _FilterTabItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isSelected;

  const _FilterTabItem({
    required this.label,
    required this.icon,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    // TODO(ali): Style based on Figma nodes 1:2322, 1:2323, 1:2324, 1:2325 etc.
    // Use border (stroke_KN1DAW), padding, borderRadius, colors based on selection
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final Color textColor = isSelected ? const Color(0xFF000000)/* Adjust based on Figma */ : const Color(0xFF1A1A1A); // Example
    final Color iconColor = isSelected ? const Color(0xFF000000)/* Adjust */ : const Color(0xFF686868); // Example
    final Color borderColor = const Color(0xFFE6E6E6); // From stroke_KN1DAW

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5), // From 1:2322
      decoration: BoxDecoration(
        border: Border.all(color: borderColor), // From stroke_KN1DAW
        borderRadius: BorderRadius.circular(6), // From 1:2322
        // TODO(ali): Add background color if needed based on selection state
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: iconColor), // TODO(ali): Adjust size/color
          const SizedBox(width: 4), // From 1:2323 gap
          Text(
            label,
            // TODO(ali): Use style_2RTXBW (Inter 14 Medium)
            style: textTheme.labelLarge?.copyWith(color: textColor),
          ),
        ],
      ),
    );
  }
}

class _BannerCarousel extends StatelessWidget {
  const _BannerCarousel();

  @override
  Widget build(BuildContext context) {
    // TODO(ali): Implement banner carousel based on Figma node 1:2313
    // Use PageView.builder or carousel_slider package
    // Add pagination dots (1:2315)
    return Container(
      height: 150, // Placeholder height, adjust based on Figma aspect ratio/content
      // TODO(ali): Add margin/padding based on Figma
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[300], // Placeholder color
        borderRadius: BorderRadius.circular(8), // From 1:2313
        // TODO(ali): Add image background if needed (fill_TKI375)
      ),
      child: const Center(
        // TODO(ali): Replace with actual PageView or carousel
        child: Text('Banner Carousel Placeholder'),
        // TODO(ali): Add pagination indicator (Row of circles)
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO(ali): Style based on Figma nodes 1:2259/1:2278/1:2303
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      // TODO(ali): Use padding from Figma (e.g., 8px 16px from 1:2259)
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            // TODO(ali): Use style_7MQK7X (Inter 16 SemiBold)
            style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
          // TODO(ali): Implement chevron button (1:2261/1:2280/1:2305) if needed
          Container(
            // Placeholder for chevron
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5), // From 1:2262 fill_3CDRZL
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.chevron_right,
              size: 18,
              color: Colors.black, // From 1:2263/I1:2263;106:520 fill_QXBHU1
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList();

  @override
  Widget build(BuildContext context) {
    // TODO(ali): Implement horizontal category list based on Figma node 1:2264
    // Use ListView.builder with scrollDirection: Axis.horizontal
    return SizedBox(
      height: 100, // Placeholder height, adjust based on Figma item size (1:2265)
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // TODO(ali): Use gap from Figma 1:2264 (24px)
        // TODO(ali): Use padding from Figma 1:2264 (8px 16px)
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 4, // Placeholder count
        itemBuilder: (context, index) {
          // TODO(ali): Add spacing between items (gap: 24px)
          return Padding(
            padding: EdgeInsets.only(right: index == 3 ? 0 : 24),
            child: const _CategoryItem(),
          );
        },
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  const _CategoryItem();

  @override
  Widget build(BuildContext context) {
    // TODO(ali): Style based on Figma node 1:2265
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // TODO(ali): Use CircleAvatar or Container with BoxDecoration for image (1:2266)
        Container(
          width: 56, // Placeholder based roughly on Figma appearance
          height: 56, // Placeholder
          decoration: BoxDecoration(
            color: Colors.grey[200], // Placeholder color
            shape: BoxShape.circle, // From 1:2266 borderRadius: 38px (approx circle)
          ),
          // TODO(ali): Add Image widget here
        ),
        const SizedBox(height: 8), // From 1:2265 gap
        Text(
          'Title', // From 1:2267 text
          // TODO(ali): Use style_12NQ7T (Inter 14 Medium)
          style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
          textAlign: TextAlign.center, // From style_12NQ7T
        ),
      ],
    );
  }
}

class _ProductGrid extends StatelessWidget {
  const _ProductGrid();

  @override
  Widget build(BuildContext context) {
    // TODO(ali): Implement product grid/list based on Figma node 1:2283 or similar
    // Use GridView.builder or ListView.builder
    // Assuming a vertical list/grid for products based on common patterns
    return GridView.builder(
      shrinkWrap: true, // Important inside ListView/ScrollView
      physics: const NeverScrollableScrollPhysics(), // Delegate scrolling to parent
      // TODO(ali): Use padding from Figma (e.g., 8px 16px from 1:2283)
      padding: const EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Adjust based on design
        crossAxisSpacing: 12, // From 1:2283 gap
        mainAxisSpacing: 12, // Use same gap for consistency
        childAspectRatio: 0.7, // Adjust based on item dimensions
      ),
      itemCount: 6, // Placeholder count
      itemBuilder: (context, index) {
        return const _ProductItem();
      },
    );
  }
}

class _ProductItem extends StatelessWidget {
  const _ProductItem();

  @override
  Widget build(BuildContext context) {
    // TODO(ali): Style based on Figma node 1:2284 ("Card")
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TODO(ali): Use AspectRatio or Container with fixed height for image (1:2285)
        AspectRatio(
          aspectRatio: 1, // Square image placeholder
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200], // Placeholder color
              borderRadius: BorderRadius.circular(8), // From 1:2285
            ),
            // TODO(ali): Add Image widget here with errorBuilder
          ),
        ),
        const SizedBox(height: 8), // Approximated spacing, adjust if needed
        // TODO(ali): Use Column for Info (1:2286) with gap: 2px
        Padding(
          // Add padding if needed visually
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Brand', // From 1:2287 text
                // TODO(ali): Use style_HZLDU7 (Inter 12 Regular, 50% black)
                style: textTheme.bodySmall?.copyWith(color: Colors.black54),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 2), // From 1:2286 gap
              Text(
                'Product Name', // From 1:2288 text
                // TODO(ali): Use style_WGTJSU (Inter 14 Regular)
                style: textTheme.bodyMedium,
                maxLines: 2, // Allow for longer names
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 2), // From 1:2286 gap
              Text(
                '\$10.99', // From 1:2289 text
                // TODO(ali): Use style_GVWF1F (Inter 16 Medium)
                style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _BottomNavBar extends StatefulWidget {
  const _BottomNavBar();

  @override
  State<_BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<_BottomNavBar> {
  int _selectedIndex = 0; // Default to Home

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // TODO(ali): Implement navigation logic based on index
  }

  @override
  Widget build(BuildContext context) {
    // TODO(ali): Implement bottom nav bar based on Figma node 1:2343
    // Use NavigationBar or BottomNavigationBar
    // Style icons and labels based on Figma (1:2345 to 1:2356)
    return NavigationBar(
      // TODO(ali): Style background color, elevation (effect_SH31V2), indicator color etc.
      selectedIndex: _selectedIndex,
      onDestinationSelected: _onItemTapped,
      destinations: const <NavigationDestination>[
        NavigationDestination(
          // Based on 1:2345
          icon: Icon(Icons.home_outlined), // Placeholder for 1:2347 (home_fill)
          selectedIcon: Icon(Icons.home),
          label: 'Home', // TODO(ali): Add labels if present in design
        ),
        NavigationDestination(
          // Based on 1:2348
          icon: Icon(Icons.explore_outlined), // Placeholder for 1:2349 (discover)
          selectedIcon: Icon(Icons.explore),
          label: 'Exploring',
        ),
        NavigationDestination(
          // Based on 1:2350
          icon: Icon(Icons.shopping_cart_outlined), // Placeholder for 1:2351/1:2352
          selectedIcon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        NavigationDestination(
          // Based on 1:2353
          icon: Icon(Icons.notifications_none_outlined), // Placeholder for 1:2354 (bell)
          selectedIcon: Icon(Icons.notifications),
          label: 'Notification',
        ),
        NavigationDestination(
          // Based on 1:2355
          icon: Icon(Icons.person_outline), // Placeholder for 1:2356 (person)
          selectedIcon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}

// --- Helpers ---
// TODO(ali): Add helper functions or classes if needed

// --- Static Content ---
// TODO(ali): Define static data (e.g., placeholder image URLs) if needed

// --- Types ---
// TODO(ali): Define data classes/models if needed (e.g., Product, Category) 