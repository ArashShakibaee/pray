import 'package:fluro/fluro.dart';
import 'package:pray/Screens/AuthenticationScreen/UI/auth_screen.dart';
import 'package:pray/Screens/DetailScreen/DetailBookScreen/UI/detail_book_screen.dart';
import 'package:pray/Screens/DetailScreen/DetailPodcastScreen/UI/detail_podcast_screen.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Discover/UI/discover_screen.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Podcast/UI/podcast_screen.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Pray/UI/pray_screen.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Read/UI/read_screen.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Sleep/UI/sleep_screen.dart';
import 'package:pray/Screens/HomeScreen/Settings/UI/settings_screen.dart';
import 'package:pray/Screens/HomeScreen/UI/home_screen.dart';
import 'package:pray/Screens/PersonalExperienceScreens/grow_faith_screen.dart';
import 'package:pray/Screens/PersonalExperienceScreens/personalizing_user_experience_screen.dart';
import 'package:pray/Screens/PersonalExperienceScreens/popular_leaders_screen.dart';
import 'package:pray/Screens/PersonalExperienceScreens/prayer_practice_screen.dart';
import 'package:pray/Screens/PersonalExperienceScreens/welcome_screen.dart';
import 'package:pray/Screens/SplashScreen/UI/splash_screen.dart';

class RouteHandler {
  static var splashHandler =
      Handler(handlerFunc: (context, params) => const SplashScreen());

  static var authHandler =
      Handler(handlerFunc: (context, params) => const AuthScreen());

  static var welcomeHandler =
      Handler(handlerFunc: (context, params) => const WelcomeScreen());

  static var prayerPracticeHandler =
      Handler(handlerFunc: (context, params) => const PrayerPracticeScreen());

  static var growFaithHandler =
      Handler(handlerFunc: (context, params) => const GrowFaithScreen());

  static var popularLeadersHandler =
      Handler(handlerFunc: (context, params) => const PopularLeadersScreen());

  static var personalizingUserExperienceHandler = Handler(
      handlerFunc: (context, params) =>
          const PersonalizingUserExperienceScreen());

  static var homeHandler =
      Handler(handlerFunc: (context, params) => const HomeScreen());

  static var discoverHandler =
      Handler(handlerFunc: (context, params) => const DiscoverScreen());

  static var prayHandler =
      Handler(handlerFunc: (context, params) => const PrayScreen());

  static var sleepHandler =
      Handler(handlerFunc: (context, params) => const SleepScreen());

  static var readHandler =
      Handler(handlerFunc: (context, params) => const ReadScreen());

  static var podcastHandler =
      Handler(handlerFunc: (context, params) => const PodcastScreen());

  static var settingsHandler =
      Handler(handlerFunc: (context, params) => const SettingScreen());

  static var detailBookHandler =
      Handler(handlerFunc: (context, params) => const DetailBookScreen());

  static var detailPodcastHandler =
      Handler(handlerFunc: (context, params) => const DetailPodcastScreen());

}
