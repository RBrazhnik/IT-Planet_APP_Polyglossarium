import 'package:flutter/material.dart';
import 'achievements.dart';
import 'settings.dart';
import 'homePage.dart';
import 'levels/level1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SoftEn',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Inter-Regular',
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title = 'Уровни';

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _completedLevels = 0;
  var _selectedIndex = 0;
  static final List<Widget> _pages = [
    HomePage(),
    AchievementsPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: IndexedStack(
            index: _selectedIndex,
            children: _pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Color(0xffF3D9FF),
              items: [
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 70,
                      width: 70,
                      child: Image.asset('assets/images/home.png'),
                    ),
                    label: 'home'),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 70,
                      width: 70,
                      child: Image.asset('assets/images/stars.png'),
                    ),
                    label: 'achievements'),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 70,
                      width: 70,
                      child: Image.asset('assets/images/settings.png'),
                    ),
                    label: 'settings'),
              ],
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              }),
        );
      },
    );
  }
}
