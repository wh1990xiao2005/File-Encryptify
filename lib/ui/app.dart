import 'dart:io';

import 'package:file_encryptify/ui/windows/app.dart';
import 'package:flutter/widgets.dart';
import 'package:system_theme/system_theme.dart';

void launchFileEncryptifyApp() async {
  if (Platform.isWindows) {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemTheme.accentColor.load();
    runApp(const FileEncryptifyApp());
  }
}
