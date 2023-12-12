import 'package:stacked/stacked.dart';
import 'APISuccess.dart';

class APIGetViewModel extends BaseViewModel{
  getAPI() async{
  print(APISuccess.getAuthentication());
  await APISuccess.getAuthentication();
  }
}