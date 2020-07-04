import 'package:flatchat/flat_widgets/flat_action_btn.dart';
import 'package:flatchat/flat_widgets/flat_add_story_btn.dart';
import 'package:flatchat/flat_widgets/flat_chat_item.dart';
import 'package:flatchat/flat_widgets/flat_counter.dart';
import 'package:flatchat/flat_widgets/flat_page_header.dart';
import 'package:flatchat/flat_widgets/flat_profile_image.dart';
import 'package:flatchat/flat_widgets/flat_section_header.dart';
import 'package:flatchat/screens/apppage.dart';
import 'package:flatchat/screens/chatpage.dart';
import 'package:flatchat/screens/samplepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This changes font for the entire app using the Google Fonts package
        // from pub.dev : https://pub.dev/packages/google_fonts
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
        // You can change theme colors to directly change colors for the whole
        // app.
        primaryColor: Color(0xff5B428F),
        accentColor: Color(0xffF56D58),
        primaryColorDark: Color(0xff262833),
        primaryColorLight: Color(0xffFCF9F5),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        AppPage.id: (context) => AppPage(),
        ChatPage.id: (context) => ChatPage(),
        SamplePage.id: (context) => SamplePage(),
      },
      initialRoute: AppPage.id,
    );
  }
}
