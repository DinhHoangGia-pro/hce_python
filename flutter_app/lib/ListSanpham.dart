import 'package:flutter/material.dart';
import 'Product.dart';
import 'ProductDetails.dart';

class ListSanpham extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Trangthai_ListSanpham();
  }
}

class Trangthai_ListSanpham extends State<ListSanpham> {
  List<Product> lstproducts = products;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(
          title: Text("DANH SÁCH SẢN PHẨM",
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 22,
                  fontFamily: 'Pattaya',
                  fontWeight: FontWeight.bold)),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff7f98e7)),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7,
            ),
            itemCount: lstproducts.length,
            itemBuilder: (context, index) {
              Product product = lstproducts[index];

              return Card(
                color: Color(0xfff1cee6),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      ProductDetails(product: product),
                                ));
                          },
                          child: Image.asset(
                            "assets/images/"+(product.image ?? ""),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Center(
                        child: Text(
                          product.title ?? "",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Center(
                          child: Text(
                        (product.price ?? 0.0).toStringAsFixed(2),
                        style: TextStyle(color: Colors.red),
                      )),
                      trailing: Icon(Icons.shopping_cart_outlined),
                    )
                  ],
                ),
              );
            },
          ),
        ));
  }
}
