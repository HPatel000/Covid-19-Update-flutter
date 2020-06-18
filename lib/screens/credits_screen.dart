import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditsScreen extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b1b2f),
      appBar: AppBar(
        title: Text('Some Useful links...'),
        backgroundColor: Color(0xffe43f5a),
        elevation: 0.0,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: FaIcon(
              FontAwesomeIcons.staylinked,
              color: Color(0xff1b1b2f),
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              color: Color(0xffe43f5a),
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff1b1b2f),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                ),
                child: Text(' '),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InkWell(
                  onTap: () => _launchURL(
                      'https://github.com/HPatel000/Covid-19-Update-flutter'),
                  child: Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 24,
                          color: Colors.white,
                          offset: Offset(2, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: FaIcon(
                        FontAwesomeIcons.github,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.laptopCode,
                  color: Colors.white,
                  size: 100.0,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Text(
                  'Special Thanks To...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                InkWell(
                  onTap: () => _launchURL(
                      'https://www.freepik.com/free-vector/coronavirus-prevention-tips_7421195.htm#page=1&query=covid19%20prevention&position=34'),
                  child: LinkTile(text: 'FreePik Resource'),
                ),
                InkWell(
                  onTap: () => _launchURL(
                      'https://www.freepik.com/free-vector/coronavirus-tips-protection-against-viruses_7577905.htm#page=1&query=covid19%20prevention&position=20'),
                  child: LinkTile(text: 'FreePik Resource'),
                ),
                InkWell(
                  onTap: () => _launchURL('https://api.covid19india.org'),
                  child: LinkTile(text: 'Covid-19 India API'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LinkTile extends StatelessWidget {
  final String text;
  LinkTile({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      decoration: BoxDecoration(
        color: Color(0xff1f4068),
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: Row(
        children: <Widget>[
          FaIcon(
            FontAwesomeIcons.link,
            color: Color(0xffe43f5a),
            size: 20.0,
          ),
          SizedBox(width: 10.0),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
