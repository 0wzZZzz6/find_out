import 'package:auto_route/annotations.dart';

import '../../features/splash/presentation/splash_page.dart';
import '../../features/welcome/presentation/pages/welcome_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage),
    AutoRoute(page: WelcomePage, initial: true),
  ],
)
class $AppRouter {}
