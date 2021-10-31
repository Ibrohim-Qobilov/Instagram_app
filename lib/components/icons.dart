import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Icon cameraIcon = Icon(
  CupertinoIcons.camera,
  size: 30,
);

// Botton Navigation Bar uchun
SvgPicture home1 = SvgPicture.asset(
  "assets/icons/home_active_icon.svg",
  color: Colors.black,
  height: 25,
  width: 25,
);
SvgPicture home2 = SvgPicture.asset(
  "assets/icons/home_icon.svg",
  color: Colors.grey.shade400,
  height: 25,
  width: 25,
);
SvgPicture search1 = SvgPicture.asset(
  "assets/icons/search_active_icon.svg",
  color: Colors.black,
  height: 25,
  width: 25,
);
SvgPicture search2 = SvgPicture.asset(
  "assets/icons/search_icon.svg",
  color: Colors.grey.shade400,
  height: 25,
  width: 25,
);
SvgPicture add1 = SvgPicture.asset(
  "assets/icons/upload_active_icon.svg",
  color: Colors.grey,
  height: 25,
  width: 25,
);
SvgPicture add2 = SvgPicture.asset(
  "assets/icons/upload_icon.svg",
  color: Colors.grey,
  height: 25,
  width: 25,
);
SvgPicture like1 = SvgPicture.asset(
  "assets/icons/love_active_icon.svg",
  color: Colors.black,
  height: 25,
  width: 25,
);
SvgPicture like2 = SvgPicture.asset(
  "assets/icons/love_icon.svg",
  color: Colors.grey.shade400,
  height: 25,
  width: 25,
);
SvgPicture accont1 = SvgPicture.asset(
  "assets/icons/account_active_icon.svg",
  color: Colors.black,
  height: 25,
  width: 25,
);
SvgPicture accont2 = SvgPicture.asset(
  "assets/icons/account_icon.svg",
  color: Colors.grey.shade400,
  height: 25,
  width: 25,
);

// appni boshqa ishlari uchun
SvgPicture message = SvgPicture.asset(
  "assets/icons/message_icon.svg",
  color: Colors.black,
  height: 25,
  width: 25,
);
SvgPicture safe1 = SvgPicture.asset("assets/icons/save_icon.svg");
SvgPicture comments = SvgPicture.asset("assets/icons/comment_icon.svg");

// post uchun iconlar

SvgPicture love = SvgPicture.asset(
  "assets/icons/loved_icon.svg",
  width: 27,
);
SvgPicture loves = SvgPicture.asset(
  "assets/icons/love_icon.svg",
  width: 27,
  color: Colors.black,
);

SvgPicture comment = SvgPicture.asset(
  "assets/icons/comment_icon.svg",
  width: 27,
  color: Colors.black,
);

SvgPicture save = SvgPicture.asset(
  "assets/icons/save_icon.svg",
  width: 27,
  color: Colors.black,
);
