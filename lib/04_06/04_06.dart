import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/04_06/Image_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  List _page = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text('KAKAO T '),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body:
      _page[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(label: '홈',
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(label: '이용서비스',
              icon: Icon(Icons.assessment)
          ),
          BottomNavigationBarItem(label: '내 정보',
              icon: Icon(Icons.account_circle)
          ),
        ],
      ),
    );
  }
}
//리스트.맵=>리턴 변환할것 투리스트
class Page1 extends StatelessWidget {
  var dummyItems = [
    'https://t1.daumcdn.net/movie/f2a2f4499800518cf7b3eb999bd83c4e1f2da89b',
    'https://img.insight.co.kr/static/2020/11/26/700/img_20201126112945_9j264452.webp',
    'https://i.ytimg.com/vi/R5sTnuMODDw/maxresdefault.jpg',
    'https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_still_images/74653/thumbnail/fa27eb55e2cf64ea2badf266a68d6694.jpg',
    'https://image.edaily.co.kr/images/photo/files/NP/S/2021/02/PS21021400045.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }
  Widget _buildTop(){
    return Column(
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageText('https://imagescdn.gettyimagesbank.com/500/201607/a10519864.jpg','택시'),
            ImageText('https://image.freepik.com/free-vector/bus-icon-design_24877-38816.jpg','버스'),
            ImageText('https://www.urbanbrush.net/web/wp-content/uploads/edd/2018/10/urbanbrush-20181015090853259417.png','오토바이'),
            ImageText('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR842FRKqBCOWShGVtJXyVy3pdBk0HrY0GRwQ&usqp=CAU','택시'),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageText('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR842FRKqBCOWShGVtJXyVy3pdBk0HrY0GRwQ&usqp=CAU','택시'),
            ImageText('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR842FRKqBCOWShGVtJXyVy3pdBk0HrY0GRwQ&usqp=CAU','택시'),
            ImageText('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR842FRKqBCOWShGVtJXyVy3pdBk0HrY0GRwQ&usqp=CAU','택시'),
            SizedBox(
              height: 80,
              width: 80,
            ),
          ],

        ),
      ],
    );




  }
  Widget _buildMiddle(){
    return CarouselSlider(
      options: CarouselOptions(
          autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
          height: 200.0,
      ),//높이 400
      items: dummyItems.map((url) { //페이지// 5개
        return Builder(
          builder: (BuildContext context) { //context를 사용하고자할때
            return Container(
                width: MediaQuery.of(context).size.width, //기기의가로세로길이
                margin: EdgeInsets.symmetric(horizontal: 8.0),//좌우여백
                decoration: BoxDecoration(
                    color: Colors.black12//배경색
                ),
            child: ClipRRect(borderRadius: BorderRadius.circular(8.0),
                   child: Image.network(
                     url,
                    fit:BoxFit.cover,
                ),
            ),
            );
          },
        );
      }).toList(),
    );
  }
  Widget _buildBottom() {
    final itmes = List.generate(10, (i) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이벤트] 이것은 공지입니다'),
      );
    });
//리스트뷰안에 리스트뷰를 넣는다면  꼭써야됨
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: itmes,
    );
  }}
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Center(
      child: Text(
        '이용서비스',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '내정보',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
// void _showDialog() {
//   showDialog(
//     context: context,
//     barrierDismissible: false,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: new Text("Alert Dialog title"),
//         content: SingleChildScrollView(child:new Text("Alert Dialog body")),
//         actions: <Widget>[
//           new TextButton(
//             child: new Text("Close"),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       );
//     },
//   );
// }