import 'package:basic_dart_practice/basic_dart_practice.dart' as basic_dart_practice;

void main(List<String> arguments) {

  // ! This is a very critical comment
  // * This is a highlighted comment
  // TODO : this is a TODO comment
  // ? This is a question comment
  // This is a normal comment

  /*
  * Declaring variables in Dart
  * */
  const favorite = 'I like pizza with banana';
  final newFavorite = favorite.replaceAll('pizza', 'pasta');
  var totalSpace = 0;
  for(var i = 0; i < newFavorite.length; i++){
    final c = newFavorite[i];
    if(c == ' '){
      totalSpace++;
    }
    print('Counted $totalSpace spaces ');
  }

  //print('Hello world: ${basic_dart_practice.calculate()}!');
}
