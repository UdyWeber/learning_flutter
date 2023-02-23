import 'dart:mirrors';

class Matematica {
  int x;
  int y;

  Matematica(this.x, this.y);

  int sum() {
    return x + y;
  }

  double div() {
    return x / y;
  }

  int mult() {
    return x * y;
  }

  int dif() {
    return x - y;
  }
}

void main() {
  Matematica m = Matematica(1, 2);
  InstanceMirror im = reflect(m);
  ClassMirror cm = im.type;

  List classMethods = [];
  for (DeclarationMirror method in cm.declarations.values) {
    String string_method = method.toString();
    if (string_method.startsWith("MethodMirror") &&
        !string_method.endsWith("'Matematica'")) {
      classMethods.add(method);
    }
    print(method.toString());
  };
  print(classMethods);
}
