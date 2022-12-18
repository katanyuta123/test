void main() {
  // fetch from database
  var n = 'Abc';
  var p = 100;
  //สร้างออบเจ็ค Product โดยใช้ข้อมูลที่ดึงมาจาก database
  var product = Product(n, p, orderCount: 10);

  print(product.name);
  print(product.price.toString());
  print(product.orderCount.toString());
  product.orderCount = 10;
}


  class Product{
   final String name;
   final int price;
   int orderCount ;

   // positional parameter, named parameter
    Product(this.name, this.price, {this.orderCount = 0}); //constructor
}

