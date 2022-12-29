import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class BusinessCard extends StatefulWidget {
  const BusinessCard({super.key});

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  MouseCursor _cursor = SystemMouseCursors.basic;
  late StateMachineController controller;

  void _onRiveInit(Artboard artboard) async {
    controller = StateMachineController.fromArtboard(artboard, 'state',
        onStateChange: _onStateChange)!;
    artboard.addController(controller);
  }

  void _onStateChange(String stateMachineName, String stateName) {
    _updateMouseCursor();
  }

  void _updateMouseCursor() {
    final inputs = controller.inputs;
    if (inputs.any((element) => element.value == true)) {
      _cursor = SystemMouseCursors.click;
    } else {
      _cursor = SystemMouseCursors.basic;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MouseRegion(
        cursor: _cursor,
        child: Center(
          child: SizedBox(
            width: 400,
            child: RiveAnimation.asset(
              'assets/cat.riv',
              artboard: 'main_artboard',
              stateMachines: const ['state'],
              onInit: _onRiveInit,
            ),
          ),
        ),
      ),
    );
  }
}
