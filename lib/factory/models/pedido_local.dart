// ignore_for_file: avoid_print

import 'package:design_patterns/factory/models/pedido.dart';

class PedidoDineIn implements Pedido {
  @override
  void processarPedido() {
    print('Processando pedido no local');
  }
}
