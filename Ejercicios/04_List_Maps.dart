//Listas
void main(){
  final numbers = [1,2,3,4,5,5,6,7,8,9,9,10];
  
  print('Lista Original:');
  print('Length ${numbers.length}');
  print('Index 0 ${numbers[0]}');
  print('Firts ${numbers.first}');
  print('Last index ${numbers[numbers.length - 1]}');
  print('Last ${numbers.last}');
  print('Desc ${numbers.reversed}');
  
  final reverseNumbers = numbers.reversed;
  print('Iterable $reverseNumbers');
  print('List $reverseNumbers.toList()');
  print('Set ${reverseNumbers.toSet()}');
  
  final numbersGreaterThan5 = numbers.where((number){
    return number > 5;
  });
  
  print(' > 5 ${numbersGreaterThan5}');
  
  print('> 5 converted to list ${numbersGreaterThan5.toList()}');
  print('> 5 converted to set ${numbersGreaterThan5.toSet()}');
}