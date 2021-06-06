part of '../home_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const String _userImage =
      'https://i.pinimg.com/564x/fc/30/65/fc30653203c453c33b12d66f6837b6d5.jpg';

  TextEditingController? _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        title: CircleAvatar(
          radius: 25.0,
          backgroundColor: theme.primaryColor,
          backgroundImage: CachedNetworkImageProvider(_userImage),
        ),
        centerTitle: false,
        actions: [
          IconBadge(
            onTap: () {
              //TODO: Navigate to Cart Screen
            },
            icon: Icon(FeatherIcons.shoppingCart),
            itemCount: 2,
            badgeColor: theme.primaryColor,
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 25.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'TRESHOP',
                  style: theme.textTheme.headline1!.copyWith(fontSize: 25.0),
                ),
                AutoSizeText(
                  'Get popular fashion from home',
                  style: theme.textTheme.bodyText2,
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          _BuildSearch(
            controller: _searchController,
            onSearchTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
              //TODO: Navigate to Search Screen
            },
          ),
          SizedBox(height: 25.0),
          _BuildLabelSection(
            label: 'Categories',
            onViewAllTap: () {},
          ),
          SizedBox(height: 12.0),
          Container(
            width: double.infinity,
            height: 100.0,
            // color: Colors.amber,
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: ListView.builder(
              itemCount: categoryList(context).length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var category = categoryList(context)[index];
                return CategoryCard(
                  category: category,
                  cardType: CardType.horizontal,
                );
              },
            ),
          ),
          SizedBox(height: 25.0),
          _BuildLabelSection(
              label: 'Recommended for You',
              onViewAllTap: () {
                //TODO: Navigate to All Product
              }),
          SizedBox(height: 12.0),
          StaggeredGridView.countBuilder(
            itemCount: allProduct.length,
            crossAxisCount: 4,
            staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 18.0,
            ),
            itemBuilder: (context, index) {
              var product = allProduct[index];
              return ProductCard(product: product);
            },
          ),
        ],
      ),
    );
  }
}
