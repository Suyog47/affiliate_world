import 'package:affiliate_world/constants/colors.dart';
import 'package:flutter/material.dart';

const inputDecor = InputDecoration(
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: themeColor,
      width: 2,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: themeColor,
      width: 2,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: themeColor,
      width: 2,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: themeColor,
      width: 2,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  ),
);
