import 'package:http/http.dart' as http;
import 'package:qlpm_ckc_mobile_app/constants/app_string.dart';

class ClassService {
  Future<http.Response> getClasses() async {
    return await http.get(Uri.parse("${AppString.baseAPIstring}/class"));
  }
}
