// Definindo a interface da estratégia

import 'package:design_patterns/strategy/operacoes/adicao/adicao_strategy.dart';

abstract class Strategy {
  double execute(double a, double b);
}

class Calculator {
  final Strategy _strategy;

  Calculator(this._strategy);

  double performOperation(double a, double b) {
    return _strategy.execute(a, b);
  }

  void changeStrategy(AdditionStrategy additionStrategy) {}
}
