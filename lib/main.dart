import 'package:flutter/material.dart';
import 'package:fluuterandfirebase/screen/home_screen.dart';
import 'package:fluuterandfirebase/widget/bottom_bar.dart';

void main() => runApp(MyApp());

//statefulWidget 사용
class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

// 내 앱 클래스 안에서 기본 설정 시작
class _MyAppState extends State<MyApp> {
  //late TabController controller;
  @override
  Widget build(BuildContext context) {
    // 기본 세팅 설정
    return MaterialApp(
      title: 'LeeChangGeun',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        //accentColor deprceated
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            // 앱 안의 주요 메인 화면 옵션이 4개 이므로 컨테이너 4개
            children: <Widget>[
              HomeScreen(),
              Container(
                child: Center(
                  child: Text('Search'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('save'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('more'),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
