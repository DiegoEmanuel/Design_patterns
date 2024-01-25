import 'package:design_patterns/strategy/operacoes/calculator_interface_strategy.dart';

class MultiplicationStrategy implements Strategy {
  @override
  double execute(double a, double b) {
    return a * b;
  }
}
