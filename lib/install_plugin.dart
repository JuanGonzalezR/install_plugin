import 'package:flutter/services.dart';

class InstallPlugin {
  static const MethodChannel _channel = MethodChannel('install_plugin');

  static Future<bool> installApk(String filePath) async {
    try {
      final result = await _channel.invokeMethod<bool>(
        'installApk',
        {'filePath': filePath},
      );
      return result ?? false;
    } on PlatformException catch (e) {
      throw Exception('Failed to install APK: ${e.message}');
    }
  }
}