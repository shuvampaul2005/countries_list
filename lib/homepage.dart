import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentpage = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  var names = [
    'India',
    'China',
    'United States of America',
    'Indonesia',
    'Pakistan',
    'Nigeria',
    'Brazil',
    'Bangladesh',
    'Russia',
    'Mexico',
    'Ethiopia',
    'Japan',
    'Philippines',
    'Egypt',
    'DR Congo',
    'Vietnam',
    'Iran',
    'Turkey',
    'Germany',
    'Thailand',
    'United Kingdom',
    'Tanzania',
    'France',
    'South Africa',
    'Italy',
    'Kenya',
    'Myanmar',
    'Colombia',
    'South Korea',
    'Uganda'
  ];
  var flaglink = [
    'https://illustoon.com/photo/910.png',
    'https://media.istockphoto.com/id/1266398743/vector/china-flag-icon-vector-illustration-round-flat-icon-stock-illustration.jpg?s=612x612&w=0&k=20&c=UaixiuY3lTXTJYC_wG8fOv52Xkr6R7GuHuw6vSmgYLQ=',
    'https://i.pinimg.com/originals/8a/21/36/8a21365d3f89b97fa1ab4804b3adad1d.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTjXis_wh2XczsZpx0_Fv232HMCNxtASbA8g&usqp=CAU',
    'https://media.istockphoto.com/id/1312106245/vector/vector-pakistan-flag-in-glass-button-style.jpg?s=612x612&w=0&k=20&c=Of-wnHB8qJcAesg3muaCvBfmRXdf7yJvj0YxPc6ytO8=',
    'https://media.istockphoto.com/id/1127371686/vector/nigeria-round-flag-vector-flat-icon.jpg?s=2048x2048&w=is&k=20&c=fvlFs4VLGpQ_A88gCDAZBQ_Ns467H87CLIzilLVhIJQ=',
    'https://media.istockphoto.com/id/990986106/vector/brazil-round-flag-vector-flat-icon.jpg?s=612x612&w=is&k=20&c=1L8BQ36UL1nOciBtoeXWjOLhmD7u0Jp5VxkmqGeDduI=',
    'https://media.istockphoto.com/id/1443207771/vector/bangladesh-flag.jpg?s=612x612&w=is&k=20&c=5Sc3EhHC9DMTAjrQVu_Q2xx30L4oKliW8f1yjS0suZ0=',
    'https://media.istockphoto.com/id/1032071542/vector/russia-round-flag-vector-flat-icon.jpg?s=612x612&w=0&k=20&c=-eKFyxnFLeXTFdkmYJgqEgX8KSEQZdP4zKEL5Z8oBXU=',
    'https://media.istockphoto.com/id/1348463855/vector/mexico-flat-rounded-country-flag-button-icon.jpg?s=612x612&w=0&k=20&c=84EE4aeK2b5Y-G986gL-a44lryjDFYeC5CkEl4eCgHE=',
    'https://media.istockphoto.com/id/1476063595/vector/ethiopia-flag-button-on-white-background.jpg?s=612x612&w=0&k=20&c=KsYPZhj5SxEub1ZXc-3WRlaMYdCiekdD8xELWeLIL8g=',
    'https://media.istockphoto.com/id/1344613185/vector/japanese-flag.jpg?s=612x612&w=0&k=20&c=AfPNRYPIB_V6zDk7v_eZ8eq8XOM1FhOc2NQv9qbvEsk=',
    'https://media.istockphoto.com/id/1343687784/vector/circle-flag-vector-of-philippines-on-white-background.jpg?s=612x612&w=0&k=20&c=JvGRb6cyeeOuRY7_Rl_NaNgMopkz3MmM33puXcwrRts=',
    'https://media.istockphoto.com/id/1132841674/vector/egypt-round-flag-vector-flat-icon.jpg?s=612x612&w=0&k=20&c=JxEIxFguLB-8onxpn2kgkh0G8pAQRUmc0EW5IOmImcU=',
    'https://media.istockphoto.com/id/1315929571/vector/democratic-republic-of-congo-round-flag-icon.jpg?s=612x612&w=0&k=20&c=j3aPKSXqEQRrz-a8b-xjVcIKdRo8FtElOE3Gz-chPF8=',
    'https://media.istockphoto.com/id/1445566192/vector/vector-illustration-of-flat-round-shaped-of-vietnam-flag-official-national-flag-in-button.jpg?s=612x612&w=0&k=20&c=A8PzI7gBUWWHbX77Lzaxyys2u2UNSAtrd18CkzMT9uI=',
    'https://media.istockphoto.com/id/1445563531/vector/vector-illustration-of-flat-round-shaped-of-iran-flag-official-national-flag-in-button-icon.jpg?s=612x612&w=0&k=20&c=cWeJa6MneeHjJ9WQGDEU5o2AP56zzD8MH4eNXbfcEJk=',
    'https://media.istockphoto.com/id/1291349435/vector/turkey-flag-in-circle-on-white-background.jpg?s=612x612&w=0&k=20&c=logGC3qPDD0mAux4YFSWo3DsPiNy9_oFkXxivww0cyU=',
    'https://media.istockphoto.com/id/1200333056/vector/circle-flag-of-germany-on-white-background.jpg?s=612x612&w=0&k=20&c=Chycn1-5cDkZwAkrFAPrHvrVfE-P_rnOgZMpG0dProo=',
    'https://media.istockphoto.com/id/1032082664/vector/thailand-round-flag-vector-flat-icon.jpg?s=612x612&w=0&k=20&c=qpIJMzlZymqOC71urg6o4mk2KnEy3qGKCDPk0wOORJI=',
    'https://media.istockphoto.com/id/1324673683/vector/great-britain-flag-union-jack-round-logo-circle-icon-of-united-kingdom-flag-vector.jpg?s=612x612&w=0&k=20&c=Uebd1fcMXZ3QkOoVoOjteIXlej3KoTpEjqgnwEehk8g=',
    'https://media.istockphoto.com/id/690551986/photo/tanzania-flag-button-news-concept-badge-3d-illustration-on-white-background.jpg?s=612x612&w=0&k=20&c=91mYGbMlsVqaDctbLmS1T31LbOX1_VsQegnz1NN6n4Q=',
    'https://media.istockphoto.com/id/949014238/vector/france-flag-illustration.jpg?s=612x612&w=0&k=20&c=7eRs1otOtAxYrRsFU3lE3SCmpANUmArja_RJ_9w4O3Q=',
    'https://media.istockphoto.com/id/1471669912/vector/round-of-south-africa-flag.jpg?s=612x612&w=0&k=20&c=v-l-4yXUTmFTYHMPqBNYY1_ktlLS_FNie2O9Y61Purs=',
    'https://media.istockphoto.com/id/690489086/vector/italian-flag.jpg?s=612x612&w=0&k=20&c=kWZWChm94M--bl4uZgmY-tt-OuJQUvt1ujDp0OWSDp8=',
    'https://media.istockphoto.com/id/1322511788/vector/national-kenya-flag-official-colors-and-proportion-correctly-national-kenya-flag-vector.jpg?s=612x612&w=0&k=20&c=7544P1QeTlknJlFjJOsBeOK71VqMXDsJHy5bWnZJozU=',
    'https://media.istockphoto.com/id/1445564443/vector/vector-illustration-of-flat-round-shaped-of-myanmar-or-burma-flag-official-national-flag-in.jpg?s=612x612&w=0&k=20&c=Lk6Xl8e8TlXsnP1SEHlOZ3U5dEz7u7kdKYVDNlakiTw=',
    'https://media.istockphoto.com/id/1291349434/vector/colombia-flag-in-circle-on-white-background.jpg?s=612x612&w=0&k=20&c=2HbytoyM0qCNBp5SwKD7mHTsgJbZJ1YKWEC3Yg0L8KE=',
    'https://media.istockphoto.com/id/1343687541/vector/circle-flag-vector-of-south-korea-on-white-background.jpg?s=612x612&w=0&k=20&c=o2VmtiFK6epZFJUJjkXfdpP1ThFh2L-Ani45q71d2bc=',
    'https://media.istockphoto.com/id/1316924838/vector/flag-of-uganda-vector-circle-icon-button-for-africa-concepts.jpg?s=612x612&w=0&k=20&c=kQTn51hkANPu9m9g-gamlaZJJ4FL3ld7QUzXFQM5Vis='
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countries of the World'),
        centerTitle: true,
        backgroundColor: Colors.tealAccent.shade400,
      ),
      backgroundColor: Colors.black,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentpage = index;
            });
          },
          children: [
            Container(
                //color: Colors.black,
                child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 10),
                  child: SizedBox(
                    width:500.0,
                    height:80.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        color: Colors.blue.shade100,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical:21.0, horizontal:10.0),
                          child: Text(
                            names[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SourceSans3',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: names.length,

            )),
            Container(
              color: Colors.black,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Nothing to show here....',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              //color: Colors.blue,
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/dp.jpg'),
                    ),
                    Text(
                      'Shuvam Paul',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                    /*Text(
                      'FLUTTER DEVELOPER',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2.5,
                        color: Colors.teal[100],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SourceSans3',
                      ),
                    ),*/
                    SizedBox(
                      height: 20,
                      width: 150,
                      child: Divider(
                        color: Colors.teal[100],
                      ),
                    ),
                    Card(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      child: ListTile(
                        leading: Icon(Icons.phone, color: Colors.teal),
                        title: Text(
                          '+91 9748633889',
                          style: TextStyle(
                            color: Colors.teal[900],
                            fontFamily: 'SourceSan3',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      child: ListTile(
                        leading: Icon(Icons.email, color: Colors.teal),
                        title: Text(
                          'shuvam.paul@icloud.com',
                          style: TextStyle(
                            color: Colors.teal[900],
                            fontFamily: 'SourceSan3',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            //tabBackgroundColor: Colors.grey.shade800,
            tabBorder: Border.all(color: Colors.tealAccent.shade400, width: 2),
            gap: 8,
            curve: Curves.easeOutExpo,
            //tabBackgroundColor: Colors.blueGrey.shade900,
            onTabChange: (index) {
              setState(() {
                _pageController.jumpToPage(index);
              });
            },
            padding: EdgeInsets.all(14),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.dashboard,
                text: 'Dashboard',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
Card(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      child: ListTile(
                        leading: Icon(Icons.email, color: Colors.teal),
                        title: Text(
                          'shuvam.paul@icloud.com',
                          style: TextStyle(
                            color: Colors.teal[900],
                            fontFamily: 'SourceSan3',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
 */
