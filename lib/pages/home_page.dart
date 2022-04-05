import 'package:centric_support_machine_test/pages/home_section_page.dart';
import 'package:centric_support_machine_test/pages/message_section_page.dart';
import 'package:centric_support_machine_test/pages/person_section_page.dart';
import 'package:centric_support_machine_test/pages/story_section_page.dart';
import 'package:centric_support_machine_test/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  HomePage({Key? key}) : super(key: key);
  final _pages = [
    HomeSectionPage(),
    MessageSectionPage(),
    StorySectionPage(),
    PersonSectionPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (BuildContext ctx, int index, Widget? _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
