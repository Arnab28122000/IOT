import 'package:flutter/material.dart';

header(context, { bool isAppTitle = false, String titleText}) {
  return AppBar(
    title: Text(
      isAppTitle ? "GoSocio" : titleText,
      style: TextStyle(
        color: Colors.black,
        fontFamily: isAppTitle ? "Signatra" : "",
        fontSize: isAppTitle ? 50.0 : 22.0,
      ),
      overflow: TextOverflow.ellipsis,
    ),
    
      actions: [
        InkWell(
                  onTap: () {
                    print ('Click iot icon');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/iot.png',),
                  )

                ),
      ],
    centerTitle: true,
    backgroundColor: Theme.of(context).accentColor,
  );
}
