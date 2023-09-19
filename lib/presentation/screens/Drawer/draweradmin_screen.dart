import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/core/constraints/size_config.dart';
import 'package:traffic_solution_dsc/models/cdm.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/HomeScreen.dart';
import 'package:traffic_solution_dsc/presentation/screens/searchScreen/searchSreen.dart';
import 'package:traffic_solution_dsc/presentation/blocs/app/app_bloc.dart';
import 'package:traffic_solution_dsc/models/user/user.dart';
import 'package:traffic_solution_dsc/presentation/screens/homeAdmin/homeAdminScreen.dart';

class DrawerAdminPage extends StatefulWidget {
  const DrawerAdminPage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: DrawerAdminPage());
  @override
  _DrawerAdminPageState createState() => _DrawerAdminPageState();
}

class _DrawerAdminPageState extends State<DrawerAdminPage> {
  @override
  var currentPage = DrawerSections.dashboard;

  CDM cdm = CDM(Icons.business, "Business",
      ["Shopping", "Restaurant", "Coffee", "Convenience"]);
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);

    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = HomeAdminScreen();
    } else if (currentPage == DrawerSections.map) {
      container = HomeScreen.provider();
    } else if (currentPage == DrawerSections.route) {
      container = SearchScreen.provider();
    }
    SizeConfig().init(context);

    return Scaffold(
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: MyDrawerList(user),
          ),
        ),
        // backgroundColor: Colors.transparent,
      ),
    );
  }

  Widget MyDrawerList(User user) {
    return Container(
        color: Color(0xFF547AFF),
        height: SizeConfig.screenHeight,
        padding: EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          children: [
            controlTile(),
            Expanded(
              flex: 5,
              child: ListView(
                children: [
                  menuItem(1, "Dashboard", Icons.dashboard_outlined,
                      currentPage == DrawerSections.dashboard ? true : false),
                  menuItem(2, "Map", Icons.map,
                      currentPage == DrawerSections.map ? true : false),
                  menuItem(3, "Route", Icons.route,
                      currentPage == DrawerSections.route ? true : false),
                  subMenu(),
                ],
              ),
            ),
            Divider(), // Add a divider to separate the menu items from logoutTile and accountTile
            logoutTile(),
            accountTile(user),
          ],
        ));
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.map;
            } else if (id == 3) {
              currentPage = DrawerSections.route;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget subMenu() {
    return Padding(
        padding: EdgeInsets.all(15.0),
        child: ExpansionTile(
          // onExpansionChanged will be called when the ExpansionTile is expanded or collapsed
          onExpansionChanged: (z) {
            // You can use the state variable of ExpansionTile to control its state.
            // No need for a separate 'selected' variable.
            setState(() {});
          },
          leading: Icon(
            cdm.icon,
            size: 30,
            color: Colors.black,
          ),
          title: Text(
            cdm.title,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          children: cdm.submenus.asMap().entries.map((entry) {
            final int index = entry.key;
            final String subMenu = entry.value;
            return sMenuButton(cdm, subMenu, index);
          }).toList(),
        ));
  }

  Widget sMenuButton(CDM cdm, String subMenu, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          // Toggle the checkbox state when tapped
          cdm.submenuCheckboxes[index] = !cdm.submenuCheckboxes[index];
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Checkbox(
              value: cdm.submenuCheckboxes[index],
              onChanged: (value) {
                // Handle checkbox changes if needed
                setState(() {
                  // Toggle the checkbox state
                  cdm.submenuCheckboxes[index] = value!;
                  // Update the value associated with this submenu
                });
              },
            ),
            SizedBox(width: 8), // Adjust spacing
            Text(
              subMenu,
              style: TextStyle(
                fontSize: 14, // You can adjust the font size as needed
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget controlTile() {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 30),
      child: ListTile(
        leading: FlutterLogo(),
        title: RichText(
          text: TextSpan(
            text: 'City',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            children: const <TextSpan>[
              TextSpan(
                text: 'Sense',
                style: TextStyle(
                  color: Color(0xFF82EDD7),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        // onTap: expandOrShrinkDrawer,
      ),
    );
  }

  Widget controlButton() {
    return Row(children: [
      Expanded(
        child: Icon(
          Icons.flutter_dash,
          size: 30,
          color: Colors.black,
        ),
      ),
      Expanded(
          flex: 3,
          child: Padding(
              padding: EdgeInsets.only(top: 20, bottom: 30),
              child: controlTile()))
    ]);
  }

  Widget sMenuButton1(String subMenu, bool isTitle) {
    return InkWell(
      onTap: () {
        //handle the function
        //if index==0? donothing: doyourlogic here
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          subMenu,
          style: TextStyle(
            fontSize: isTitle ? 17 : 14,
            color: isTitle ? Colors.white : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget accountButton({bool usePadding = true, User user = User.empty}) {
    return Padding(
        padding: EdgeInsets.all(usePadding ? 8 : 0),
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: NetworkImage(user.image ??
                  'https://hanoigrapevine.com/wp-content/uploads/2017/04/Secret-World-Arrietty.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
        ));
  }

  Widget accountTile(User user) {
    return Container(
      color: Colors.transparent,
      child: ListTile(
        leading: accountButton(usePadding: false, user: user),
        title: Text(
          user.username ?? '',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          user.email ?? '',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget logoutButton({bool usePadding = true}) {
    return Padding(
        padding: EdgeInsets.all(usePadding ? 8 : 0),
        child: GestureDetector(
          onTap: () => context.read<AppBloc>().add(AppLogoutRequested()),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logout.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ));
  }

  Widget logoutTile() {
    return Container(
      color: Colors.transparent,
      child: ListTile(
          leading: logoutButton(usePadding: false),
          title: Text(
            "logout",
            style: TextStyle(
              color: Colors.black,
            ),
          )),
    );
  }
}

enum DrawerSections {
  dashboard,
  map,
  route,
}
