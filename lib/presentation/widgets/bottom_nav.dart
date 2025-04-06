import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 5,
      childAspectRatio: 1.2,
      children: [
        navItems(Icons.home, 'Home'),
        navItems(Icons.trending_up_outlined, 'Progress'),
        floatingbutton(Icons.qr_code_scanner_outlined, 'Scan'),
        navItems(Icons.folder_outlined, 'Skin Log'),
        navItems(Icons.menu_book_outlined, 'Glossary'),
      ],
    );
  }

  Widget navItems(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 30, color: Colors.blue),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 10)),
      ],
    );
  }

  Widget floatingbutton(IconData icon, String label) {
    return FloatingActionButton(
      elevation: 1,
      shape: CircleBorder(),
      backgroundColor: Colors.blue,
      onPressed: () {},
      tooltip: label,
      child: Icon(icon),
    );
  }
}
