import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text('Study to Container'),
    ),
    body: CustomContainer(),
  )));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100, //double.infinity 하면 좌우 꽉 채움
        height: 100, //double.infinity 하면 상하 꽉 채움
        // color: Colors.deepOrange.shade200, //Color(heximal),
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        // margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        decoration: BoxDecoration( //외부에 color 옵션이 있으면 충돌일어나서 error
          color: Color(0xFF85D07B),
          border: Border.all(color: Colors.red, width: 5, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20), //150주면 구 형태로 전환
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.3), offset: Offset(6, 6),
                      blurRadius: 10, spreadRadius: 5),
            BoxShadow(color: Colors.blue.withOpacity(0.3), offset: Offset(-6, -6),
                blurRadius: 10, spreadRadius: 5),
          ],
        ),
        child: Center(child: Container(
            color: Colors.cyanAccent,
            child: Text('Hello Container'),
          ),
        ),
      ),
    );
  }
}
