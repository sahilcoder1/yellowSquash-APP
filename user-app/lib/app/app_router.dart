import 'package:auto_route/auto_route.dart';
import 'package:yellow_squash/app/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: LoginRoute.page,
    ),
    AutoRoute(page: MobileInputRoute.page),
    AutoRoute(page: OtpVerifyRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: ResetRoute.page),
    AutoRoute(page: UpdatePasswordRoute.page),
    AutoRoute(page: ProgramsRoute.page),
    AutoRoute(page: ForgetOtpVerifyRoute.page),
    AutoRoute(page: GuestProgramRoute.page),
    AutoRoute(page: GuestNotAccess.page),
    AutoRoute(page: NotifyRoute.page),
    AutoRoute(page: WebinarsRoute.page),
    AutoRoute(page: ProgramDescriptionRoute.page),
    AutoRoute(page: UpcomingProgramsRoute.page),
    AutoRoute(page: HealthPediaRoute.page),
    AutoRoute(page: RefactoredUI.page),
    AutoRoute(page: MyProgramRoute.page),
    AutoRoute(page: Settings.page),
    AutoRoute(page: MyWebinarsRoute.page),
    AutoRoute(page: GuestHouse.page),
    AutoRoute(page: WebinarDescriptionRoute.page),
    AutoRoute(page: UserProfileRoute.page),
    AutoRoute(page: ExpertRoute.page),
    AutoRoute(page: ExpertDescriptionRoute.page),
    AutoRoute(page: HealthDescriptionRoute.page),
    AutoRoute(page: YellowHome.page),
    AutoRoute(page: MyTabbedPage.page),
    AutoRoute(page: MywebinarPurchased.page),
    AutoRoute(page: CheckOutPageRoute.page),
    AutoRoute(page: GuestWebinarsRoute.page),
    AutoRoute(page: GuestWebinarDescriptionRoute.page),
    AutoRoute(page: GuestSubHome.page),
    AutoRoute(page: GuestMyTabbedPage.page),
    AutoRoute(page: GuestExpertRoute.page),
    AutoRoute(page: GuestExpertDescriptionRoute.page),
    AutoRoute(page: GuestProgramDescriptionRoute.page),
    AutoRoute(page: MyProgramRoute.page),
    AutoRoute(page: MyprogramPurchased.page),
    AutoRoute(page: WebinarThankyou.page),
    AutoRoute(page: PaymentThankyou.page),
    AutoRoute(page: UserProfileRoute.page),
    AutoRoute(page: GuestYellowStore.page),
    AutoRoute(page: UserProfileAlertDialog.page),
    AutoRoute(page: YellowStore.page),
    AutoRoute(page: MySwitchList.page),
    AutoRoute(page: MyCalendar.page),
    AutoRoute(page: NavigaitonBar.page),
    AutoRoute(page: SwitchListWebinar.page),
    AutoRoute(page: Privacy.page),
  ];
}
