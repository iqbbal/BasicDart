
void main(List<String> arguments) {
  Child child = Child();
  print(child.name);
  print(child.mixinName);
}

mixin BaseMixin {
  String get mixinName => "BaseMixin";
}

class A {
  String get name => "A";
}

class Child implements A, BaseMixin {
  @override
  // TODO: implement mixinName
  String get mixinName => 'replace value "mixinName" by child class';

  @override
  // TODO: implement name
  String get name => 'replace value "name" by child class';

}