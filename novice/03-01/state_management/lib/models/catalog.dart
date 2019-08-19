import 'package:flutter/material.dart';

class CatalogModel{
  static const _ItemNames =[
    'code Smell',
    'Control Flow',
    'Interpreter',
    'Recursion',
    'Sprint',
    'Heisenburg',
    'Sphagetti',
    'Hydra Code',
    'off-by-one',
    'Scope',
    'call back',
    'Closure',
    'Automata',
    'Bit Shift',
    'Currying',
  ];
  Item getById(int id) =>Item(id, _ItemNames[id % _ItemNames.length]);
  Item getByPosition(int position){
    return getById(position);
  }
}

@immutable
class Item {
  final int id;
  final String name;
  final Color color;
  final int price = 42;

  Item(this.id, this.name)
  : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override

  bool operator ==(Object other)=> other is Item && other.id == id;
}