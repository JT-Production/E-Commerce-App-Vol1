import 'package:intl/intl.dart';

class JFormatter {
  static String formatDate(DateTime ? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date); //Customize the date format as needed
  }
  
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount); // Customize the currency locale and symbol as needed
  }
  
  static String formatPhoneNumber (String phoneNumber) {
    //Assuming a 10- digit us phone number format (123) 456-7890
    if (phoneNumber.length == 10){
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    // Add more custom phone number formatting logic for different formats if needed
    return phoneNumber;
  }


  // Not fully tested
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // remove any non-digit characters from the phone number
    var digitOnly = phoneNumber.replaceAll(RegExp(r'D'), '');

    //extract the country code from the digitsOnly
    String countryCode = '+${digitOnly.substring(0, 2)}';
    digitOnly = digitOnly.substring(2);

    // add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while (i < digitOnly.length){
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength  = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitOnly.substring(i, end));

      if (end < digitOnly.length) {
        formattedNumber.write('');
      }
      i = end;
    }
    return phoneNumber;
  }
}