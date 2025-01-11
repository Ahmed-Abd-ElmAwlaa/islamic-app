import 'package:workmanager/workmanager.dart';
import 'local_notification_service.dart';

class WorkManagerService {
  void registerMyTask() async {
    //register my task
    await Workmanager().registerPeriodicTask(
      'id1',
      'show simple notification',
      frequency: const Duration(minutes: 15),
    );
  }

  //init work manager service
  Future<void> init() async {
    await Workmanager().initialize(actionTask);
    registerMyTask();
  }

}

@pragma('vm-entry-point')
void actionTask() {
  //show notification
  Workmanager().executeTask((taskName, inputData) {
    LocalNotificationService.showDailySchduledNotification1();
    LocalNotificationService.showDailySchduledNotification2();
    LocalNotificationService.showDailySchduledNotification3();
    LocalNotificationService.showDailySchduledNotification4();
    LocalNotificationService.showDailySchduledNotification5();
    return Future.value(true);
  });
}

