import 'package:app/src/presentation/onboarding/page/onboarding_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'route.gr.dart';

final appRouterProvider = Provider((ref) => AppRouter(ref: ref));

@AutoRouterConfig(
  replaceInRouteName: 'Page,PageRoute',
)
class AppRouter extends RootStackRouter {
  final Ref ref;

  AppRouter({super.navigatorKey, required this.ref});

  @override
  late final List<AutoRoute> routes = [
    AutoRoute(page: OnboardingPageRoute.page, initial: true),
  ];

  @override
  RouteType get defaultRouteType => const RouteType.custom(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        reverseDurationInMilliseconds: 300,
      );
}
