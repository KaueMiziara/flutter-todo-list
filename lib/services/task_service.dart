import 'package:flutter_dotenv/flutter_dotenv.dart';

class TaskService {
  static const String baseURL =
      'https://us-central1-flutterpad-bichinhosti.cloudfunctions.net/';

  static String userId = dotenv.env['USER_ID']!;
}
