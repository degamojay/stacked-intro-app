import 'package:stacked/stacked.dart';
import 'package:stacked_app/app/app.dialogs.dart';
import 'package:stacked_app/app/app.locator.dart';
import 'package:stacked_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class UsersViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();


  navigateToHomeView() async {
    await _navigationService.navigateToHomeView();
  }

  void showDialogTome (){
    _dialogService.showCustomDialog(
      variant:DialogType.infoAlert,
      title: 'I am Tome and I love childrens!',
      description: 'I also love men!',
    );
  }

  


}
