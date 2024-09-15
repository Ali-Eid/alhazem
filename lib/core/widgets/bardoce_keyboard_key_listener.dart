import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BarcodeKeyboardListener extends StatefulWidget {
  final Duration bufferDuration;
  final ValueChanged<String> onBarcodeScanned;
  final Widget child;

  const BarcodeKeyboardListener({
    super.key,
    required this.bufferDuration,
    required this.onBarcodeScanned,
    required this.child,
  });

  @override
  _BarcodeKeyboardListenerState createState() =>
      _BarcodeKeyboardListenerState();
}

class _BarcodeKeyboardListenerState extends State<BarcodeKeyboardListener> {
  final _buffer = StringBuffer();
  DateTime? _lastKeyPressTime;

  @override
  void initState() {
    super.initState();
    RawKeyboard.instance.addListener(_handleKey);
  }

  @override
  void dispose() {
    RawKeyboard.instance.removeListener(_handleKey);
    super.dispose();
  }

  void _handleKey(RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      final key = event.logicalKey.keyLabel;

      if (key == 'Enter') {
        final barcode = _buffer.toString();
        _buffer.clear();
        widget.onBarcodeScanned(barcode);
      } else if (key.isNotEmpty) {
        final now = DateTime.now();
        if (_lastKeyPressTime == null ||
            now.difference(_lastKeyPressTime!) <= widget.bufferDuration) {
          _buffer.write(key);
        } else {
          _buffer.clear();
          _buffer.write(key);
        }
        _lastKeyPressTime = now;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
