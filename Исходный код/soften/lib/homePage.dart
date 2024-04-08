import 'package:flutter/material.dart';
import 'main.dart';
import 'achievements.dart';
import 'settings.dart';
import 'levels/level3.dart';

class HomePage extends StatelessWidget {
  int isCompleteLevel1 = 0;
  int isCompleteLevel2 = 0;
  int isCompleteLevel3 = 0;
  int isCompleteLevel4 = 0;
  int _completedLevels = 0;
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
        title: Text("Уровни"),
        toolbarHeight: 100,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    width: 370,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Color(0xff84B0ED),
                      borderRadius: BorderRadius.all(
                        Radius.circular(45),
                      ),
                    ),
                    margin: const EdgeInsets.only(top: 20),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '1 Уровень',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontFamily: 'Inter-Regular'),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Animals',
                                style: TextStyle(
                                  fontFamily: 'Jokerman-Regular',
                                  fontSize: 28,
                                  color: Color(0xffFFB800),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Не пройден',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Inter-Regular'),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(45),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Image.asset('assets/images/lion.png')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 370,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Color(0xffAAE9F2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(45),
                      ),
                    ),
                    margin: const EdgeInsets.only(top: 20),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '2 Уровень',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontFamily: 'Inter-Regular'),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Winter',
                                style: TextStyle(
                                  fontFamily: 'Jokerman-Regular',
                                  fontSize: 28,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Не пройден',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Inter-Regular'),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(45),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Image.asset('assets/images/winter.png')
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      isCompleteLevel3 = 1;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Level3(),
                        ),
                      );
                    },
                    child: Container(
                      width: 370,
                      height: 160,
                      margin: const EdgeInsets.only(bottom: 20, top: 20),
                      decoration: const BoxDecoration(
                        color: Color(0xff93B09E),
                        borderRadius: BorderRadius.all(
                          Radius.circular(45),
                        ),
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  '3 Уровень',
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontFamily: 'Inter-Regular'),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Cloth',
                                  style: TextStyle(
                                    fontFamily: 'Jokerman-Regular',
                                    fontSize: 28,
                                    color: Color(0xffD6490F),
                                  ),
                                ),
                                SizedBox(height: 10),
                                if (isCompleteLevel1 == 0)
                                  Container(
                                    decoration: BoxDecoration(
                                      color: isCompleteLevel3 == 0
                                          ? Colors.greenAccent
                                          : Colors.redAccent,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(45),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        isCompleteLevel3 == 0
                                            ? 'Пройден'
                                            : 'Не пройден',
                                        style: TextStyle(
                                            fontFamily: 'Inter-Regular',
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/cloth.png',
                              scale: 2.5,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 370,
                    height: 160,
                    margin: const EdgeInsets.only(bottom: 20, top: 20),
                    decoration: const BoxDecoration(
                      color: Color(0xffB6F7C8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(45),
                      ),
                    ),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '4 Уровень',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontFamily: 'Inter-Regular'),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Nature',
                                style: TextStyle(
                                  fontFamily: 'Jokerman-Regular',
                                  fontSize: 28,
                                  color: Color(0xff67D60F),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Не пройден',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Inter-Regular'),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(45),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/nature.png',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
