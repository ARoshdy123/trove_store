import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date); // Customize the date format as needed
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount); // Customize the currency locale and symbol as needed
  }
  static String formatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Check for Egyptian number format
    if (digitsOnly.startsWith('20') && digitsOnly.length == 12) {
      // Format as +20 1XX XXX XXXX
      return '+20 ${digitsOnly.substring(2, 3)}${digitsOnly.substring(3, 5)} ${digitsOnly.substring(5, 8)} ${digitsOnly.substring(8)}';
    } else if (digitsOnly.startsWith('01') && digitsOnly.length == 10) {
      // Format as (01X) XXX XXXX for local Egyptian number
      return '(${digitsOnly.substring(0, 3)}) ${digitsOnly.substring(3, 6)} ${digitsOnly.substring(6)}';
    }

    // Fallback for U.S.-style numbers
    if (digitsOnly.length == 10) {
      // Format as (123) 456-7890
      return '(${digitsOnly.substring(0, 3)}) ${digitsOnly.substring(3, 6)} ${digitsOnly.substring(6)}';
    } else if (digitsOnly.length == 11) {
      // Format as (1234) 567-890 for 11-digit numbers
      return '(${digitsOnly.substring(0, 4)}) ${digitsOnly.substring(4, 7)} ${digitsOnly.substring(7)}';
    }

    // Return original phone number if no format matches
    return phoneNumber;
  }

  // Formats an international phone number with flexible formatting logic
  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+20') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }

    return formattedNumber.toString();
  }
}





/*
* Usage example:
* print(TFormatter.formatPhoneNumber("0123456789"));        // Output: (012) 345 6789
* print(TFormatter.formatPhoneNumber("201234567890"));      // Output: +20 12 345 6789
* print(TFormatter.formatPhoneNumber("1234567890"));        // Output: (123) 456-7890 (US format fallback)
*/