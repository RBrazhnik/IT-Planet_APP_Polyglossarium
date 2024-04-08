import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Achievement Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Achievement Store'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _coins = 1000;

  void _purchaseAchievement(int price) {
    if (price <= _coins) {
      setState(() {
        _coins -= price;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Purchased achievement for $price coins!'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Insufficient coins!'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: achievements.length,
        itemBuilder: (context, index) {
          final achievement = achievements[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: achievement.color,
                child: Text(achievement.icon),
              ),
              title: Text(achievement.name),
              subtitle: Text('\$${achievement.price}'),
              trailing: ElevatedButton(
                onPressed: () => _purchaseAchievement(achievement.price),
                child: Text('Buy'),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Coins: $_coins'),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}

class Achievement {
  final String name;
  final String icon;
  final int price;
  final Color color;

  Achievement({
    required this.name,
    required this.icon,
    required this.price,
    required this.color,
  });
}

final achievements = [
  Achievement(
    name: 'Achievement 1',
    icon: 'A1',
    price: 100,
    color: Colors.blue,
  ),
  Achievement(
    name: 'Achievement 2',
    icon: 'A2',
    price: 200,
    color: Colors.green,
  ),
  Achievement(
    name: 'Achievement 3',
    icon: 'A3',
    price: 300,
    color: Colors.red,
  ),
];
