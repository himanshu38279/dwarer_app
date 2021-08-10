import 'package:flutter/material.dart';
import 'package:ramsecondapp/main_drawer.dart';

class homepage extends StatefulWidget {
  //const homepage({ Key? key }) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0XFF01060c),
        elevation: 0,
        title: Text("Classes App"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.railway_alert),
          )
        ],
        //  leading: Icon(Icons.ac_unit),
      ),
      drawer: maindrawer(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 1,
            child: Stack(
              children: [
                Container(
                    //margin: EdgeInsets.only(left: 30),
                    height: 130,
                    width: MediaQuery.of(context).size.width * 1,
                    //color: Colors.amber,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      // color: Color(0XFF163863),
                      gradient: LinearGradient(
                          colors: [Color(0XFF01060c), Color(0XFF163863)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, bottom: 15),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/app.jpg",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        // child: Image.asset(
                        //   "assets/app.jpg",
                        //   fit: BoxFit.cover,
                        // ),
                        // decoration: BoxDecoration(
                        //   borderRadius:
                        //       BorderRadius.all(Radius.circular(20.0)),
                        // ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Text("Jack",
                                      style: TextStyle(color: Colors.white)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Icon(
                                    Icons.pending_actions,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Text("Text Note",
                                  style: TextStyle(color: Colors.white)),
                            )
                          ],
                        )
                      ],
                    )),
                Center(
                  child: Container(
                    // alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 80),
                    height: 100,
                    width: 320,

                    // color: Colors.red,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: Text("New announcement with image"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 2),
                          child: Text(
                            "20-05-2020 02:50 PM ",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
