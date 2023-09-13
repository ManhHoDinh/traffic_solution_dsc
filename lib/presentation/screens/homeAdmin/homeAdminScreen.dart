import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/main_street.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/app/app_bloc.dart';

class HomeAdminScreen extends StatefulWidget {
  const HomeAdminScreen({super.key});

  @override
  State<HomeAdminScreen> createState() => _HomeAdminScreenState();
}

class _HomeAdminScreenState extends State<HomeAdminScreen> {
  final String _imageUrl =
      'https://images.unsplash.com/photo-1529397938791-2aba4681454f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80';
  final String username = "admin_dsc";
  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          // color: AppColors.iconBackground,
                          borderRadius: BorderRadius.circular(14),
                          image: DecorationImage(
                            image: NetworkImage(user.image ?? _imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user.username ?? username,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Welcome Back!',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: AppColors.iconBackground,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.notifications_outlined,
                        color: AppColors.iconColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // overview
              Text('Overview', style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Row(
                children: const [
                  OverviewContainer(
                    icon: AssetHelper.CAMERA,
                    title: 'Camera',
                    quantity: 5,
                    beginColor: Color(0xFF9B9CF8),
                    endColor: Color(0xFF8082ED),
                  ),
                  SizedBox(width: 10),
                  OverviewContainer(
                    icon: AssetHelper.BUSINESS,
                    title: 'Business',
                    quantity: 10,
                    beginColor: Color(0xFFFEB4C5),
                    endColor: Color(0xFFDB869A),
                  ),
                ],
              ),
              // managing area
              SizedBox(height: 30),
              Text('Managing Area', style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Row(
                children: const [
                  FeatureContainer(
                    icon: AssetHelper.STORE,
                    beginColor: Color(0xFF80E0FF),
                    endColor: Color(0xFF2F5DFD),
                    title: 'Store',
                  ),
                  SizedBox(width: 10),
                  FeatureContainer(
                    icon: AssetHelper.STREET,
                    beginColor: Color(0xFFFFF282),
                    endColor: Color(0xFFFC7E24),
                    title: 'Street',
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: const [
                  FeatureContainer(
                    icon: AssetHelper.CAMERA,
                    beginColor: Color(0xFFAEFFAC),
                    endColor: Color(0xFF6B8FE9),
                    title: 'Camera',
                  ),
                  SizedBox(width: 10),
                  FeatureContainer(
                    icon: AssetHelper.REPORT,
                    beginColor: Color(0xFFFFE270),
                    endColor: Color(0xFF2D9344),
                    title: 'Report',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeatureContainer extends StatelessWidget {
  const FeatureContainer({
    super.key,
    required this.beginColor,
    required this.endColor,
    required this.title,
    required this.icon,
  });

  final Color beginColor;
  final Color endColor;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => MainStreetScreen(),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 18, top: 12, bottom: 6),
          height: 130,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [beginColor, endColor],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25), // Shadow color
                spreadRadius: 0, // Spread radius
                blurRadius: 4, // Blur radius
                offset: Offset(0, 4), // Offset of the shadow
              ),
            ],
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.only(right: 12),
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: GradientIcon(
                  beginColor: beginColor,
                  endColor: endColor,
                  // child: Icon(
                  //   Icons.notifications_outlined,
                  //   color: Colors.white,
                  // ),
                  child: Image.asset(
                    icon,
                    color: Colors.white,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  SizedBox(height: 6),
                  Icon(
                    Icons.arrow_right_alt,
                    size: 34,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OverviewContainer extends StatelessWidget {
  const OverviewContainer({
    super.key,
    required this.icon,
    required this.beginColor,
    required this.endColor,
    required this.title,
    required this.quantity,
  });

  final Color beginColor;
  final Color endColor;
  final String title;
  final int quantity;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 9),
        height: 70,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [beginColor, endColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25), // Shadow color
              spreadRadius: 0, // Spread radius
              blurRadius: 4, // Blur radius
              offset: Offset(0, 4), // Offset of the shadow
            ),
          ],
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(9),
              margin: EdgeInsets.only(right: 12),
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: GradientIcon(
                beginColor: beginColor,
                endColor: endColor,
                // child: Icon(
                //   Icons.notifications_outlined,
                //   color: Colors.white,
                // ),
                child: Image.asset(
                  icon,
                  color: Colors.white,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                // SizedBox(height: 6),
                Text(
                  '$quantity',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GradientIcon extends StatelessWidget {
  const GradientIcon({
    super.key,
    required this.child,
    required this.beginColor,
    required this.endColor,
  });
  final Widget child;
  final Color beginColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [beginColor, endColor],
      ).createShader(bounds),
      child: child,
    );
  }
}
