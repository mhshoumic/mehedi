import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final imageurl =
    //     "https://scontent.fdac46-1.fna.fbcdn.net/v/t1.6435-9/152735182_1783574681812193_6620290952924684558_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=06K12J3J7RsAX-NHUxH&_nc_ht=scontent.fdac46-1.fna&oh=bcbee63c0b225b1c57039c7e454343ad&oe=61A447CB";
    return Drawer(
      child: Column(
        children: [
          Material(
            elevation: 2.0,
            child: Container(
              height: 160,
              width: 320,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstATop),
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2016/10/20/18/35/earth-1756274_960_720.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: DrawerHeader(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://scontent.fdac46-1.fna.fbcdn.net/v/t1.6435-9/152735182_1783574681812193_6620290952924684558_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=06K12J3J7RsAX-NHUxH&_nc_ht=scontent.fdac46-1.fna&oh=bcbee63c0b225b1c57039c7e454343ad&oe=61A447CB"),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Mehedi Hasan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.yellow),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "M.h.shoumic@gmail.com",
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ],
                  )),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
              "Home",
              textScaleFactor: 1.4,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              "Profile",
              textScaleFactor: 1.4,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings),
            title: Text(
              "Settings",
              textScaleFactor: 1.4,
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text(
              "LogOut",
              textScaleFactor: 1.4,
            ),
          ),
          ListTile(
            leading: Icon(Icons.forward),
            title: Text(
              "About",
              textScaleFactor: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}



      // child: ListView(
      //   children: [
      //     DrawerHeader(
      //       padding: EdgeInsets.zero,
      //       child: UserAccountsDrawerHeader(
      //         margin: EdgeInsets.zero,
      //         accountName: Text(
      //           "Mehedi Hasan",
      //           style: TextStyle(color: Colors.yellow),
      //         ),
      //         accountEmail: Text(
      //           "M.h.shoumic@gmail.com",
      //           style: TextStyle(color: Colors.yellow),
      //         ),
      //         currentAccountPicture: CircleAvatar(
      //           backgroundImage: NetworkImage(imageurl),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),