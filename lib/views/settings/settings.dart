import 'package:flutter/material.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'SettingPage',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: 'Section',
              tiles: [
                SettingsTile.switchTile(
                  title: 'Use fingerprint',
                  leading: Icon(Icons.language),
                  switchValue: true,
                  switchActiveColor: Colors.black,
                  onToggle: (bool value) {},
                ),
                SettingsTile.switchTile(
                  title: 'Use fingerprint',
                  leading: Icon(Icons.fingerprint),
                  switchActiveColor: Colors.black,
                  switchValue: false,
                  onToggle: (bool value) {},
                ),
                  SettingsTile.switchTile(
                  title: 'Notificatiom',
                  leading: Icon(Icons.notifications_active),
                  switchValue: true,
                  switchActiveColor: Colors.black,
                  onToggle: (bool value) {},
                ),
              ],
            ),
          ],
        ));
  }
}
