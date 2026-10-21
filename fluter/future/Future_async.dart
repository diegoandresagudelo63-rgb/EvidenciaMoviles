void main() async{
    print('Inicio del programa');
    try{
        String datos = await getAdd();
        print(datos);
    } catch (e) {
        print(e);
    };
    print('Fin del programa');

}

//upworks
Future<String> getAdd() async{
    return Future.delayed(Duration(seconds: 5), () {
        //simular una operacion asincrona que tarda 5 segundos en ejecutarse  
    int add = 0;
    for(int i = 0; i < 1000; i++){
        add += i;//acumulador 
    };

    return '$add';
    });//Future.delayed
}
