import 'package:asatic_dashboard/src/application.dart';
import 'package:asatic_dashboard/src/locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
  runApp(const Application());
}
