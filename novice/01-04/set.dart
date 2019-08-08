void main(List<String>args){
  set awarna = new Set.from(["merah", "kuning", "hijau"]);
  set bwarna = new Set.from(["kuning", "hijau", "jingga"]);

  Set abwarna = bwarna.intersection(awarna); //menghasilkan kuning dan hijau

  for(String warna in abwarna)
  print(warna);
}