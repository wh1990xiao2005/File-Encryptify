import 'package:file_encryptify/ui/windows/encryption_decryption/encryption_decryption.dart';
import 'package:file_encryptify/ui/windows/settings/settings.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IndexView extends StatefulWidget {
  const IndexView({super.key});

  @override
  IndexViewState createState() => IndexViewState();
}

class IndexViewState extends State<IndexView> {
  int selectPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      pane: NavigationPane(
          displayMode: PaneDisplayMode.compact,
          items: [
            PaneItem(
                icon: const Icon(FluentIcons.encryption),
                title: Text(
                    AppLocalizations.of(context)!.index_tab_encrypt_decrypt),
                body: const EncryptionDecryptionView()),
            PaneItem(
                icon: const Icon(FluentIcons.settings),
                title: Text(AppLocalizations.of(context)!.index_tab_settings),
                body: const SettingsView()),
          ],
          onChanged: (int index) {
            setState(() {
              selectPageIndex = index;
            });
          },
          selected: selectPageIndex),
    );
  }
}
