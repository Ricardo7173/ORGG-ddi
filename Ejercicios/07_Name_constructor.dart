//Constructores por nombre
void main() {
  
  final Map<String, dynamic> rawJson = {
    'name': 'Deadpool',
    'power': 'Regeneracion',
    'isAlive': true
  };
  
  final deadpool = Hero.fromJson(rawJson);
  
  final flash = Hero(power: 'none', name:'Flash', isAlive:false);
  
  print(deadpool);
  print(flash);
  
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });
  
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive= json['isAlive'] ?? 'No isAlive found';
  
  @override
  String toString(){
    return '$name, $power, isAlive: ${isAlive ? 'YES': 'NO'}';
  }
}
