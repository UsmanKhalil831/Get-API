import 'APIClient.dart';

class APISuccess{
  static getAuthentication() async{
    try{
      var response = await APIClient.getPosts();
    if(response == 200){

    // print('data get');
     //print(APIClient.responsebody);
      return (APIClient.responsebody);
    }
    }
    catch (e){
      print('Error = $e');
    } 
  }
}