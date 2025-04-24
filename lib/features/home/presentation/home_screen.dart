import 'package:flutter/material.dart';
import '../../../core/widgets/section_title.dart';
import '../data/mock_data.dart';
import 'widgets/banner_carousel.dart';
import 'widgets/bottom_nav_bar.dart';
import 'widgets/category_card.dart';
import 'widgets/pill_button.dart';
import 'widgets/product_card.dart';
import 'widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentNavIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _currentNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const CustomSearchBar(),
              const SizedBox(height: 16),
              _buildPillButtons(),
              const SizedBox(height: 16),
              BannerCarousel(bannerImages: mockBannerImages),
              const SizedBox(height: 24),
              SectionTitle(
                title: 'Categories',
                onTap: () {
                  // Navigate to categories page
                },
              ),
              _buildCategoryCarousel(),
              const SizedBox(height: 24),
              SectionTitle(
                title: 'Featured Products',
                onTap: () {
                  // Navigate to featured products page
                },
              ),
              _buildProductCarousel(),
              const SizedBox(height: 24),
              SectionTitle(
                title: 'New Arrivals',
                onTap: () {
                  // Navigate to new arrivals page
                },
              ),
              _buildImageCarousel(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentNavIndex,
        onTap: _onNavItemTapped,
      ),
    );
  }

  Widget _buildPillButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          PillButton(
            label: 'Favorites',
            iconPath: 'assets/icons/like.svg',
            onTap: () {},
            isActive: true,
          ),
          const SizedBox(width: 8),
          PillButton(
            label: 'History',
            iconPath: 'assets/icons/watch_history.svg',
            onTap: () {},
          ),
          const SizedBox(width: 8),
          PillButton(
            label: 'Following',
            iconPath: 'assets/icons/person_tick.svg',
            onTap: () {},
          ),
          const SizedBox(width: 8),
          PillButton(
            label: 'Orders',
            iconPath: 'assets/icons/lines_horizontal.svg',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCarousel() {
    return SizedBox(
      height: 116,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: mockCategories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 24),
        itemBuilder: (context, index) {
          return CategoryCard(
            category: mockCategories[index],
            onTap: () {
              // Navigate to category detail
            },
          );
        },
      ),
    );
  }

  Widget _buildProductCarousel() {
    return SizedBox(
      height: 240,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: mockProducts.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return ProductCard(
            product: mockProducts[index],
            onTap: () {
              // Navigate to product detail
            },
          );
        },
      ),
    );
  }

  Widget _buildImageCarousel() {
    return SizedBox(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 4,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/product${index % 3 + 1}.png',
              width: 140,
              height: 160,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
} 