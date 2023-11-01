import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Telegramm",
          style: TextStyle(color: Colors.green),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade600,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            _globalKey.currentState?.openDrawer();
          },
          icon: const Icon(CupertinoIcons.list_bullet_below_rectangle),
        ),
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Text("Hello"),
        ),
        bottomOpacity: 0.6, //WE MAY CHANGE OF CHILD OF BOTTO PARAMTER
        titleSpacing:
            8, // TITLE SPACING CONTROLS BETWEEN THE TITLE AND LEADING WIDGET
        shadowColor: Colors.blue,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), //SIDE BOTTOM OF APPBAR
          ),
          side: BorderSide(
            color: Color(0xFF123456),
          ),
        ),
        toolbarHeight: 110,
        toolbarOpacity: 0.6,
        leadingWidth: 56.0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(""),
            const Text("Connecting..."),
            const SizedBox(
              height: 8,
            ),
            const Text("PLEASE WAITING"),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Hello this home page",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: "Ruda-Black",
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        splashColor: Colors.green, //COLOR OF WHEN PRESS BUTTON
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
        child: const Icon(CupertinoIcons.music_note_list),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      drawer: const Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 190,
            ),
            Text("PROFILE PAGE"),
            SizedBox(
              height: 13,
            ),
            Text("FAVOURITES"),
            SizedBox(
              height: 13,
            ),
            Text("MUSIC LISTS"),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
