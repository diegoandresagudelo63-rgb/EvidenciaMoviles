void main(){
    Map<String, dynamic> persons = {
        'document': 111,
        'name': "Diego",
        'salary': 400000,
        'status': true,
    };
    print(persons);
    persons.addAll({"functions": 'develop in dart'});
    print(persons);
    print("---------------------------");
    print(persons[0]);
}