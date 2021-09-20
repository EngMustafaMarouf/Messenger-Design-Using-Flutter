import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => MyProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      darkTheme: ThemeData(
          appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
      )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Account> accountList = context.read<MyProvider>().acountList;
    List<Account> messageList = context.read<MyProvider>().messageList;

    //print(Status.OnLine);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBar(
          //backgroundColor: Colors.transparent,
          title: Text(
            "الدردشات",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: CircleAvatar(
              radius: 10.0,
              backgroundImage: AssetImage('assets/images/me.jpg'),
              backgroundColor: Colors.transparent,
            ),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.white30,
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CircleAvatar(
                backgroundColor: Colors.white30,
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //search
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.only(left: 5),
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white10,
                        size: 25,
                      ),
                    ),
                    Text(
                      "بحث",
                      style: TextStyle(
                          color: Colors.white10,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    MaterialButton(
                        padding: EdgeInsets.zero,
                        height: 18,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: Colors.white12,
                        onPressed: () {},
                        child: Text(
                          "رساله SMS",
                          style: TextStyle(
                              color: Colors.white30,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ),
            //video and active persons
            Container(
              height: 120,
              //color: Colors.orange,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white10,
                            radius: 30.0,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.video_call_sharp,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          ),
                          Text(
                            "انشاء مكالمة\nفيديو",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                height: 1.3),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: accountList.length,
                          itemBuilder: (ctx, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                width: 65,
                                child: Column(
                                  children: [
                                    Stack(
                                      alignment: AlignmentDirectional.bottomEnd,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              accountList[index].imageUrl),
                                          radius: 29.0,
                                        ),
                                        if (accountList[index].status.toString() ==
                                            "Status.OnLine")
                                          Positioned(
                                              child: CircleAvatar(
                                            backgroundColor: Colors.green,
                                            radius: 6.0,
                                          )),
                                      ],
                                    ),
                                    Text(
                                      accountList[index].name,
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),


                  ],
                ),
              ),
            ),
            //messages
            ListView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: messageList.length,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(messageList[index].imageUrl),
                              radius: 28.0,
                            ),
                            if (messageList[index].status.toString() ==
                                "Status.OnLine")
                              Positioned(
                                  child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 6.0,
                              )),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              messageList[index].name,
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              messageList[index].mesage +
                                  " ." +
                                  messageList[index].time,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
