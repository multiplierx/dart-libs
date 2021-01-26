import 'package:intl/intl.dart';

extension NumberFormatHelper on num {
  String decimal() => NumberFormat.currency(
        decimalDigits: 2,
        locale: 'pt_BR',
        name: 'BRL',
        symbol: '',
      ).format(this).trim();

  String currency() => NumberFormat.currency(
        decimalDigits: 2,
        locale: 'pt_BR',
        name: 'BRL',
        symbol: 'R\$',
      ).format(this);

  String percent() => NumberFormat('###.##').format(this) + '%';
}
