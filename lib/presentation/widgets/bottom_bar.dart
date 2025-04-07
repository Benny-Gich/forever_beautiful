import 'package:flutter/material.dart';
import '../pages/dummy_pages/glossary.dart';
import '../pages/dummy_pages/progress.dart';
import '../pages/dummy_pages/scanner.dart';
import '../pages/dummy_pages/skin_log.dart';
import '../pages/homepage.dart';

class BottomBar extends StatelessWidget {
   BottomBar({super.key});
  int currentTab = 0;
  final List<Widget> screens = [
    Homepage(),
    Progress(),
    Scanner(),
    SkinLog(),
    Glossary(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Homepage();

  @override
  Widget build(BuildContext context) {
    return PageStorage(bucket: bucket, child: currentScreen);
  }
}
