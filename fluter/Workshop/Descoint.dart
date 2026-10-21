class Shop {
  String name;
  double price;
  int quantity;

  Shop(this.name, this.price, this.quantity);

  // Calcula el porcentaje de descuento según la cantidad
  double discountApplied() {
    if (quantity <= 0) {
      print('Cantidad de productos no permitida');
      return 0.0;
    }
    if (quantity > 100) return 0.10;
    if (quantity >= 11) return 0.088;
    return 0.0111;
  }

  double subTotalPrice() {
    return price * quantity;
  }

  // Se resta el descuento en lugar de sumarlo
  double finalPrice() {
    double discountValue = subTotalPrice() * discountApplied();
    return subTotalPrice() - discountValue;
  }

  @override
  String toString() {
    double percentage = discountApplied() * 100;
    return 'Del producto $name se han comprado $quantity a un precio de $price por unidad, '
        'por lo que tiene un descuento de ${percentage.toStringAsFixed(2)}%. '
        'Precio Final: ${finalPrice().toStringAsFixed(2)}';
  }
}