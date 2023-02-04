class User {
  final String name;
  final String gender;

  // Default Constructor
  User({required this.name, required this.gender});

  // * Named Constructor
  User.male({required this.name}) : gender = 'male';
  User.female({required this.name}) : gender = 'female';

  // * Redirecting Constructor
  User.iqbal() : this(name: 'redirect iqbal', gender: 'male');
  User.iqbalCjr() : this.male(name: 'redirect iqbalCjr');

  // * factory Constructor
  factory User.programmer(String language) => User.male(name: 'Men cannot understand $language');
}

// Different types of Constructors in Dart
void main(List<String> arguments) {
  // Named Constructor
  User namedConstructIqbal = User.male(name: "Iqbal Cjr");

  // Redirecting Constructor
  User redirectingConstructIqbal = User.iqbal();
  User redirectingConstructIqbalCjr = User.iqbalCjr();

  // Factory Constructor
  User factoryIqbal = User.programmer('"Women"');

  print(" named construct : ${namedConstructIqbal.name}"); // Iqbal Cjr
  print(" named construct : ${namedConstructIqbal.gender}"); // male

  print(" redirecting construct : ${redirectingConstructIqbal.name}"); // redirect iqbal
  print(" redirecting construct : ${redirectingConstructIqbalCjr.name}"); // redirect iqbalCjr

  print(" factory construct : ${factoryIqbal.name}"); // Men cannot understand "Women"
}
