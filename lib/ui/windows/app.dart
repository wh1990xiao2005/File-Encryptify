import 'package:fluent_ui/fluent_ui.dart';
import 'package:system_theme/system_theme.dart';

class FileEncryptifyApp extends StatelessWidget {
  const FileEncryptifyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return FluentApp(
      title: 'Test',
      theme: FluentThemeData(
        accentColor: SystemTheme.accentColor.accent.toAccentColor(),
      ),
      home: Button(
        child: const Text('Standard Button'),
        onPressed: () => debugPrint('pressed button'),
      ),
    );
  }
}