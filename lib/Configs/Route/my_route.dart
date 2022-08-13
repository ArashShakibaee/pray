import 'package:fluro/fluro.dart';
import 'package:pray/Configs/Route/route_handler.dart';
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

class MyRoute {
  static void setupRouter(FluroRouter router) {
    router.notFoundHandler = Handler(handlerFunc: (context, params) {
      print("Route Not Found !!!");
    });
    router.define(SplashScreen.routeId, handler: RouteHandler.splashHandler);

    router.define(AuthScreen.routeId, handler: RouteHandler.authHandler);

    router.define(WelcomeScreen.routeId, handler: RouteHandler.welcomeHandler);

    router.define(PrayerPracticeScreen.routeId,

        handler: RouteHandler.prayerPracticeHandler);

    router.define(GrowFaithScreen.routeId,
        handler: RouteHandler.growFaithHandler);

    router.define(PopularLeadersScreen.routeId,
        handler: RouteHandler.popularLeadersHandler);

    router.define(PersonalizingUserExperienceScreen.routeId,
        handler: RouteHandler.personalizingUserExperienceHandler);

    router.define(HomeScreen.routeId, handler: RouteHandler.homeHandler);

    router.define(DiscoverScreen.routeId,
        handler: RouteHandler.discoverHandler);

    router.define(PrayScreen.routeId, handler: RouteHandler.prayHandler);

    router.define(SleepScreen.routeId, handler: RouteHandler.sleepHandler);

    router.define(PodcastScreen.routeId, handler: RouteHandler.podcastHandler);

    router.define(ReadScreen.routeId, handler: RouteHandler.readHandler);

    router.define(SettingScreen.routeId, handler: RouteHandler.settingsHandler);

    router.define(DetailBookScreen.routeId,
        handler: RouteHandler.detailBookHandler);

    router.define(DetailPodcastScreen.routeId,
        handler: RouteHandler.detailPodcastHandler);

  }
}
