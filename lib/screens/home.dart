import 'package:IOT/widgets/appbar.dart';
import 'package:IOT/widgets/eventCard.dart';
import 'package:IOT/widgets/ongoingEventCard.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context, titleText: "Home"),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Stack(
                children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top:15),
                                              child: Text(
                          'Hello There,',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Signatra',
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:65),
                                              child: Text(
                            'We are super excited to have you on board!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                      ),
                    ]
              ),
            ),
            Expanded(
                flex: 2,
                child: Stack(
                  children: <Widget>[
                    ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        onGoingEventCard(context,
                            cardTitle: 'Hacktober Fest 2020',
                            imgName: 'hacktoberfest.jpg'),
                        onGoingEventCard(context,
                            cardTitle: 'Hacktober Fest 2020',
                            imgName: 'hacktoberfest.jpg'),
                        onGoingEventCard(context,
                            cardTitle: 'Hacktober Fest 2020',
                            imgName: 'hacktoberfest.jpg'),
                        onGoingEventCard(context,
                            cardTitle: 'Hacktober Fest 2020',
                            imgName: 'hacktoberfest.jpg'),
                        onGoingEventCard(context,
                            cardTitle: 'Hacktober Fest 2020',
                            imgName: 'hacktoberfest.jpg'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left:15),
                                                  child: Text(
                            'Ongoing Events',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontFamily: 'Signatra'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 2,
              child: Stack(
                children: <Widget>[
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'IOT lab'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                                              child: Text(
                          'Upcoming Events',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontFamily: 'Signatra',
                              ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
