//Desarrollar la clase rectangulo que permite calcular su area y perimetro.

class Rectangulo{
    double base;
    double altura;

    Rectangulo(this.base, this.altura);

    double calcularArea(){
        return base * altura;
    }

    double calcularPerimetro(){
        return 2 *(base + altura);
    }
}

void main(){
    var miRectangulo = Rectangulo(5.0, 3.0);

     print('Base: ${miRectangulo.base}');
     print('Altura: ${miRectangulo.altura}');
     print('Área: ${miRectangulo.calcularArea()}'); 
     print('Perímetro: ${miRectangulo.calcularPerimetro()}'); 
}
