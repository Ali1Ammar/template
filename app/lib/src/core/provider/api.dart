import 'package:riverpod/riverpod.dart';
import 'package:odoo_api/odoo_api.dart';

final apiServiceProvider = Provider((ref) {
  return (authClient: Odoo.create());
});
