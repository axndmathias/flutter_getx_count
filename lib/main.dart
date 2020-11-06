import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  final Controller _controller = Get.put(Controller());
  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(
          title: Obx(() => Text("Total de cliques: ${_controller.contador}"))),
      body: Center(
          child: RaisedButton(
              child: Text("Proxima tela"),
              onPressed: () => Get.to(ProximaTela()))),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: _controller.incrementar));
}

class ProximaTela extends StatelessWidget {
  final Controller _controller = Get.find();
  @override
  Widget build(context) =>
      Scaffold(body: Center(child: Text("${_controller.contador}")));
}

class Controller extends GetxController {
  var contador = 9.obs;
  incrementar() => contador.value++;
}
