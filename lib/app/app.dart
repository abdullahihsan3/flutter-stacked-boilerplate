import 'package:flutter_stacked_starter/ui/home/home_view.dart';
import 'package:flutter_stacked_starter/ui/second/second_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: SecondView)
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves No Purpose */
}
