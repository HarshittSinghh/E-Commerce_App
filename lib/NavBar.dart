import 'package:flutter/material.dart';
import 'package:ecomm_app/profile.dart';
import 'package:ecomm_app/cart_page.dart';
import 'package:ecomm_app/orders_page.dart';
import 'package:ecomm_app/settings_page.dart';
import 'package:ecomm_app/policies_page.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("John Doe"),
            accountEmail: Text('user@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9XxkSrH48VLEf16WjZJfW4IW8Se8vRPRz8wfhuymYXQ&s',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CartPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.repeat_on),
            title: Text('Orders'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OrdersPage()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.policy),
            title: Text('Policies'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PoliciesPage()));
            },
          ),
        ],
      ),
    );
  }
}
