import 'dart:developer';
import 'dart:io';

import 'package:alhazem/core/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import '../blocs/reader_bloc/reader_setting_bloc.dart';
import 'dart:ui' as ui;

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  String _barcode = 'Scan a barcode';
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _idController = TextEditingController();

  void _parseBarcode(String barcode) {
    List<String> parts = barcode.split('#');
    if (parts.length >= 6) {
      setState(() {
        _firstNameController.text = parts[0];
        _surnameController.text = parts[1];
        _middleNameController.text = parts[2];
        _cityController.text = parts[3];
        _dobController.text = parts[4];
        _idController.text = parts[5];
      });
    } else {
      print("Barcode format is incorrect");
    }
  }

  @override
  Widget build(BuildContext context) {
    return BarcodeKeyboardListener(
      bufferDuration: const Duration(milliseconds: 200),
      onBarcodeScanned: (barcode) {
        setState(() {
          _barcode = barcode;
        });
        _parseBarcode(_barcode);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Barcode Scanner Demo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _firstNameController,
                decoration: const InputDecoration(labelText: 'First Name'),
              ),
              TextField(
                controller: _surnameController,
                decoration: const InputDecoration(labelText: 'Surname'),
              ),
              TextField(
                controller: _middleNameController,
                decoration: const InputDecoration(labelText: 'Middle Name'),
              ),
              TextField(
                controller: _cityController,
                decoration: const InputDecoration(labelText: 'City'),
              ),
              TextField(
                controller: _dobController,
                decoration: const InputDecoration(labelText: 'Date of Birth'),
              ),
              TextField(
                controller: _idController,
                decoration: const InputDecoration(labelText: 'ID Number'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
