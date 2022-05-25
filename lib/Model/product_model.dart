class Product{
  final String name;
  final double price;
  final String imageUrl;
  final String description;
  final bool wishlist;

  Product({required this.name, required this.price, required this.imageUrl, required this.description, required this.wishlist});

  static List<Product> products = [
    Product(name: "Watch", price: 389.99, imageUrl: "https://tse1.mm.bing.net/th?id=OIP.9BxN5bzBYzjbzwRiHAMFLAHaHa&pid=Api&P=0&w=201&h=201", description: "Rolex 116518 Daytona 18k Yellow Gold Mens Watch",wishlist:false),
    Product(name: "Glass", price: 29.99, imageUrl: "https://duchessandbutler.com/wp-content/uploads/2020/05/RGLA0011.jpg", description: "Aqua Glass",wishlist:false),
    Product(name: "Scarf", price: 37.99, imageUrl: "https://s.yimg.com/aah/yhst-70124266589865/cashmere-neck-scarf-96.png", description: "Black cashmere neck scarf, 100% cotton",wishlist:false),
    Product(name: "Lamp", price: 53.99, imageUrl: "https://s.yimg.com/aah/newportantiques4-shop/lone-pinecone-table-lamp-5.jpg", description: "Lamp light long duration",wishlist:false),
    Product(name: "Mirror", price: 289.99, imageUrl: "https://i.pinimg.com/736x/cc/c7/d9/ccc7d93f6e9deff50383f1de257e86ba.jpg", description: "French Convex Sunburst Gilded Wood Mirror",wishlist:false),
    Product(name: "Landscape", price:159.99, imageUrl: "https://mir-s3-cdn-cf.behance.net/project_modules/1400/fbd49019815273.562e0ba11b0f7.jpg", description: "Landscape",wishlist:false),
    Product(name: "Book Shelf", price: 90.99, imageUrl: "https://www.ikea.com/us/en/images/products/billy-bookcase-white__0625599_pe692385_s5.jpg?f=s", description: "Sauder Beginnings 3-Shelf Bookcase, Soft White finish",wishlist:false),
  ];
}