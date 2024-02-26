import 'package:empabee_movil/config/menu/menu_item.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const _DashboardView(),
    );
  }
}

class _DashboardView extends StatelessWidget {
  const _DashboardView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context,index){
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      }
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;
  
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading:Icon(menuItem.icon,color:colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded,color:colors.secondary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: (){
        print('Hello world');
      },
    );
  }
}
