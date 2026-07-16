import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('K-Pop News'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 6,
        itemBuilder: (context, index) {
          return _buildNewsCard(index);
        },
      ),
    );
  }

  Widget _buildNewsCard(int index) {
    final headlines = [
      'BTS Announces 2025 World Tour Dates',
      'BLACKPINK Lisa Launches Solo Comeback',
      'New Girl Group ILLIT Debuts with Record-Breaking Views',
      'Stray Kids Win Best K-Pop at Billboard Music Awards',
      'HYBE and SM Entertainment Announce Collaboration',
      'aespa\'s Karina Named Global Ambassador for Luxury Brand',
    ];
    final summaries = [
      'The highly anticipated tour will visit 20 cities across Asia, North America, and Europe starting March 2025.',
      'The Thai rapper releases her second solo single with a bold new concept and music video.',
      'HYBE\'s newest girl group breaks 10 million views in 24 hours with debut track "Magnetic".',
      'The self-producing group takes home their third consecutive win in the category.',
      'Two of K-pop\'s biggest companies join forces for a joint album featuring artists from both labels.',
      'The aespa leader becomes the face of a major French fashion house\'s Spring 2025 campaign.',
    ];
    final categories = [
      'Tour',
      'Solo',
      'Debut',
      'Awards',
      'Industry',
      'Fashion',
    ];
    final categoryColors = [
      const Color(0xFF6C5CE7),
      const Color(0xFFFF6B6B),
      const Color(0xFF00D2D3),
      const Color(0xFFFFA502),
      const Color(0xFF6C5CE7),
      const Color(0xFFFF6B6B),
    ];
    final times = ['2h ago', '5h ago', '8h ago', '12h ago', '1d ago', '2d ago'];
    final images = [
      'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?w=400',
      'https://images.unsplash.com/photo-1493225255756-d9584f8606e9?w=400',
      'https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?w=400',
      'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?w=400',
      'https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?w=400',
      'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?w=400',
    ];

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              images[index],
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: categoryColors[index].withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          fontSize: 11,
                          color: categoryColors[index],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.access_time,
                      size: 12,
                      color: AppTheme.textLight,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      times[index],
                      style: const TextStyle(
                        fontSize: 11,
                        color: AppTheme.textLight,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  headlines[index],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  summaries[index],
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppTheme.textLight,
                    height: 1.5,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        backgroundColor: AppTheme.veryLightPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'Read More',
                            style: TextStyle(
                              color: AppTheme.primaryPurple,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            Icons.arrow_forward,
                            size: 14,
                            color: AppTheme.primaryPurple,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
