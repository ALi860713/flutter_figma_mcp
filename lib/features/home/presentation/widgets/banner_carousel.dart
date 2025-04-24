import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerCarousel extends StatefulWidget {
  final List<String> bannerImages;

  const BannerCarousel({
    super.key,
    required this.bannerImages,
  });

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 140,
                viewportFraction: 1.0,
                autoPlay: true,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: widget.bannerImages.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return _BannerItem(imageUrl: imageUrl);
                  },
                );
              }).toList(),
            ),
          ),
        ),
        const SizedBox(height: 12),
        _PaginationIndicator(
          count: widget.bannerImages.length,
          activeIndex: _currentIndex,
        ),
      ],
    );
  }
}

class _BannerItem extends StatelessWidget {
  final String imageUrl;

  const _BannerItem({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageUrl,
          width: double.infinity,
          height: 140,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Container(
            width: double.infinity,
            height: 140,
            color: Colors.grey[200],
            child: const Icon(Icons.error),
          ),
        ),
        Positioned(
          left: 16,
          bottom: 16,
          child: Text(
            'Banner title',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ],
    );
  }
}

class _PaginationIndicator extends StatelessWidget {
  final int count;
  final int activeIndex;

  const _PaginationIndicator({
    required this.count,
    required this.activeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return Container(
          width: 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 2.5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: activeIndex == index
                ? const Color(0xCC000000) // 80% opacity
                : const Color(0x33000000), // 20% opacity
          ),
        );
      }),
    );
  }
} 