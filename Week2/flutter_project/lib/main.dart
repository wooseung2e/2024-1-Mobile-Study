import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key?key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(                                     //Container 4개를 담을 Row와 Text위젯을 세로정렬
          mainAxisAlignment: MainAxisAlignment.center,    //중앙 정렬
        children: [
          Row(                                            //세로로 Container 2개를 담고있는 Column 2개를 가로 정렬
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10.0),   //Column 두개 사이를 벌리기 위해 오른쪽에만
              child: Column(                            //Padding에 들어가는 Column은 왼쪽에 위치할 한개뿐이므로 오른쪽만 padding하면 됨
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),//Container 두개를 떨어뜨리기 위한 padding
                    child: Container(                        //역시 Container 하나만 들어있으므로 바닥만 padding
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,  //Color는 BoxDecoration 안에 있어야 충돌이 안 일어남
                        borderRadius:BorderRadius.all(Radius.circular(8),), //Container 곡률
                      )
                    ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius:BorderRadius.all(Radius.circular(8),),
                        )
                    ),
                  ]
              ),
            ),
                Column(            //오른쪽 두개의 Container를 담을 Column
                  mainAxisAlignment :MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      width: 100,
                      height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:BorderRadius.all(Radius.circular(8),),
                        )
                    ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius:BorderRadius.all(Radius.circular(8),),
                        )
                    ),
                  ]
              ),
            ],
        ),
          Padding(         //Container가 들어있는 Row와 Text위젯을 떨어뜨리기 위한 padding
            padding: EdgeInsets.only(top: 20.0),//Text위젯에 padding 할 것이므로, 위쪽에 padding
            child: DefaultTextStyle(   //DefaultTextStyle : Text에 노란 밑줄을 없애기 위함
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
              child: Text('얼음감자')
          ),
        ),
      ]
        ),
    );

  }
}
