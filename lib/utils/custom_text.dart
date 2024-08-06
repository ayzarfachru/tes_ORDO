import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_size.dart';

// (0.002 * MediaQuery.of(context).size.width).toInt().toDouble() == 1
// (0.005 * MediaQuery.of(context).size.width).toInt().toDouble() == 2
// (0.007 * MediaQuery.of(context).size.width).toInt().toDouble() == 3
// (0.009 * MediaQuery.of(context).size.width).toInt().toDouble() == 4
// (0.012 * MediaQuery.of(context).size.width).toInt().toDouble() == 5
// (0.014 * MediaQuery.of(context).size.width).toInt().toDouble() == 6
// (0.017 * MediaQuery.of(context).size.width).toInt().toDouble() == 7
// (0.019 * MediaQuery.of(context).size.width).toInt().toDouble() == 8
// (0.021 * MediaQuery.of(context).size.width).toInt().toDouble() == 9
// (0.024 * MediaQuery.of(context).size.width).toInt().toDouble() == 10
// (0.026 * MediaQuery.of(context).size.width).toInt().toDouble() == 11
// (0.028 * MediaQuery.of(context).size.width).toInt().toDouble() == 12
// (0.031 * MediaQuery.of(context).size.width).toInt().toDouble() == 13
// (0.033 * MediaQuery.of(context).size.width).toInt().toDouble() == 14
// (0.035 * MediaQuery.of(context).size.width).toInt().toDouble() == 15
// (0.038 * MediaQuery.of(context).size.width).toInt().toDouble() == 16
// (0.040 * MediaQuery.of(context).size.width).toInt().toDouble() == 17
// (0.042 * MediaQuery.of(context).size.width).toInt().toDouble() == 18
// (0.045 * MediaQuery.of(context).size.width).toInt().toDouble() == 19
// (0.047 * MediaQuery.of(context).size.width).toInt().toDouble() == 20
// (0.050 * MediaQuery.of(context).size.width).toInt().toDouble() == 21
// (0.052 * MediaQuery.of(context).size.width).toInt().toDouble() == 22
// (0.054 * MediaQuery.of(context).size.width).toInt().toDouble() == 23
// (0.057 * MediaQuery.of(context).size.width).toInt().toDouble() == 24
// (0.059 * MediaQuery.of(context).size.width).toInt().toDouble() == 25
// (0.061 * MediaQuery.of(context).size.width).toInt().toDouble() == 26
// (0.064 * MediaQuery.of(context).size.width).toInt().toDouble() == 27
// (0.066 * MediaQuery.of(context).size.width).toInt().toDouble() == 28
// (0.068 * MediaQuery.of(context).size.width).toInt().toDouble() == 29
// (0.071 * MediaQuery.of(context).size.width).toInt().toDouble() == 30
// (0.073 * MediaQuery.of(context).size.width).toInt().toDouble() == 31
// (0.076 * MediaQuery.of(context).size.width).toInt().toDouble() == 32
// (0.078 * MediaQuery.of(context).size.width).toInt().toDouble() == 33
// (0.080 * MediaQuery.of(context).size.width).toInt().toDouble() == 34
// (0.083 * MediaQuery.of(context).size.width).toInt().toDouble() == 35
// (0.085 * MediaQuery.of(context).size.width).toInt().toDouble() == 36
// (0.087 * MediaQuery.of(context).size.width).toInt().toDouble() == 37
// (0.090 * MediaQuery.of(context).size.width).toInt().toDouble() == 38
// (0.092 * MediaQuery.of(context).size.width).toInt().toDouble() == 39
// (0.094 * MediaQuery.of(context).size.width).toInt().toDouble() == 40
// (0.097 * MediaQuery.of(context).size.width).toInt().toDouble() == 41
// (0.099 * MediaQuery.of(context).size.width).toInt().toDouble() == 42
// (0.102 * MediaQuery.of(context).size.width).toInt().toDouble() == 43
// (0.104 * MediaQuery.of(context).size.width).toInt().toDouble() == 44
// (0.106 * MediaQuery.of(context).size.width).toInt().toDouble() == 45
// (0.109 * MediaQuery.of(context).size.width).toInt().toDouble() == 46
// (0.111 * MediaQuery.of(context).size.width).toInt().toDouble() == 47
// (0.113 * MediaQuery.of(context).size.width).toInt().toDouble() == 48
// (0.116 * MediaQuery.of(context).size.width).toInt().toDouble() == 49
// (0.118 * MediaQuery.of(context).size.width).toInt().toDouble() == 50
// (0.120 * MediaQuery.of(context).size.width).toInt().toDouble() == 51
// (0.123 * MediaQuery.of(context).size.width).toInt().toDouble() == 52
// (0.125 * MediaQuery.of(context).size.width).toInt().toDouble() == 53
// (0.127 * MediaQuery.of(context).size.width).toInt().toDouble() == 54
// (0.130 * MediaQuery.of(context).size.width).toInt().toDouble() == 55
// (0.132 * MediaQuery.of(context).size.width).toInt().toDouble() == 56
// (0.135 * MediaQuery.of(context).size.width).toInt().toDouble() == 57
// (0.137 * MediaQuery.of(context).size.width).toInt().toDouble() == 58
// (0.139 * MediaQuery.of(context).size.width).toInt().toDouble() == 59
// (0.142 * MediaQuery.of(context).size.width).toInt().toDouble() == 60
// (0.144 * MediaQuery.of(context).size.width).toInt().toDouble() == 61
// (0.146 * MediaQuery.of(context).size.width).toInt().toDouble() == 62
// (0.149 * MediaQuery.of(context).size.width).toInt().toDouble() == 63
// (0.151 * MediaQuery.of(context).size.width).toInt().toDouble() == 64
// (0.153 * MediaQuery.of(context).size.width).toInt().toDouble() == 65
// (0.156 * MediaQuery.of(context).size.width).toInt().toDouble() == 66
// (0.158 * MediaQuery.of(context).size.width).toInt().toDouble() == 67
// (0.161 * MediaQuery.of(context).size.width).toInt().toDouble() == 68
// (0.163 * MediaQuery.of(context).size.width).toInt().toDouble() == 69
// (0.165 * MediaQuery.of(context).size.width).toInt().toDouble() == 70
// (0.168 * MediaQuery.of(context).size.width).toInt().toDouble() == 71
// (0.170 * MediaQuery.of(context).size.width).toInt().toDouble() == 72
// (0.172 * MediaQuery.of(context).size.width).toInt().toDouble() == 73
// (0.175 * MediaQuery.of(context).size.width).toInt().toDouble() == 74
// (0.177 * MediaQuery.of(context).size.width).toInt().toDouble() == 75
// (0.179 * MediaQuery.of(context).size.width).toInt().toDouble() == 76
// (0.182 * MediaQuery.of(context).size.width).toInt().toDouble() == 77
// (0.184 * MediaQuery.of(context).size.width).toInt().toDouble() == 78
// (0.187 * MediaQuery.of(context).size.width).toInt().toDouble() == 79
// (0.189 * MediaQuery.of(context).size.width).toInt().toDouble() == 80
// (0.191 * MediaQuery.of(context).size.width).toInt().toDouble() == 81
// (0.194 * MediaQuery.of(context).size.width).toInt().toDouble() == 82
// (0.196 * MediaQuery.of(context).size.width).toInt().toDouble() == 83
// (0.198 * MediaQuery.of(context).size.width).toInt().toDouble() == 84
// (0.201 * MediaQuery.of(context).size.width).toInt().toDouble() == 85
// (0.203 * MediaQuery.of(context).size.width).toInt().toDouble() == 86
// (0.205 * MediaQuery.of(context).size.width).toInt().toDouble() == 87
// (0.208 * MediaQuery.of(context).size.width).toInt().toDouble() == 88
// (0.210 * MediaQuery.of(context).size.width).toInt().toDouble() == 89
// (0.212 * MediaQuery.of(context).size.width).toInt().toDouble() == 90
// (0.215 * MediaQuery.of(context).size.width).toInt().toDouble() == 91
// (0.217 * MediaQuery.of(context).size.width).toInt().toDouble() == 92
// (0.220 * MediaQuery.of(context).size.width).toInt().toDouble() == 93
// (0.222 * MediaQuery.of(context).size.width).toInt().toDouble() == 94
// (0.224 * MediaQuery.of(context).size.width).toInt().toDouble() == 95
// (0.227 * MediaQuery.of(context).size.width).toInt().toDouble() == 96
// (0.229 * MediaQuery.of(context).size.width).toInt().toDouble() == 97
// (0.231 * MediaQuery.of(context).size.width).toInt().toDouble() == 98
// (0.234 * MediaQuery.of(context).size.width).toInt().toDouble() == 99
// (0.236 * MediaQuery.of(context).size.width).toInt().toDouble() == 100
// (0.002 * MediaQuery.of(context).size.width).toInt().toDouble() == 1
// (0.005 * MediaQuery.of(context).size.width).toInt().toDouble() == 2
// (0.007 * MediaQuery.of(context).size.width).toInt().toDouble() == 3
// (0.009 * MediaQuery.of(context).size.width).toInt().toDouble() == 4
// (0.012 * MediaQuery.of(context).size.width).toInt().toDouble() == 5
// (0.014 * MediaQuery.of(context).size.width).toInt().toDouble() == 6
// (0.017 * MediaQuery.of(context).size.width).toInt().toDouble() == 7
// (0.019 * MediaQuery.of(context).size.width).toInt().toDouble() == 8
// (0.021 * MediaQuery.of(context).size.width).toInt().toDouble() == 9
// (0.024 * MediaQuery.of(context).size.width).toInt().toDouble() == 10
// (0.026 * MediaQuery.of(context).size.width).toInt().toDouble() == 11
// (0.028 * MediaQuery.of(context).size.width).toInt().toDouble() == 12
// (0.031 * MediaQuery.of(context).size.width).toInt().toDouble() == 13
// (0.033 * MediaQuery.of(context).size.width).toInt().toDouble() == 14
// (0.035 * MediaQuery.of(context).size.width).toInt().toDouble() == 15
// (0.038 * MediaQuery.of(context).size.width).toInt().toDouble() == 16
// (0.040 * MediaQuery.of(context).size.width).toInt().toDouble() == 17
// (0.042 * MediaQuery.of(context).size.width).toInt().toDouble() == 18
// (0.045 * MediaQuery.of(context).size.width).toInt().toDouble() == 19
// (0.047 * MediaQuery.of(context).size.width).toInt().toDouble() == 20
// (0.050 * MediaQuery.of(context).size.width).toInt().toDouble() == 21
// (0.052 * MediaQuery.of(context).size.width).toInt().toDouble() == 22
// (0.054 * MediaQuery.of(context).size.width).toInt().toDouble() == 23
// (0.057 * MediaQuery.of(context).size.width).toInt().toDouble() == 24
// (0.059 * MediaQuery.of(context).size.width).toInt().toDouble() == 25
// (0.061 * MediaQuery.of(context).size.width).toInt().toDouble() == 26
// (0.064 * MediaQuery.of(context).size.width).toInt().toDouble() == 27
// (0.066 * MediaQuery.of(context).size.width).toInt().toDouble() == 28
// (0.068 * MediaQuery.of(context).size.width).toInt().toDouble() == 29
// (0.071 * MediaQuery.of(context).size.width).toInt().toDouble() == 30
// (0.073 * MediaQuery.of(context).size.width).toInt().toDouble() == 31
// (0.076 * MediaQuery.of(context).size.width).toInt().toDouble() == 32
// (0.078 * MediaQuery.of(context).size.width).toInt().toDouble() == 33
// (0.080 * MediaQuery.of(context).size.width).toInt().toDouble() == 34
// (0.083 * MediaQuery.of(context).size.width).toInt().toDouble() == 35
// (0.085 * MediaQuery.of(context).size.width).toInt().toDouble() == 36
// (0.087 * MediaQuery.of(context).size.width).toInt().toDouble() == 37
// (0.090 * MediaQuery.of(context).size.width).toInt().toDouble() == 38
// (0.092 * MediaQuery.of(context).size.width).toInt().toDouble() == 39
// (0.094 * MediaQuery.of(context).size.width).toInt().toDouble() == 40
// (0.097 * MediaQuery.of(context).size.width).toInt().toDouble() == 41
// (0.099 * MediaQuery.of(context).size.width).toInt().toDouble() == 42
// (0.102 * MediaQuery.of(context).size.width).toInt().toDouble() == 43
// (0.104 * MediaQuery.of(context).size.width).toInt().toDouble() == 44
// (0.106 * MediaQuery.of(context).size.width).toInt().toDouble() == 45
// (0.109 * MediaQuery.of(context).size.width).toInt().toDouble() == 46
// (0.111 * MediaQuery.of(context).size.width).toInt().toDouble() == 47
// (0.113 * MediaQuery.of(context).size.width).toInt().toDouble() == 48
// (0.116 * MediaQuery.of(context).size.width).toInt().toDouble() == 49
// (0.118 * MediaQuery.of(context).size.width).toInt().toDouble() == 50
// (0.120 * MediaQuery.of(context).size.width).toInt().toDouble() == 51
// (0.123 * MediaQuery.of(context).size.width).toInt().toDouble() == 52
// (0.125 * MediaQuery.of(context).size.width).toInt().toDouble() == 53
// (0.127 * MediaQuery.of(context).size.width).toInt().toDouble() == 54
// (0.130 * MediaQuery.of(context).size.width).toInt().toDouble() == 55
// (0.132 * MediaQuery.of(context).size.width).toInt().toDouble() == 56
// (0.135 * MediaQuery.of(context).size.width).toInt().toDouble() == 57
// (0.137 * MediaQuery.of(context).size.width).toInt().toDouble() == 58
// (0.139 * MediaQuery.of(context).size.width).toInt().toDouble() == 59
// (0.142 * MediaQuery.of(context).size.width).toInt().toDouble() == 60
// (0.144 * MediaQuery.of(context).size.width).toInt().toDouble() == 61
// (0.146 * MediaQuery.of(context).size.width).toInt().toDouble() == 62
// (0.149 * MediaQuery.of(context).size.width).toInt().toDouble() == 63
// (0.151 * MediaQuery.of(context).size.width).toInt().toDouble() == 64
// (0.153 * MediaQuery.of(context).size.width).toInt().toDouble() == 65
// (0.156 * MediaQuery.of(context).size.width).toInt().toDouble() == 66
// (0.158 * MediaQuery.of(context).size.width).toInt().toDouble() == 67
// (0.161 * MediaQuery.of(context).size.width).toInt().toDouble() == 68
// (0.163 * MediaQuery.of(context).size.width).toInt().toDouble() == 69
// (0.165 * MediaQuery.of(context).size.width).toInt().toDouble() == 70
// (0.168 * MediaQuery.of(context).size.width).toInt().toDouble() == 71
// (0.170 * MediaQuery.of(context).size.width).toInt().toDouble() == 72
// (0.172 * MediaQuery.of(context).size.width).toInt().toDouble() == 73
// (0.175 * MediaQuery.of(context).size.width).toInt().toDouble() == 74
// (0.177 * MediaQuery.of(context).size.width).toInt().toDouble() == 75
// (0.179 * MediaQuery.of(context).size.width).toInt().toDouble() == 76
// (0.182 * MediaQuery.of(context).size.width).toInt().toDouble() == 77
// (0.184 * MediaQuery.of(context).size.width).toInt().toDouble() == 78
// (0.187 * MediaQuery.of(context).size.width).toInt().toDouble() == 79
// (0.189 * MediaQuery.of(context).size.width).toInt().toDouble() == 80
// (0.191 * MediaQuery.of(context).size.width).toInt().toDouble() == 81
// (0.194 * MediaQuery.of(context).size.width).toInt().toDouble() == 82
// (0.196 * MediaQuery.of(context).size.width).toInt().toDouble() == 83
// (0.198 * MediaQuery.of(context).size.width).toInt().toDouble() == 84
// (0.201 * MediaQuery.of(context).size.width).toInt().toDouble() == 85
// (0.203 * MediaQuery.of(context).size.width).toInt().toDouble() == 86
// (0.205 * MediaQuery.of(context).size.width).toInt().toDouble() == 87
// (0.208 * MediaQuery.of(context).size.width).toInt().toDouble() == 88
// (0.210 * MediaQuery.of(context).size.width).toInt().toDouble() == 89
// (0.212 * MediaQuery.of(context).size.width).toInt().toDouble() == 90
// (0.215 * MediaQuery.of(context).size.width).toInt().toDouble() == 91
// (0.217 * MediaQuery.of(context).size.width).toInt().toDouble() == 92
// (0.220 * MediaQuery.of(context).size.width).toInt().toDouble() == 93
// (0.222 * MediaQuery.of(context).size.width).toInt().toDouble() == 94
// (0.224 * MediaQuery.of(context).size.width).toInt().toDouble() == 95
// (0.227 * MediaQuery.of(context).size.width).toInt().toDouble() == 96
// (0.229 * MediaQuery.of(context).size.width).toInt().toDouble() == 97
// (0.231 * MediaQuery.of(context).size.width).toInt().toDouble() == 98
// (0.234 * MediaQuery.of(context).size.width).toInt().toDouble() == 99
// (0.236 * MediaQuery.of(context).size.width).toInt().toDouble() == 100
class CustomText {
  static Widget text(
      {String? text,
      double? size,
      double? minSize,
      int? maxLines,
      FontWeight? weight,
      Color? color,
      BuildContext? context}) {
    return AutoSizeText(
      text!,
      minFontSize: double.parse(((CustomSize.sizeWidth(context!) * size)
          .toString()
          .contains('.') ==
          true)
          ? (CustomSize.sizeWidth(context) * size).toString().split('.')[0]
          : (CustomSize.sizeWidth(context) * size).toString()),
      style: GoogleFonts.outfit(
          textStyle: TextStyle(
        fontWeight: weight,
        color: color ??= Colors.black,
        height: 1.2,
      )),
      maxLines: maxLines ?? 1,
    );
  }

  static Widget customText(
      {String? text,
        double? size,
        double? minSize,
        int? maxLines,
        FontWeight? weight,
        Color? color,
        BuildContext? context,
        double? width,
        Color? containerColor,
        String? iconImage = '',
        double? radius,
        double? vertical,
        double? horizontal}) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: containerColor, // Background color of the container
        borderRadius: BorderRadius.circular(radius ?? 0), // Rounded corners
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          (iconImage != '')
              ? Image.asset(
                height: double.parse(((CustomSize.sizeWidth(context!) * size)
                    .toString()
                    .contains('.') ==
                    true)
                    ? (CustomSize.sizeWidth(context) * size)
                    .toString()
                    .split('.')[0]
                    : (CustomSize.sizeWidth(context) * size).toString()),
                width: double.parse(((CustomSize.sizeWidth(context!) * size)
                    .toString()
                    .contains('.') ==
                    true)
                    ? (CustomSize.sizeWidth(context) * size)
                    .toString()
                    .split('.')[0]
                    : (CustomSize.sizeWidth(context) * size).toString()),
                iconImage!,
                fit: BoxFit.contain,
                color: color,
              )
              : const SizedBox(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: CustomText.text(
                  color: color,
                  text: text,
                  context: context,
                  size: size,
                  weight: weight,
                  maxLines: 2),
            ),
          ),
        ],
      ),
    );
  }

  static TextSpan textSpan(
      {String? text,
        double? size,
        double? minSize,
        FontWeight? weight,
        Color? color,
        BuildContext? context}) {
    return TextSpan(
      text: text!,
      style: GoogleFonts.outfit(
          textStyle: TextStyle(
            fontSize: double.parse(((CustomSize.sizeWidth(context!) * size)
                .toString()
                .contains('.') ==
                true)
                ? (CustomSize.sizeWidth(context) * size).toString().split('.')[0]
                : (CustomSize.sizeWidth(context) * size).toString()),
            fontWeight: weight,
            color: color ??= Colors.black,
            height: 1.2,
          )),
    );
  }
}
