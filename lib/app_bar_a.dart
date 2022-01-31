import 'package:flutter/material.dart';

class AppBarA extends StatefulWidget {
  const AppBarA({Key? key}) : super(key: key);

  @override
  _AppBarAState createState() => _AppBarAState();
}

class _AppBarAState extends State<AppBarA> {


  @override

  Widget build(BuildContext context) {


    return MaterialApp(


      //home:const
      initialRoute: '/',
      routes: {
        '/': (context)=> const MainScreen(),
        'contacts': (context)=>SecondScreen(),
        "plugins":(context)=>TherdScreen(),
      },
       theme: ThemeData(
         fontFamily: "Georgia",
                           drawerTheme: DrawerThemeData(backgroundColor: Colors.amberAccent),

                           scaffoldBackgroundColor: Colors.greenAccent,
                  colorScheme: ColorScheme.fromSwatch(
           brightness: Brightness.light,
         ),

         textTheme: TextTheme(
           subtitle1: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),
           bodyText1: TextStyle(fontSize: 15.0,fontFamily: 'Hind'),

         )
       )

    );

  }
}
Widget navDrawer( context)=>Drawer(
  child: ListView(padding: EdgeInsets.zero, children: [
    DrawerHeader (decoration: const BoxDecoration(),

        child: SizedBox(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container (height: 90,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(55.0) )),

                child: Image.network ('https://www.agiratech.com/wp-content/uploads/2020/08/flutter.png'),
              ),

              Text('Навигация во Flutter', style:Theme.of(context).textTheme.bodyText1)

            ],
          ),
        )
    ),
    ListTile (
      leading: Icon(Icons.one_k),
      title: Text('Контакты',style:Theme.of(context).textTheme.bodyText1),
      onTap: (){Navigator.pushNamed(context, '/');

      },
    ),
    ListTile (
      leading: Icon(Icons.two_k),
      title: Text('Каталог'),
      onTap: (){Navigator.pushNamed(context, 'contacts');

      },
    ),
    Divider(),
    const Padding(
      padding: EdgeInsets.only(left:140),
      child: Text('Меню настроек'),

    ),
    ListTile (
      leading: Icon(Icons.settings),
      title: Text('настройки'),
      onTap: (){Navigator.pushNamed(context, 'plugins');
      },
    ),
  ],),
);
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar (title: Text('Контакты', style:Theme.of(context).textTheme.subtitle1)),
      drawer: navDrawer(context),
      body: const Center(
        child: Text('Контакты'),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Каталог', style:Theme.of(context).textTheme.subtitle1)),
      drawer: navDrawer(context),
      body: const Center(
        child: Text('Каталог'),
      ),
    );
  }
}
class TherdScreen extends StatelessWidget {
  const TherdScreen({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar (title: Text('Меню настроек', style:Theme.of(context).textTheme.subtitle1)),
      drawer: navDrawer(context),
      body: const Center(
        child: Text('Меню настроек'),
      ),
    );
  }
}