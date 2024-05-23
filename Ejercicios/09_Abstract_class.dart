//una clase abstracta no se puede instanciasr como si misma
//es un molde para crear otro molde
//se pueden crear funciones sin implementación
void main() {
  final plantaViento = PlantaAire(energiaInicial: 100);
  final plantaNuclear = PlantaNuclear(cantidadEnergia: 9);
  
  print('Viento ${cargarBateria(plantaViento)}');
  print('Nuclear ${cargarBateria(plantaNuclear)}');
}

double cargarBateria(PlantaEnergia planta) {
  if (planta.cantidadEnergia < 10) {
    throw Exception('Sin energia suficiente');
  }
  
  return planta.cantidadEnergia - 10;
}

enum TipoPlanta {
  viento,
  agua,
  nuclear
}

abstract class PlantaEnergia {
  double cantidadEnergia;
  final TipoPlanta tipo;
  
  PlantaEnergia({
    required this.cantidadEnergia,
    required this.tipo
  });
  
  void consumirEnergia(double cantidad);
}

//extends or implements
//extend: extender o heredar de una clase
class PlantaAire extends PlantaEnergia {
  PlantaAire({required double energiaInicial})
    : super(cantidadEnergia: energiaInicial, tipo: TipoPlanta.viento);
      
  @override
  void consumirEnergia(double cantidad) {
    cantidadEnergia -= cantidad;
  }
}

class PlantaNuclear implements PlantaEnergia {
  @override
  double cantidadEnergia;
  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;
  
  PlantaNuclear({required this.cantidadEnergia});
  
  @override
  void consumirEnergia(double cantidad) {
    cantidadEnergia -= cantidad;
  }
}
