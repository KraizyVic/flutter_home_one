import 'package:flutter/material.dart';
import 'package:homeone/theme/theme_provider.dart';
import 'package:homeone/util/settings_tile.dart';
import 'package:provider/provider.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}
class _SettingsPageState extends State<SettingsPage> {

  ThemeProvider thema = ThemeProvider();
  var notificationValue = true;
  void onNotificationSwitch(value){
    setState(() {
      notificationValue = notificationValue;
    });
  }
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.tertiary,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey
                      ),
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(500),
                        child: Image.asset(
                            'lib/assets/images/smiling-young-man-with-crossed-arms-outdoors.jpg',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "USERNAME",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                            fontSize: 20
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                                "Edit Profile",
                              style: TextStyle(
                                color: Colors.grey//Color(0xFF6f9a86)
                              ),
                            ),
                            IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.chevron_right,color: Theme.of(context).colorScheme.tertiary,),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: ListView(
                      children: [
                        SettingsTiles(
                            settingTileName: "Dark Mode",
                            actionWidget: Switch(
                              value: themeNotifier.isDarkMode,
                              onChanged: (value){
                                setState(() {
                                themeNotifier.toggleTheme();
                                });

                              },
                              inactiveThumbColor: Colors.grey[700],
                              inactiveTrackColor: Colors.grey,
                              activeTrackColor: Colors.grey[800],
                              activeColor: Colors.white,
                              trackOutlineColor: WidgetStateColor.transparent,

                            )
                        ),
                        Divider(),
                        SettingsTiles(
                            settingTileName: "Push Notifications",
                            actionWidget: Switch(
                              value: notificationValue,
                              onChanged: onNotificationSwitch,
                              inactiveThumbColor: Colors.grey[700],
                              inactiveTrackColor: Colors.grey,
                              activeTrackColor: Colors.grey[800],
                              activeColor: Colors.white,
                              trackOutlineColor: WidgetStateColor.transparent,
                            ),
                        ),
                        Divider(),
                        SettingsTiles(
                            settingTileName: "Change Password",
                            actionWidget: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.chevron_right,color: Colors.grey,),
                            ),
                        ),
                        Divider(),
                        SettingsTiles(
                          settingTileName: "Check Updates",
                          actionWidget: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.chevron_right,color: Colors.grey,),
                          ),
                        ),
                        Divider(),
                        SettingsTiles(
                          settingTileName: "Privacy policy",
                          actionWidget: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.chevron_right,color: Colors.grey,),
                          ),
                        ),
                        Divider(),
                        SettingsTiles(
                          settingTileName: "Terms and conditions",
                          actionWidget: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.chevron_right,color: Colors.grey,),
                          ),
                        ),
                        Divider(),
                        SettingsTiles(
                          settingTileName: "About Us",
                          actionWidget: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.chevron_right,color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
