//Mapas
void main (){
  final Map<String, dynamic> game = {
    'name':"Honkai",
    'starts': 2,
    'isRPG': false,
    'types':<String>['Impact', 'Turnos'],
    'cover':{
      1:'Honkai/front.png',
      2:'Honkai/back.png'
    }
  };
  
  
  print(game);
  print('Nombre:  ${game['name']}');
  print('Nombre:  ${game['cover']}');
  print('Cover Back: ${game['cover'][2]}');
  print('Cover Front: ${game['cover'][1]}');
}