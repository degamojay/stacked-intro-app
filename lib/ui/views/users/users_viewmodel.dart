import 'package:stacked/stacked.dart';
import 'package:stacked_app/app/app.dialogs.dart';
import 'package:stacked_app/app/app.locator.dart';
import 'package:stacked_app/app/app.router.dart';
import 'package:stacked_app/services/users_service.dart';
import 'package:stacked_services/stacked_services.dart';

class UsersViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _usersService = locator<UsersService>();

  List<String> _users = [];
  List<String> get users => _users;

  navigateToHomeView() async {
    await _navigationService.navigateToHomeView();
  }

  void showDialogTome() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Hentji Czar Tome!',
      description: 'I need girlfriends, Add me on Facebook!',
    );
  }

  getUsersFromService() async {
      _users = await _usersService.getUsers();
      rebuildUi();
    }

}
