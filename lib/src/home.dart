import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF1F2F4),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 35, right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomButtomBar(
                      width: 35,
                      height: 35,
                      child: Icon(Icons.chevron_left),
                    ),
                    CustomButtomBar(
                      width: 35,
                      height: 35,
                      child: Icon(Icons.menu),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 7, left: 35),
                    child: Text(
                      'Hi Zain,',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5, left: 35),
                    child: Text(
                      "What would you like to have, we're offering some services",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: 'Find your Simptons'),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border:
                              Border.all(width: 2.0, color: Colors.grey[400])),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: GridView.count(
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                crossAxisCount: 2,
                children: <Widget>[
                  CustomContainer(
                    title: 'Podologia',
                    child: Icon(Icons.verified_user),
                  ),
                  CustomContainer(
                    title: 'Urologia',
                    child: Icon(Icons.featured_video),
                  ),
                  CustomContainer(
                    title: 'Cirugia',
                    child: Icon(Icons.place),
                  ),
                  CustomContainer(
                    title: 'Demartologia',
                    child: Icon(Icons.headset_mic),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 35, left: 35, bottom: 15),
                  child: CustomButtom(
                    width: double.infinity,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.exit_to_app),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(fontSize: 20.0),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final String title;
  const CustomContainer({
    Key key,
    this.child,
    this.width = 50,
    this.height = 50,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Color(0xffF1F2F4),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color.lerp(Colors.blueGrey.shade100, Colors.white, .02),
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(4, 2),
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(1, 1),
              ),
              BoxShadow(
                color: Color.lerp(Colors.white, Colors.black, .2),
                blurRadius: 10,
                spreadRadius: 1,
                offset: -Offset(4, 2),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            child,
            SizedBox(
              height: 20,
            ),
            Text(
                  title,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ) ??
                Icon(
                  Icons.hdr_on,
                  size: 50,
                ),
          ],
        ));
  }
}

class CustomButtom extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  const CustomButtom({
    Key key,
    this.child,
    this.width = 50,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Color(0xffF1F2F4),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.lerp(Colors.blueGrey.shade100, Colors.white, .02),
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(4, 2),
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(1, 1),
            ),
            BoxShadow(
              color: Color.lerp(Colors.white, Colors.black, .2),
              blurRadius: 10,
              spreadRadius: 1,
              offset: -Offset(4, 2),
            )
          ]),
      child: child ??
          Icon(
            Icons.hdr_on,
            size: 50,
          ),
    );
  }
}

class CustomButtomBar extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  const CustomButtomBar({
    Key key,
    this.child,
    this.width = 50,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Color(0xffF1F2F4),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.lerp(Colors.blueGrey.shade100, Colors.white, .02),
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(4, 2),
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(1, 1),
            ),
            BoxShadow(
              color: Color.lerp(Colors.white, Colors.black, .2),
              blurRadius: 10,
              spreadRadius: 1,
              offset: -Offset(4, 2),
            )
          ]),
      child: child ??
          Icon(
            Icons.hdr_on,
            size: 50,
          ),
    );
  }
}
