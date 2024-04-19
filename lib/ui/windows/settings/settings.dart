import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  SettingsViewState createState() => SettingsViewState();
}

class SettingsViewState extends State<SettingsView> {
  // Header bar contains page title
  Widget _buildHeaderBar() {
    return PageHeader(
      title: Text(AppLocalizations.of(context)!.index_tab_settings),
    );
  }

  // Bottom bar contains confirm and cancel buttons
  Widget _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          FilledButton(
              child:
                  Text(AppLocalizations.of(context)!.settings_confirm_button),
              onPressed: () {}),
          const SizedBox(width: 8),
          FilledButton(
              child: Text(AppLocalizations.of(context)!.settings_cancel_button),
              onPressed: () {}),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: _buildHeaderBar(),
      bottomBar: _buildBottomBar(),
    );
  }
}
