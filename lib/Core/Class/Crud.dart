import 'dart:convert';
import 'package:http/http.dart' as http;

class Crud {
  // Future<Either<StatutsRequest, Map>> postData(String linkurl, Map data) async {
  //   try {
  //     if (await checkinternat()) {
  //       var response = await http.post(Uri.parse(linkurl), body: data);
  //       if (response.statusCode == 200 || response.statusCode == 201) {
  //         Map responsebody = jsonDecode(response.body);
  //         return Right(responsebody);
  //       } else {
  //         return const Left(StatutsRequest.serverfailure);
  //       }
  //     } else {
  //       return const Left(StatutsRequest.offlinefailure);
  //     }
  //   } catch (_) {
  //     return const Left(StatutsRequest.serverexception);
  //   }
  // }
  postData(String url, Map data) async {
    try {
      var response = await http.post(Uri.parse(url), body: data);
      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);
        return responseBody;
      }
    } catch (c) {
      print("Error Catch $c");
    }
  }
}
