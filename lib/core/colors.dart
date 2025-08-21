import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundColor = Color(0xFFF8F7F7);
  static const Color fieldColor = Color(0xFFEFEDED);
  static const Color outlineColor = Color(0xFFE0E0E0);
  static const Color customGrey = Color(0xFFEEEEEE);
  static const Color hintLabelColor = Color(0xFF828282);
  static const Color mutedColor = Color(0xFF6C6C6C);

  static const Color green0 = Color(0xFFFFFFFF);
  static const Color green05 = Color(0xFFF1F7EB);
  static const Color green1 = Color(0xFFE3EFD9);
  static const Color green15 = Color(0xFFD5E7C2);
  static const Color green2 = Color(0xFFC7DFAD);
  static const Color green3 = Color(0xFFA4D0B5);
  static const Color green4 = Color(0xFF8EC050);
  static const Color green5 = Color(0xFF72B033);
  static const Color green6 = Color(0xFF58B029);
  static const Color green7 = Color(0xFF446A1F);
  static const Color green8 = Color(0xFF2E4614);
  static const Color green85 = Color(0xFF22350F);
  static const Color green9 = Color(0xFF17230A);
  static const Color green95 = Color(0xFF0B1105);
  static const Color green10 = Color(0xFF000000);

  static const Color red0 = Color(0xFFFECEC9);
  static const Color red05 = Color(0xFFF30101);
  static const Color red1 = Color(0xFFF18A5A);
  static const Color red15 = Color(0xFFEBA4A4);
  static const Color red2 = Color(0xFFE4B0BD);
  static const Color red3 = Color(0xFFDD8F5F);
  static const Color red4 = Color(0xFFC95332);
  static const Color red5 = Color(0xFFB80404);
  static const Color red6 = Color(0xFF980303);
  static const Color red7 = Color(0xFF700202);
  static const Color red8 = Color(0xFF4B0202);
  static const Color red85 = Color(0xFF380101);
  static const Color red9 = Color(0xFF250101);
  static const Color red95 = Color(0xFF130000);
  static const Color red10 = Color(0xFF000000);

  static const Color yellow0 = Color(0xFFFFFFFF);
  static const Color yellow05 = Color(0xFFFFE986);
  static const Color yellow1 = Color(0xFFFFD3CD);
  static const Color yellow15 = Color(0xFFFFED53);
  static const Color yellow2 = Color(0xFFFDE78A);
  static const Color yellow3 = Color(0xFFFDD468);
  static const Color yellow4 = Color(0xFFFCC635);
  static const Color yellow5 = Color(0xFFFBC203);
  static const Color yellow6 = Color(0xFFC99802);
  static const Color yellow7 = Color(0xFF977402);
  static const Color yellow8 = Color(0xFF644E01);
  static const Color yellow85 = Color(0xFF4B3A01);
  static const Color yellow9 = Color(0xFF322701);
  static const Color yellow95 = Color(0xFF191500);
  static const Color yellow10 = Color(0xFF000000);

  // Blue gradient colors (right column)
  static const Color blue0 = Color(0xFFFFFFFF);
  static const Color blue05 = Color(0xFFE9F3F8);
  static const Color blue1 = Color(0xFFD3E3F1);
  static const Color blue15 = Color(0xFFBCD5EA);
  static const Color blue2 = Color(0xFFA5C7E3);
  static const Color blue3 = Color(0xFF78ABD6);
  static const Color blue4 = Color(0xFF4B8FC8);
  static const Color blue5 = Color(0xFF1E739A);
  static const Color blue6 = Color(0xFF1B5C95);
  static const Color blue7 = Color(0xFF124570);
  static const Color blue8 = Color(0xFF0C2E4A);
  static const Color blue85 = Color(0xFF092338);
  static const Color blue9 = Color(0xFF061725);
  static const Color blue95 = Color(0xFF030C13);
  static const Color blue10 = Color(0xFF000000);

  static const Color primaryGreen = Color(0xFF72B033);
  static const Color primaryRed = Color(0xFFB80404);
  static const Color primaryYellow = Color(0xFFFBC203);
  static const Color primaryBlue = Color(0xFF1E739A);

  static Color getColor(String gradient, double intensity) {
    switch (gradient.toLowerCase()) {
      case 'green':
        return _getGreenColor(intensity);
      case 'red':
        return _getRedColor(intensity);
      case 'yellow':
        return _getYellowColor(intensity);
      case 'blue':
        return _getBlueColor(intensity);
      default:
        return Colors.grey;
    }
  }

  static Color _getGreenColor(double intensity) {
    if (intensity <= 0) return green0;
    if (intensity <= 0.5) return green05;
    if (intensity <= 1) return green1;
    if (intensity <= 1.5) return green15;
    if (intensity <= 2) return green2;
    if (intensity <= 3) return green3;
    if (intensity <= 4) return green4;
    if (intensity <= 5) return green5;
    if (intensity <= 6) return green6;
    if (intensity <= 7) return green7;
    if (intensity <= 8) return green8;
    if (intensity <= 8.5) return green85;
    if (intensity <= 9) return green9;
    if (intensity <= 9.5) return green95;
    return green10;
  }

  static Color _getRedColor(double intensity) {
    if (intensity <= 0) return red0;
    if (intensity <= 0.5) return red05;
    if (intensity <= 1) return red1;
    if (intensity <= 1.5) return red15;
    if (intensity <= 2) return red2;
    if (intensity <= 3) return red3;
    if (intensity <= 4) return red4;
    if (intensity <= 5) return red5;
    if (intensity <= 6) return red6;
    if (intensity <= 7) return red7;
    if (intensity <= 8) return red8;
    if (intensity <= 8.5) return red85;
    if (intensity <= 9) return red9;
    if (intensity <= 9.5) return red95;
    return red10;
  }

  static Color _getYellowColor(double intensity) {
    if (intensity <= 0) return yellow0;
    if (intensity <= 0.5) return yellow05;
    if (intensity <= 1) return yellow1;
    if (intensity <= 1.5) return yellow15;
    if (intensity <= 2) return yellow2;
    if (intensity <= 3) return yellow3;
    if (intensity <= 4) return yellow4;
    if (intensity <= 5) return yellow5;
    if (intensity <= 6) return yellow6;
    if (intensity <= 7) return yellow7;
    if (intensity <= 8) return yellow8;
    if (intensity <= 8.5) return yellow85;
    if (intensity <= 9) return yellow9;
    if (intensity <= 9.5) return yellow95;
    return yellow10;
  }

  static Color _getBlueColor(double intensity) {
    if (intensity <= 0) return blue0;
    if (intensity <= 0.5) return blue05;
    if (intensity <= 1) return blue1;
    if (intensity <= 1.5) return blue15;
    if (intensity <= 2) return blue2;
    if (intensity <= 3) return blue3;
    if (intensity <= 4) return blue4;
    if (intensity <= 5) return blue5;
    if (intensity <= 6) return blue6;
    if (intensity <= 7) return blue7;
    if (intensity <= 8) return blue8;
    if (intensity <= 8.5) return blue85;
    if (intensity <= 9) return blue9;
    if (intensity <= 9.5) return blue95;
    return blue10;
  }

  // Method to create gradient
  static LinearGradient createGradient(String type) {
    switch (type.toLowerCase()) {
      case 'green':
        return LinearGradient(
          colors: [green0, green5, green10],
          stops: [0.0, 0.5, 1.0],
        );
      case 'red':
        return LinearGradient(
          colors: [red0, red5, red10],
          stops: [0.0, 0.5, 1.0],
        );
      case 'yellow':
        return LinearGradient(
          colors: [yellow0, yellow5, yellow10],
          stops: [0.0, 0.5, 1.0],
        );
      case 'blue':
        return LinearGradient(
          colors: [blue0, blue5, blue10],
          stops: [0.0, 0.5, 1.0],
        );
      default:
        return LinearGradient(
          colors: [Colors.grey.shade100, Colors.grey.shade900],
        );
    }
  }
}
