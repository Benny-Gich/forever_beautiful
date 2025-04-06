import 'package:flutter/material.dart';
import 'package:forever_beautiful/common/product.dart';
import 'package:forever_beautiful/presentation/widgets/bottom_nav.dart';
import 'package:forever_beautiful/presentation/widgets/mycard.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset('assets/pexels-jenyzest-1799464.jpg'),
                    ),
                  ),
                  title: Text(
                    'Good morning, Gich 👋',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Discover your personalized solutions!',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 10),
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
                      child: TextField(
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
                            border: Border(),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.notifications_active_outlined,
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border(),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(Icons.settings_outlined, size: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  physics: NeverScrollableScrollPhysics(),
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
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
