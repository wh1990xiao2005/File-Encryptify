import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EncryptionDecryptionView extends StatefulWidget {
  const EncryptionDecryptionView({super.key});

  @override
  EncryptionDecryptionViewState createState() =>
      EncryptionDecryptionViewState();
}

class EncryptionDecryptionViewState extends State<EncryptionDecryptionView> {
  bool isEncryptMode = true;

  // Header bar contains page title
  Widget _buildHeaderBar() {
    return PageHeader(
      title: Text(AppLocalizations.of(context)!.index_tab_encrypt_decrypt),
    );
  }

  // Content area contains command buttons, files list and so on.
  Widget _buildContentArea() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildContentTopCommandButtons(),
          Expanded(child: _buildContentFilesListTable()),
          _buildContentBottomCommandButtons()
        ],
      ),
    );
  }

  // Command buttons contains add, edit buttons
  Widget _buildContentTopCommandButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      ToggleSwitch(
          checked: isEncryptMode,
          content: Text(isEncryptMode
              ? AppLocalizations.of(context)!
                  .encrypt_decrypt_encrypt_mode_switcher
              : AppLocalizations.of(context)!
                  .encrypt_decrypt_decrypt_mode_switcher),
          onChanged: (bool isChecked) {
            setState(() {
              isEncryptMode = isChecked;
            });
          }),
      Expanded(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Button(
            child: Text(
                AppLocalizations.of(context)!.encrypt_decrypt_add_file_button),
            onPressed: () => debugPrint('Add!!!!!'),
          ),
          const SizedBox(width: 8.0),
          Button(
            child:
                Text(AppLocalizations.of(context)!.encrypt_decrypt_edit_button),
            onPressed: () => debugPrint('Edit!!!!!'),
          ),
          const SizedBox(width: 8.0),
          Button(
            child: Text(
                AppLocalizations.of(context)!.encrypt_decrypt_cancel_button),
            onPressed: () => debugPrint('Cancel!!!!!'),
          ),
          const SizedBox(width: 8.0),
          Button(
            child: Text(
                AppLocalizations.of(context)!.encrypt_decrypt_remove_button),
            onPressed: () => debugPrint('Remove!!!!!'),
          ),
          const SizedBox(width: 8.0),
          Button(
            child: Text(AppLocalizations.of(context)!
                .encrypt_decrypt_select_all_button),
            onPressed: () => debugPrint('Select all!!!!!'),
          ),
          const SizedBox(width: 8.0),
          Button(
            child: Text(AppLocalizations.of(context)!
                .encrypt_decrypt_unselect_all_button),
            onPressed: () => debugPrint('Unselect all!!!!!'),
          ),
        ],
      )),
    ]);
  }

  // Files list contains user select files
  Widget _buildContentFilesListTable() {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(width: 1.0, color: Colors.grey[40]),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [],
        ),
      ),
    );
  }

  // Command buttons contains start, pause, continue, cancel buttons
  Widget _buildContentBottomCommandButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      FilledButton(
        child: Text(
            AppLocalizations.of(context)!.encrypt_decrypt_start_encrypt_button),
        onPressed: () => debugPrint('Start!!!!!'),
      ),
      const SizedBox(width: 8.0),
      Button(
        child: Text(
            AppLocalizations.of(context)!.encrypt_decrypt_pause_encrypt_button),
        onPressed: () => debugPrint('Pause!!!!!'),
      ),
      const SizedBox(width: 8.0),
      Button(
        child: Text(AppLocalizations.of(context)!
            .encrypt_decrypt_continue_encrypt_button),
        onPressed: () => debugPrint('Continue!!!!!'),
      ),
      const SizedBox(width: 8.0),
      Button(
        child: Text(AppLocalizations.of(context)!
            .encrypt_decrypt_cancel_encrypt_button),
        onPressed: () => debugPrint('Cancel!!!!!'),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: _buildHeaderBar(),
      content: _buildContentArea(),
    );
  }
}
