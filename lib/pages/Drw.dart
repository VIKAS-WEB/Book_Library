import 'package:flutter/material.dart';

class Drawer extends StatelessWidget {
  const Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      padding: EdgeInsets.all(8.0),
      child: Column(
        children:[
          DrawerHeader(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD-0fXdLj4s3iQVN5404cAxqc89i6g2gCb-Q&usqp=CAU'
                ),
              ),
                SizedBox(height: 10.0),
                Text("Eren Jager", style: TextStyle(color: Colors.white, fontSize: 20.0,
                ),
               ),
             ],
            ),
          ),
          Expanded(child: ListView(
            children: [
              ListTile(
                onTap:(){},
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                onTap:(){},
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                onTap:(){},
                leading: Icon(Icons.settings,
                  color: Colors.white,
                ),
                title: Text("Setting", style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                onTap:(){},
                leading: Icon(Icons.logout,
                  color: Colors.white,
                ),
                title: Text("Logout", style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
          ),
        ],

      ),


    );
  }
}
