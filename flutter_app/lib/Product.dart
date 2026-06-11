class Product {
  int id = 0;
  String? title = "", description = "", category = "", image = "";
  double price = 0;
  int? size = 0;

  Product(
      {this.id = 0,
      this.title,
      this.description,
      this.category,
      this.image,
      this.price = 0,
      this.size});
}

//-------------------
List<Product> products = [
  Product(
    title: "Office Code",
    id: 1,
    price: 234,
    size: 12,
    description: dummyText,
    image: "anh1.jpg",
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 234,
    size: 8,
    description: dummyText,
    image:
        "anh2.jpg",
  ),
  Product(
    id: 3,
    title: "Hang Top",
    price: 234,
    size: 10,
    description: dummyText,
    image: "anh3.jpg",
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 234,
    size: 11,
    description: dummyText,
    image: "anh4.jpg",
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "anh5.webp",
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "anh6.jpg",
  ),
  Product(
    id: 7,
    title: "Túi vải bố",
    price: 234,
    size: 12,
    description: dummyText,
    image: "anh7.webp",
  ),
  Product(
    id: 8,
    title: "Túi vải",
    price: 234,
    size: 12,
    description: dummyText,
    image: "anh8.jpg",
  ),
  Product(
    id: 9,
    title: "Túi đeo nữ Venu",
    price: 234,
    size: 12,
    description: dummyText,
    image: "anh9.jpeg",
  ),
  Product(
    id: 10,
    title: "Túi đeo nữ Xì trum",
    price: 234,
    size: 12,
    description: dummyText,
    image: "anh10.webp",
  ),
  Product(
    id: 11,
    title: "Túi đeo nữ Việt Tiến",
    price: 234,
    size: 12,
    description: dummyText,
    image: "anh11.webp",
  ),
  Product(
    id: 12,
    title: "Túi đeo nữ Coop",
    price: 234,
    size: 12,
    description: dummyText,
    image: "anh12.jpg",
  ),
];

String dummyText = "Đây là sản phẩm tuyệt vời. Không thể tin được";
