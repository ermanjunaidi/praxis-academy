// Insertion Sort
main() {
  var T = [3,5,6,3,4,5,34,4,2,4,5,64,4,34,5,4,5,34,5,6,67];
  for (var i = 0; i < T.length; i++) {
    for (var j = i + 1; j < T.length; j++) {
      if (T[i] > T[j]) {
        var tmp = T[i];
        T[i] = T[j];
        T[j] = tmp;
      }
    }
  }

  for (var i = 0; i < T.length; i++) {
    print(T[i]);
  }
}
