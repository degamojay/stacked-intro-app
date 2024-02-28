import 'package:stacked/stacked.dart';
import 'package:stacked_app/app/app.dialogs.dart';
import 'package:stacked_app/app/app.locator.dart';
import 'package:stacked_app/app/app.router.dart';
import 'package:stacked_app/models/user.dart';
import 'package:stacked_app/services/users_service.dart';
import 'package:stacked_services/stacked_services.dart';

class UsersViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _usersService = locator<UsersService>();

  List<User> _users = [];
  List<User> get users => _users;

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

  getUser(index){
    return users[index].name;
  }

  getId(index){
    return users[index].id;
  }
  
  getAddress(index){
    return users[index].address.suite + users[index].address.street + users[index].address.city + users[index].address.zipcode; 
  }

  getEmail(index){
    return users[index].email;
  }

  getPhone(index){
    return users[index].phone;
  }

}
