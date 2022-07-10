import 'package:project/models/apimodel.dart';
import 'package:http/http.dart' as http;

class Networkhelper {
  Future<List<MApi>?> MApiresponse() async {
    var response =
        await http.get(Uri.parse('http://mark.bslmeiyu.com/api/getplaces'));

    if (response.statusCode == 200) {
      var body = response.body;
      var conversion = mApiFromJson(body);
      return conversion;
    } else {
      print('Error');
    }
  }
}
