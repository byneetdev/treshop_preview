part of '../bottom_navigation_bar_page.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  final int initialIndex;

  const BottomNavigationBarScreen({Key? key, this.initialIndex = 0})
      : super(key: key);

  @override
  _BottomNavigationBarScreenState createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  PageController? _controller;
  DateTime? _currentBackPressTime;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: widget.initialIndex);
    refreshTabController();
  }

  void refreshTabController() {
    setState(() => _selectedIndex = widget.initialIndex);
  }

  Future<bool> _willPopCallback(BuildContext context) async {
    DateTime now = DateTime.now();
    if (_selectedIndex != 1) {
      if (_currentBackPressTime == null ||
          now.difference(_currentBackPressTime!) > Duration(seconds: 4)) {
        _currentBackPressTime = now;
        showToast(msg: 'Press Again to Exit');
        return Future.value(false);
      }
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return WillPopScope(
      onWillPop: () => _willPopCallback(context),
      child: Scaffold(
        body: PageView(
          controller: _controller,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (v) => setState(() => _selectedIndex = v),
          children: [
            HomeScreen(),
            Center(child: Text('Favorite Screen')),
            Center(child: Text('Shop Screen')),
            Center(child: Text('Profile Screen')),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (v) {
            setState(() {
              _controller!.animateToPage(
                v,
                duration: Duration(milliseconds: 200),
                curve: Curves.ease,
              );
            });
          },
          currentIndex: _selectedIndex,
          selectedItemColor: theme.primaryColor,
          unselectedItemColor: theme.hintColor,
          selectedLabelStyle:
              theme.textTheme.subtitle2!.copyWith(fontSize: 10.0),
          unselectedLabelStyle:
              theme.textTheme.subtitle2!.copyWith(fontSize: 10.0),
          type: BottomNavigationBarType.fixed,
          iconSize: 16.0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.heart),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.shoppingBag),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.user),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
