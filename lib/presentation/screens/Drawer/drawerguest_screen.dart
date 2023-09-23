import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/constraints/size_config.dart';
import 'package:traffic_solution_dsc/models/cdm.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/HomeScreen.dart';
import 'package:traffic_solution_dsc/presentation/screens/Authentication/login_screen.dart';
import 'package:traffic_solution_dsc/presentation/screens/Direction/chooseLocation.dart';

class DrawerGuestPage extends StatefulWidget {
  const DrawerGuestPage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: DrawerGuestPage());
  @override
  _DrawerGuestPageState createState() => _DrawerGuestPageState();
}

class _DrawerGuestPageState extends State<DrawerGuestPage> {
  @override
  var currentPage = DrawerSections.map;
  CDM cdm = CDM(Icons.business, "Business",
      ["Shopping", "Restaurant", "Coffee", "Convenience"]);
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.map) {
      container = HomeScreen.provider();
    } else if (currentPage == DrawerSections.route) {
      container = ChooseLocation();
    }
    SizeConfig().init(context);
    return Scaffold(
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: MyDrawerList(),
          ),
        ),
        // backgroundColor: Colors.transparent,
      ),
    );
  }

  Widget MyDrawerList() {
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
                  menuItem(1, "Map", Icons.map,
                      currentPage == DrawerSections.map ? true : false),
                  menuItem(2, "Route", Icons.route,
                      currentPage == DrawerSections.route ? true : false),
                  // subMenu(),
                ],
              ),
            ),
            Divider(), // Add a divider to separate the menu items from logoutTile and accountTile
            loginTile(),
            //accountTile(),
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
              currentPage = DrawerSections.map;
            } else if (id == 2) {
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

  Widget accountButton({bool usePadding = true}) {
    return Padding(
        padding: EdgeInsets.all(usePadding ? 8 : 0),
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
        ));
  }

  Widget accountTile() {
    return Container(
      color: Colors.transparent,
      child: ListTile(
        leading: accountButton(usePadding: false),
        title: Text(
          "Ninh",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          "Developer",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget loginButton({bool usePadding = true}) {
    return Padding(
        padding: EdgeInsets.all(usePadding ? 8 : 0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push<void>(LoginScreen.route());
          },
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/login.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ));
  }

  Widget loginTile() {
    return Container(
      color: Colors.transparent,
      child: ListTile(
          leading: loginButton(usePadding: false),
          title: Text(
            "login",
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
