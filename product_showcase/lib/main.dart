import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime Showcase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Watch Anime'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> _listitems = [
      "https://wallpaperaccess.com/full/1407692.png",
      "https://wallpaperaccess.com/full/3537982.png",
      "https://www.teahub.io/photos/full/67-679659_bleach-anime-wallpaper-minimalist.png",
      "https://images.alphacoders.com/661/thumb-350-661647.png",
      "https://mocah.org/uploads/posts/349079-4k-wallpaper.jpg",
      "https://wallpapercave.com/wp/wp4790718.jpg",
      "https://i.pinimg.com/originals/d8/9b/20/d89b20dd1b486ff0613096b1c44b6312.png",
      "https://wallpapercave.com/wp/wp7161955.png",
      "https://www.hdwallpapers.in/download/haikyu_shoyo_hinata_with_yellow_background_hd_anime-1366x768.jpg",
      "https://pm1.narvii.com/5842/13c764de2c6a92a5096fb325fed179c50ccb952c_hq.jpg",
      "https://wallpapercave.com/wp/wp4797933.png",
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: EdgeInsets.all(
                10,
              ),
              child: Container(
                height: 30,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Center(
                  child: Text(
                    "0",
                  ),
                ),
              ),
            ),
          ],
          title: Text(widget.title),
        ),
        body: SafeArea(
            child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://wallpaperaccess.com/full/1677808.png"),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.2),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Best Anime",
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 40,
                        ),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Watch now",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: 30)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(5),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listitems
                      .map(
                        (item) => Card(
                          color: Colors.transparent,
                          elevation: 2,
                          child: Center(
                            child: Container(
                              child: Transform.translate(
                                offset: Offset(
                                  55,
                                  -50,
                                ),
                                child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 65,
                                      vertical: 65,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                      color: Colors.white,
                                    ),
                                    child:
                                        Icon(Icons.bookmark_border, size: 15)),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    item,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        )));
  }
}
