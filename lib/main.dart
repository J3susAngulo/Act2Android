import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicación',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  get children => null;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi aplicación'),
        centerTitle: true,
        backgroundColor: const Color(0xFF4618AC),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            const Tab(icon: Icon(Icons.home)),
            const Tab(icon: Icon(Icons.search)),
            const Tab(icon: Icon(Icons.settings)),
          ],
          indicator: BoxDecoration(
            color: Color(0xFF1F0A4E), // Aquí asignamos el color deseado
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/fondo.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                'Mi aplicación',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Salir'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 70,
                  child: const Text(
                    textAlign: TextAlign.center,
                    'Jesus Alberto Angulo Ruiz',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border:
                        Border.all(color: const Color(0xFF1F0A4E), width: 5),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  child: Image.network(
                    'https://scontent.xx.fbcdn.net/v/t1.15752-9/346143830_273006518481861_943472784981071605_n.jpg?stp=dst-jpg_s206x206&_nc_cat=109&ccb=1-7&_nc_sid=aee45a&_nc_eui2=AeGoAEKq7td8EJWkJwDM45gSQVsb62z1yeVBWxvrbPXJ5bWbmNWQuN-sj0Xya1t59EEpDBOADQ-pntGcPo2ajNs-&_nc_ohc=wq1krgXOh1gAX9SXSoK&_nc_oc=AQnCDGAklr0Piu2GlfNyKgjsF8ULgyfn19KSgAiMvbVkfYJPhC9BGPItoktVOfWL0G_Yy7vhCwl1ftWPD96JgQaq&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdSLKI4ng7lyvYZc3tZikGgagDVoDtoAkL0VcKwxUksz7A&oe=648C922E',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(
                    border: const Border(
                      bottom: BorderSide(
                        color: Color(0xFF1F0A4E),
                        width: 10.0,
                      ),
                      top: BorderSide(
                        color: Color(0xFF1F0A4E),
                        width: 10.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  height: 100,
                  child: const Text(
                    '6J PROGRAMACION',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xFF1F0A4E), width: 5)),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Página de Búsqueda',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Image.asset(
                  'assets/fondo2.jpg',
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Página de Configuración',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
