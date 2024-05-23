//Clases
void main() {
  final Hero wolverine = new Hero("Wolvorine", "Otro");

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

  //TO DO: Generar otro superheroe sin poder
  //y mostrar toda la información

  final Hero deadpool = new Hero(name: "Deadpool", power: "Otro");
  print(deadpool);
  print(deadpool.name);
  print(deadpool.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'Sin poder'});

  //Hero(this.name, this.power);
/*
  Hero(String pName, String pPower): name = pName, power = pPower;
  */
  @override
  String toString(){
    return '$name - $power';
  }
}
