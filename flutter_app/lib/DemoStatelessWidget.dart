import 'package:flutter/material.dart';

class DemoStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(
          "Demo Stateless Widget",
          style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 22,
              fontFamily: 'Pattaya',
              fontWeight: FontWeight.bold),
        ),
      )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xff70b6ef),
              borderRadius: BorderRadius.circular(20)),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Text(
                  "Đây là dòng văn bản",
                  style: TextStyle(color: Color(0xff482e57), fontSize: 20),
                ),
              ),
              Image.network(
                  "https://hoanghamobile.com/tin-tuc/wp-content/webp-express/webp-images/uploads/2024/04/anh-que-huong-31-768x432.jpg.webp"),
              Image.network(
                  "https://hoanghamobile.com/tin-tuc/wp-content/webp-express/webp-images/uploads/2024/04/anh-que-huong-29-768x432.jpg.webp"),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green,
                  ),
                  child: Image.network(
                    "https://hoanghamobile.com/tin-tuc/wp-content/webp-express/webp-images/uploads/2024/04/anh-que-huong-32-768x432.jpg.webp",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
