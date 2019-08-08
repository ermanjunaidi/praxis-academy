class GenericClass<T> {
  T ob;

// constructor
  GenericClass(T o) {
    ob = o;
  }

  T getob() {
    return ob;
  }

  void showType() {
    print("Type of T is ${ob.runtimeType}");
  }
}

void main() {

    GenericClass<int> iOb = new GenericClass<int>(88);
    iOb.showType();

    int v = iOb.getob();
    print("value: ${v}");

    GenericClass<String> strOb = new GenericClass("Generics Test");
    strOb.showType();

    String str = strOb.getob();
    print("value: ${str}");
  }

