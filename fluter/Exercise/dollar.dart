void main() {
    double convertir(double cantidad, {double precioDolar = 3200.0}) {
        return cantidad / precioDolar;
    }

    print(convertir(320000));
}