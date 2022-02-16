import 'package:flutter/material.dart';

import '../pages/homepage/homepage.dart';

Map<String, Widget Function(BuildContext)> navigationMap = {
  '/': (context) => const HomePage(),
};

bool widthMoreThan576(BuildContext context) {
   if(MediaQuery.of(context).size.width > 576 && MediaQuery.of(context).size.width < 1200){
     return true;
   }else {
     return false;
   }
}


bool widthMoreThan1200(BuildContext context) {
  if (MediaQuery.of(context).size.width >= 1200 &&
      MediaQuery.of(context).size.width < 1440) {
    return true;
  } else {
    return false;
  }
}

bool widthMoreThan1440(BuildContext context) =>
    MediaQuery.of(context).size.width > 1440 ? true : false;
