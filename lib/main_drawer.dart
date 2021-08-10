import 'package:flutter/material.dart';

class maindrawer extends StatelessWidget {
  //const maindrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Color(0XFF163863),
            child: Center(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/app.jpg",
                          ),
                          fit: BoxFit.cover)),
                  //child: Text("Hello World"),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Himanshu Garg",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "himanshu38279@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Profile",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.wallet_giftcard),
            title: Text(
              "Wallet",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.online_prediction_rounded),
            title: Text(
              "order",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.add_comment_sharp),
            title: Text(
              "Address",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              "Setting",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              "Logout",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
