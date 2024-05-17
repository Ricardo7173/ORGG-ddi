//Variables
void main(){
  final String game = "Genshin";
  final int starts = 2;
  final bool isRPG = false;
  final List<String> types = ['Impact','Mundo Abierto'];
  final cover = <String>['Impact/Impact.png','Impact/back.png'];
  
  dynamic data = null;
  data = true;
  data = [1,2,3,4,5];
  data = {1,2,3,4,5};
  data = () => true;
  data = 1;
  data = 'name';
  // data += 2;
  // data = null
  
  print("""
    $game
    $starts
    $isRPG
    $types
    $cover
  """);
}