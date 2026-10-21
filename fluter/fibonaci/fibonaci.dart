//Empleando un future devolver los n primeros terminos de la serie de fibonnaci
//se debe retornar del ultimo al primer termino
//Ejemplo: 0,1,1,2,3,5,8,13
//retornar 138532110

void main() async {


}

Future<String> fibon(){
    return future.delayed(Duration(Seconds: 10), () {

     List<int> conca = [0, 1];
     int number = 8;    
    
    for(int i = 2; i < number; i++) {
        conca.add((i - 1) + conca(i - 2))
    };
    return '$conca';
    });
}