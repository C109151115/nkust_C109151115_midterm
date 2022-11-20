import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int index=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[index],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: index,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
              label: 'Alarm',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          onTap: (idx) { setState(() {
            index=idx;
          });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我出生在一個開放的家庭，父母親不會對我有過多的約束，所以我可以自由自在的學習我有興趣的東西，'
      '我其實原本對資訊這方面沒有很大的興趣，但在高中時誤大誤撞填了資訊相關的科系，'
      '這也讓我對資訊這方面有了更佳的認識，也奠定了我以後想走的路，我平常也喜歡游泳，我對戶外活動也非常感興趣，'
      '而我也經常騎車去旅遊，體驗大自然的美麗，我也希望能夠在大學期間更佳精進自己的能力，'
      '來讓我出社會可以有更多的競爭力。';

  @override
  Widget build(BuildContext context) {

    //player.play(AssetSource("Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),

          //放一張照片
          Container(
            color: Colors.redAccent,
            child: Image.asset('images/f1.jpg'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30,),

          //一列放兩個圖
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child:Text('學習歷程'),);
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大一時期")],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 學好英文'),
                    Text('2. 組合語言'),
                    Text('3. 考取證照'),
                    Text('4. 人際關係'),
                  ],
                ),
              ),
            ],),
          Row(
            children: [Text('大二時期')],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 學好英文'),
                    Text('2. 資料結構'),
                    Text('3. 專題'),
                    Text('4. 演算法'),
                  ],
                ),
              ),
            ]),
          Row(
            children: [
              Text('大三時期')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Container(
            height: 200,
            width: 200,
            child: ListView(
              children: [
                //條列式參考
                Text('1. 學好英文'),
                Text('3. 專題')
              ],
            ),
            )
          ]),
          Row(),
          Row(),

        ],
      ),);

  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child:Text('專案方向'),);
  }
}