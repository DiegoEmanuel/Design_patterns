// Implementação da classe PedidoTakeout
// ignore_for_file: avoid_print

import 'package:design_patterns/factory/models/pedido.dart';

class PedidoTakeout implements Pedido {
  @override
  void processarPedido() {
    print('Processando pedido para viagem');
  }
}
