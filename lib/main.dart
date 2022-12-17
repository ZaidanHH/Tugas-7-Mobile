import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(GradientAppBarRun());

// stateless widget
class GradientAppBarRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // returning MaterialApp
    //var menu;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home:
          // scaffold
          Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            // silverappbar for gradient widget
            SliverAppBar(
              pinned: true,
              expandedHeight: 80,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  // LinearGradient
                  gradient: LinearGradient(
                    // colors for gradient
                    colors: [
                      Colors.blue,
                      Colors.purple,
                    ],
                  ),
                ),
              ),
              // title of appbar
              //title: Text ("Gradient AppBar!"),
              title: Container(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/inaklug.png',
                      fit: BoxFit.contain,
                      height: 60,
                    ),
                    Text('Inaklug'),
                  ],
                ),
              ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.menu),
                )
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Divider(),
                  Stack(
                    children: <Widget>[
                      Image.asset('assets/dresden2.jpg'),
                      Positioned(
                        left: 10,
                        right: 0,
                        bottom: 10,
                        child: Text(
                          'Tentang Kami',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      )
                    ],
                  ),
                  ListTile(
                    title: Text(
                      'Profil',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor. Pellentesque auctor nisi id magna consequat sagittis. Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.'
                        ','),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Visi',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor. Pellentesque auctor nisi id magna consequat sagittis. Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.'
                        ','),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Misi',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor. Pellentesque auctor nisi id magna consequat sagittis. Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.'
                        ','),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.grey)),
                      ),
                    ),
                    child: Text("Layanan Kami"),
                  ),
                  Divider(),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text("Hubungi kami", style: TextStyle(fontSize: 30)),
                        Text(""),
                        Text("Kantor Pusat", style: TextStyle(fontSize: 20)),
                        Text("Lorem ipsum dolor sit amet",
                            style: TextStyle(fontSize: 20)),
                        Text("Phone : 08xxxxxxxxxx",
                            style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.grey)),
                      ),
                    ),
                    child: Text("Lokasi Kami"),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.purple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: OutlinedButton(
                      child: Text('Kirim Pesan',
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    title: Text(''),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  // LinearGradient
                  gradient: LinearGradient(
                    // colors for gradient
                    colors: [
                      Colors.blue,
                      Colors.purple,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Copyright 2022\nInaklug Indonesia Hak Cipta dilindungi undang undang",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
