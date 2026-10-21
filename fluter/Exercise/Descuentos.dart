/* Desarrollar la clase descuento que permita calcular el valor del descuento sabiendo que:
   si la cantidad de productos es superior a 100 el descuento es del 10%
   si la cantidad esta entre 11 y 100, el descuento es del 8.8%
   si la cantidad esta entre 1 y 10, el descuento es del 1.11%
   si la cantidad es menor o igual a cero mostrar "Cantidad de productos no permitida"  */

class Descuento {
   int cantidad;
   double precioUnitario;

   Descuento(this.cantidad, this.precioUnitario);

   double calcularDescuento(){
      if (cantidad <= 0) {
         print("Cantidad de productos no permitida");
         return 0.0;
      }

      double porcentaje;
      if (cantidad > 100) {
         porcentaje = 0.10;
      } else if (cantidad >= 11 && cantidad <= 100) {
         porcentaje = 0.088;
      } else {
         porcentaje = 0.0111;
      }

      double subtotal = cantidad * precioUnitario;
      return subtotal * porcentaje;
   }  
}

void main() {
   
   var d1 = Descuento(0, 50.0);
   d1.calcularDescuento();

   var d2 = Descuento(5, 100.0);
   print('Descuento: \$${d2.calcularDescuento()}');

   var d3 = Descuento(50, 100.0);
   print('Descuento: \$${d3.calcularDescuento()}');

   var d4 = Descuento(150, 100.0);
   print('Descuento: \$${d4.calcularDescuento()}');
}