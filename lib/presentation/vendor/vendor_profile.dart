import 'package:flutter/material.dart';
import 'package:flutter_application_1/application/user/user_bloc.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:flutter_application_1/presentation/home/widgets/product_grid.dart';
import 'package:flutter_application_1/presentation/profile/widgets/profile_photo.dart.dart';
import 'package:flutter_application_1/presentation/profile/widgets/vendor_profile_header.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class VendorProfile extends StatefulWidget {
  final String userID;

  const VendorProfile({super.key, required this.userID});

  @override
  State<VendorProfile> createState() => _VendorProfileState();
}

class _VendorProfileState extends State<VendorProfile> {
  @override
  void initState() {
    // TODO: implement initState
    context
        .read<UserBloc>()
        .add(UserEvent.fetchUserByUserID(userID: widget.userID));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        return Scaffold(
          appBar: _buildAppBar(context),
          body: _buildBody(context, state.user),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => context.go('/home'),
      ),
      title: const Text('Profile'),
    );
  }

  Widget _buildBody(BuildContext context, User user) {
    return DefaultTabController(
      length: 2,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                VendorProfileHeader(
                  userID: user.userID,
                ),
                _buildTabBar(context),
              ],
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              children: [
                _buildProductsTab(userID: user.userID),
                // const About(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: TabBar(
        tabs: const [
          Tab(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.grid_view),
            ),
          ),
          Tab(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.info_outline),
            ),
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 3,
        indicatorColor: Theme.of(context).primaryColor,
        labelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        dividerColor: Colors.transparent,
        splashBorderRadius: BorderRadius.circular(8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).primaryColor.withOpacity(0.1),
        ),
      ),
    );
  }

  Widget _buildProductsTab({required String userID}) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: ProductGrid(
          userID: userID,
        ),
      ),
    );
  }
}
