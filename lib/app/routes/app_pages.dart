import 'package:fleetdesk/app/bindings/alerts_binding.dart';
import 'package:fleetdesk/app/bindings/bluetooth_binding.dart';
import 'package:fleetdesk/app/bindings/configuration_binding.dart';
import 'package:fleetdesk/app/bindings/create_account_binding.dart';
import 'package:fleetdesk/app/bindings/documents_binding.dart';
import 'package:fleetdesk/app/bindings/geolocator_binding.dart';
import 'package:fleetdesk/app/bindings/login_binding.dart';
import 'package:fleetdesk/app/bindings/menu_binding.dart';
import 'package:fleetdesk/app/bindings/messages_binding.dart';
import 'package:fleetdesk/app/bindings/my_account_binding.dart';
import 'package:fleetdesk/app/bindings/pin_code_binding.dart';
import 'package:fleetdesk/app/bindings/ranking_binding.dart';
import 'package:fleetdesk/app/bindings/recovery_password_notification_binding.dart';
import 'package:fleetdesk/app/bindings/tasks_binding.dart';
import 'package:fleetdesk/app/bindings/tasks_info_binding.dart';
import 'package:fleetdesk/app/bindings/vehicle_plate_binding.dart';
import 'package:fleetdesk/app/ui/android/alerts/alerts_page.dart';
import 'package:fleetdesk/app/ui/android/configuration/configuration_page.dart';
import 'package:fleetdesk/app/ui/android/create-account/create_account_page.dart';
import 'package:fleetdesk/app/ui/android/demos/bluetooth_page.dart';
import 'package:fleetdesk/app/ui/android/demos/geolocator_page.dart';
import 'package:fleetdesk/app/ui/android/documents/documents_page.dart';
import 'package:fleetdesk/app/ui/android/login/login_page.dart';
import 'package:fleetdesk/app/ui/android/menu/menu_page.dart';
import 'package:fleetdesk/app/ui/android/my_account/my_account_page.dart';
import 'package:fleetdesk/app/ui/android/pin_code/pin_code_page.dart';
import 'package:fleetdesk/app/ui/android/ranking/ranking_page.dart';
import 'package:fleetdesk/app/ui/android/recovery_password/recovery_password_notification.dart';
import 'package:fleetdesk/app/ui/android/recovery_password/recovery_password_page.dart';
import 'package:fleetdesk/app/ui/android/splash/splash_page.dart';
import 'package:fleetdesk/app/ui/android/tasks/tasks_info_page.dart';
import 'package:fleetdesk/app/ui/android/tasks/tasks_page.dart';
import 'package:fleetdesk/app/ui/android/vehicle_plate/vehicle_plate_page.dart';
import 'package:fleetdesk/app/ui/messages.dart';
import 'package:get/get.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashPage(),
    ),
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(
        name: Routes.GEOLOCATOR,
        page: () => GeolocatorPage(),
        binding: GeolocatorBinding()),
    GetPage(
        name: Routes.PW_RECOVERY,
        page: () => RecoveryPasswordPage(),
        binding: GeolocatorBinding()),
    GetPage(
        name: Routes.PW_RECOVERY_NOTIFICATION,
        page: () => RecoveryPasswordNotificationPage(),
        binding: RecoveryPasswordNotificationBinding()),
    GetPage(
        name: Routes.CREATE_ACCOUNT,
        page: () => CreateAccountPage(),
        binding: CreateAccountBinding()),
    GetPage(
        name: Routes.BLUETOOTH,
        page: () => BluetoothPage(),
        binding: BluetoothBinding()),
    GetPage(name: Routes.MENU, page: () => MenuPage(), binding: MenuBinding()),
    GetPage(
        name: Routes.CONFIGURATION,
        page: () => ConfigurationPage(),
        binding: ConfigurationBinding()),
//    GetPage(name: Routes.CHAT, page: () => ChatPage(), binding: ChatBinding()),
    GetPage(
        name: Routes.BLUETOOTHPAGE,
        page: () => BluetoothPage(),
        binding: BluetoothBinding()),
    GetPage(
        name: Routes.MY_ACCOUNT,
        page: () => MyAccountPage(),
        binding: MyAccountBinding()),
    GetPage(
        name: Routes.RANKING,
        page: () => RankingPage(),
        binding: RankingBinding()),
    GetPage(
        name: Routes.TASKS, page: () => TasksPage(), binding: TasksBinding()),
    GetPage(
        name: Routes.MESSAGES,
        page: () => MessagesPage(),
        binding: MessagesBinding()),
    GetPage(
        name: Routes.TASKS_INFO,
        page: () => TasksInfoPage(),
        binding: TasksInfoBinding()),
    GetPage(
        name: Routes.CONFIGURATIONPAGE,
        page: () => ConfigurationPage(),
        binding: ConfigurationBinding()),
    GetPage(
        name: Routes.DOCUMENTS,
        page: () => DocumentsPage(),
        binding: DocumentsBinding()),
    GetPage(
      name: Routes.VEHICLEPLATE,
      page: () => VehiclePlatePage(),
      binding: VehiclePlateBinding()),
    GetPage(
      name: Routes.PINCODE,
      page: () => PinCodePage(),
      binding: PinCodeBinding()),
    GetPage(
      name: Routes.ALERTS,
      page: () => AlertsPage(),
      binding: AlertsBinding()),
    ];
  }