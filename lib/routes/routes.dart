import 'package:bluetooth_terminal/pages/about.dart';
import 'package:bluetooth_terminal/pages/communication.dart';
import 'package:bluetooth_terminal/pages/device.dart';
import 'package:bluetooth_terminal/pages/fm_systems.dart';
import 'package:bluetooth_terminal/pages/home_page.dart';
import 'package:bluetooth_terminal/pages/info.dart';
import 'package:bluetooth_terminal/pages/learn_sign.dart';
import 'package:bluetooth_terminal/pages/settings.dart';
import 'package:bluetooth_terminal/pages/slider.dart';
import 'package:bluetooth_terminal/pages/speech_to_text.dart';
import 'package:bluetooth_terminal/pages/splash.dart';
import 'package:bluetooth_terminal/pages/terminal.dart';
import 'package:bluetooth_terminal/pages/text_to_speech.dart';
import 'package:bluetooth_terminal/pages/translation.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String homePage = '/';
  static const String device = '/device';
  static const String settings = '/settings';
  static const String info = '/info';
  static const String terminal = '/terminal';
  static const String fmSystems = '/fmSystems';
  static const String communication = '/communication';
  static const String translation = '/translation';
  static const String learnSign = '/learnSign';
  static const String textToSpeech = '/textToSpeech';
  static const String speechToText = '/speechToText';
  static const String splash = '/splash';
  static const String slider = '/slider';
  static const String about = '/about';

  static Route<dynamic> generateRoute(RouteSettings rSettings) {
    switch (rSettings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      case device:
        return MaterialPageRoute(
          builder: (context) => const Device(),
        );

      case fmSystems:
        return MaterialPageRoute(
          builder: (context) => const FmSystems(),
        );

      case info:
        return MaterialPageRoute(
          builder: (context) => const Info(),
        );

      case learnSign:
        return MaterialPageRoute(
          builder: (context) => const LearnSign(),
        );

      case settings:
        return MaterialPageRoute(
          builder: (context) => const Settings(),
        );

      case terminal:
        return MaterialPageRoute(
          builder: (context) => const Terminal(),
        );

      case translation:
        return MaterialPageRoute(
          builder: (context) => const Translation(),
        );

      case communication:
        return MaterialPageRoute(
          builder: (context) => const Communication(),
        );

      case textToSpeech:
        return MaterialPageRoute(
          builder: (context) => const TextToSpeech(),
        );

      case speechToText:
        return MaterialPageRoute(
          builder: (context) => const SpeechToText(),
        );

      case splash:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );

      case slider:
        return MaterialPageRoute(
          builder: (context) => const SliderP(),
        );

      case about:
        return MaterialPageRoute(
          builder: (context) => const AboutUsPage(),
        );

      default:
        throw const FormatException('Route not found! Check routes again');
    }
  }
}
