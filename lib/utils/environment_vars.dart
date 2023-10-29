import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentVars {
  static final skartnerServer = dotenv.env['SKARTNER_SERVER'];
}
