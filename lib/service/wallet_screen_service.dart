import 'package:dio/dio.dart';
import 'package:halan_app/models/wallet_screen_model.dart';

class UserService {
  final Dio _client = Dio();
  String endPoint = "https://3eacddab8f2a.ngrok-free.app/home";
  late WalletScreenModel wallet;

  Future<WalletScreenModel> getWalletScreen() async {
    try {
      print('step1');
      var response = await _client.get(endPoint);
      print('step2');
      var data = response.data;
      print('step3');
      print('data is: ' + data.toString());
      wallet = WalletScreenModel.fromJson(response.data);
      return wallet;
      //  return WalletScreenModel.fromJson(response.data);
    } catch (e) {
      print("Error: $e");
      rethrow;
    }
  }
}
