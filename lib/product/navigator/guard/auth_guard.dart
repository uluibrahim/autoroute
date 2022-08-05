import 'package:auto_route/auto_route.dart';

import 'package:autoroute/product/navigator/app_router.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    bool authenitcated = false;
    if (authenitcated) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      router.pushAndPopUntil(const DashboardRoute(), predicate: (value) {
        return false;
      });
    }
  }
}
