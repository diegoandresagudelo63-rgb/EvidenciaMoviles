void main() {
  // Probar la clase con 2 objetos
  Product product1 = Product(
    id: 1,
    name: 'Laptop',
    price: 1000.0,
    stock: 5,
  );

  Product product2 = Product(
    id: 2,
    name: 'Mouse',
    price: 25.0,
    stock: 20,
  );

  // Mostrar los objetos
  print('--- Producto 1 ---');
  print(product1);
  product1.printPriceWithIncrement();

  print('\n--- Producto 2 ---');
  print(product2);
  product2.printPriceWithIncrement();
}

class Product {
  // Atributos
  int id;
  String name;
  double price;
  int stock;

  // Constructor
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.stock,
  });

  // incremento del precio en un 10%
  void printPriceWithIncrement() {
    double newPrice = price * 1.10;
    print('El precio de $name con un incremento del 10% es: \$${newPrice.toStringAsFixed(2)}');
  }

  // Sobrescritura de toString
  @override
  String toString() {
    return 'Product{id: $id, name: $name, price: $price, stock: $stock}';
  }
}