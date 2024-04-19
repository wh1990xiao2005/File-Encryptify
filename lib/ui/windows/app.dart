import 'package:file_encryptify/ui/windows/routes/routes.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:logger/logger.dart';
import 'package:system_theme/system_theme.dart';

class FileEncryptifyApp extends StatelessWidget {
  const FileEncryptifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Logger().d('System accent color: ${SystemTheme.accentColor.accent}');
    return FluentApp.router(
      // TODO Just for debug, turn theme mode to a static value.
      themeMode: ThemeMode.light,
      theme: FluentThemeData(
        scaffoldBackgroundColor: Colors.white,
        accentColor: SystemTheme.accentColor.accent.toAccentColor(),
      ),
      darkTheme: FluentThemeData(
        scaffoldBackgroundColor: Colors.red,
        accentColor: SystemTheme.accentColor.accent.toAccentColor(),
      ),
      routerConfig: routes,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
