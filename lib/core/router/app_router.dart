import 'package:auto_route/annotations.dart';

import '../../features/splash/presentation/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
  ],
)
class $AppRouter {}
