import 'package:flutter/material.dart';
import 'main.dart';
import 'homePage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool sw1 = false;
  bool sw2 = false;
  bool sw3 = false;
  bool sw4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffD8BBFE), Color(0xffAC6CFE)],
              stops: [0.0, 0.5],
            ),
          ),
        ),
        centerTitle: true,
        title: Text("Настройки"),
        toolbarHeight: 100,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 600,
          color: Color(0xffcbbbec),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 360,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffe6ddf8),
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(105),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 70),
                      child: Text(
                        'Звуковые эффекты',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Switch(
                        value: sw1,
                        onChanged: (bool value) {
                          setState(() {
                            sw1 = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 360,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffe6ddf8),
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(105),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 160),
                      child: Text(
                        'Вибрация',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Switch(
                        value: sw2,
                        onChanged: (bool value) {
                          setState(() {
                            sw2 = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 360,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffe6ddf8),
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(105),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Text(
                        'Подсказки',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Switch(
                        value: sw3,
                        onChanged: (bool value) {
                          setState(() {
                            sw3 = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 360,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffe6ddf8),
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(105),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 120),
                      child: Text(
                        'Уведомления',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Switch(
                        value: sw4,
                        onChanged: (bool value) {
                          setState(() {
                            sw4 = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Сбросить прогресс',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffe6ddf8),
                  padding:
                      EdgeInsets.only(right: 80, left: 80, top: 15, bottom: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
