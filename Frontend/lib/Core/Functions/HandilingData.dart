import 'package:my_first_app/Core/Class/StatusRequest.dart';

Handlingdata(response) {
  if (response is StatutsRequest) {
    return response;
  } else
    return StatutsRequest.success;
}
