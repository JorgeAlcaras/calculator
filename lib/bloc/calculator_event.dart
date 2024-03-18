part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

class AddElement extends CalculatorEvent {
  final String number;

  AddElement(this.number);
}

class Clear extends CalculatorEvent {}

class DeleteElement extends CalculatorEvent {}

class Calculate extends CalculatorEvent {}
