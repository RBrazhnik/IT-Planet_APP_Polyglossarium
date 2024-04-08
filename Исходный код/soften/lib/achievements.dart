import 'package:flutter/material.dart';

class AchievementsPage extends StatelessWidget {
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
        title: Text("Достижения"),
        toolbarHeight: 100,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                width: 380,
                height: 900,
                decoration: BoxDecoration(
                  color: Color(0xffcbbbec),
                  borderRadius: BorderRadius.all(
                    Radius.circular(105),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40, bottom: 10),
                      width: 340,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xff656464).withOpacity(0.7),
                        borderRadius: BorderRadius.all(
                          Radius.circular(105),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/level1.png'),
                          Flexible(
                            child: Text(
                              'Пройдите уровень 1',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter-Regular',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40, bottom: 10),
                      width: 340,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xff656464).withOpacity(0.7),
                        borderRadius: BorderRadius.all(
                          Radius.circular(105),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/level2.png'),
                          Flexible(
                            child: Text(
                              'Пройдите уровень 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter-Regular',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40, bottom: 10),
                      width: 340,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xff656464).withOpacity(0.7),
                        borderRadius: BorderRadius.all(
                          Radius.circular(105),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/level3.png'),
                          Flexible(
                            child: Text(
                              'Пройдите уровень 3',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter-Regular',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40, bottom: 10),
                      width: 340,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xff656464).withOpacity(0.7),
                        borderRadius: BorderRadius.all(
                          Radius.circular(105),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/level4.png'),
                          Flexible(
                            child: Text(
                              'Пройдите уровень 4',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter-Regular',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40, bottom: 10),
                      width: 340,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xff656464).withOpacity(0.7),
                        borderRadius: BorderRadius.all(
                          Radius.circular(105),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/all_levels.png'),
                          Flexible(
                            child: Text(
                              'Пройдите все уровни',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter-Regular',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
