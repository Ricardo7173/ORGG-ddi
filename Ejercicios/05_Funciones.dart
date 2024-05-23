void main() {
  print(saludar());
  print(greetEveryone());
  print(agregarNumeros(5, 8));
  print(addTwoNumbers(5, 8));
  print(agregarDosNumerosOpcional(4, 6));
  print(greetPerson(name: 'Richo',message:'Buenas'));
  print(greetPerson(name: 'Richo'));
}

String saludar(){
  return "Hola a todos";
}

//Función lambda
String greetEveryone()=> "Hello Everyone";

int agregarNumeros(int a, int b){
  return a+b;
}

//Convertir a Función lambda
int addTwoNumbers(int a, int b)=> a+b;

//Variables opcionales
int agregarDosNumerosOpcional(int a, [int? b /*int b = 0*/]){
  //b=b??0;
  b??=0;
  return a+b;
}

//Variables por referencia
String greetPerson({required String name, String? message= 'Hola'}){
  return '$message, $name';
}