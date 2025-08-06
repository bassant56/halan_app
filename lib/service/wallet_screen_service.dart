import 'package:dio/dio.dart';
import 'package:halan_app/models/wallet_screen_model.dart';

class UserService {
  String endPoint = "https://299b1b04ee15.ngrok-free.app/home";
  late WalletScreenModel wallet;

  Future<WalletScreenModel> getWalletScreen() async {
    try {
      print('step1');
      var response = await Dio().get(endPoint);
      print('step2');
      var data = response.data;
      print('step3');
      // print('data is: ' + data);
      wallet = WalletScreenModel.fromJson(response.data);
      return wallet;
      //  return WalletScreenModel.fromJson(response.data);
    } catch (e) {
      print("Error: $e");
      rethrow;
    }
  }
}
