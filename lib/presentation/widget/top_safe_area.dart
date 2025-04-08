import 'package:flutter/material.dart';
import 'package:forever_beautiful/presentation/theme/theme.dart';

import '../../common/product.dart';
import '../widgets/mycard.dart';

class TopSafeArea extends StatelessWidget {
  const TopSafeArea({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  'assets/pexels-jenyzest-1799464.jpg',
                ),
              ),
              title: Text(
                'Good morning, Gich 👋',
                style: context.textTheme.titleLarge,
              ),
              subtitle: Text(
                'Discover your personalized solutions!',
                style: context.textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 230,
                  height: 50,
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      label: Text(
                        'Search...',
                        style: TextStyle(color: Colors.grey),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.notifications_active_outlined,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(Icons.settings_outlined, size: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 163.5 / 249,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                MyCard(
                  product: Product(
                    imagePath: 'assets/pexels-alipazani-2681751.jpg',
                    title: 'Makeup',
                    description: 'Your Personal Makeup Guidance',
                  ),
                ),
                MyCard(
                  product: Product(
                    imagePath:
                    'assets/pexels-aog-pixels-263452684-12698450.jpg',
                    title: 'Home Remedies',
                    description: 'Your Personal Skincare Guidance',
                  ),
                ),
                MyCard(
                  product: Product(
                    imagePath: 'assets/pexels-arshamhaghani-3387577.jpg',
                    title: 'Products',
                    description: 'Your Personal Skincare Guidance',
                  ),
                ),
                MyCard(
                  product: Product(
                    imagePath: 'assets/pexels-photo-2787341.webp',
                    title: 'Anti-Aging',
                    description: 'Your Personal Skincare Guidance',
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
