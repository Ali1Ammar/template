import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter/env/env.dart';

final envConfig = Provider((ref) => Env());
