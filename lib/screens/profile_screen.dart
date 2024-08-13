import 'package:flutter/material.dart';
import 'package:crowd/utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void actionButton() {
    debugPrint('Action Button Pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.onPrimary,
            expandedHeight: 220.0,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              collapseMode: CollapseMode.parallax,
              title: const Text('@kiannaquines.09',style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),),
              titlePadding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://scontent-mxp1-1.xx.fbcdn.net/v/t39.30808-6/277816676_1025044381760588_1098751363221846843_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeGESs8XPauPNm2e2VHAwwhZM9KgoYVvRLsz0qChhW9Eu0cVGw-Rh-LrhGq3y75yPQDiBG1QOP23yutKcOgf4ZYt&_nc_ohc=PVRx_1q69gwQ7kNvgGDuoag&_nc_ht=scontent-mxp1-1.xx&oh=00_AYCBgJlmYJP0AKYWn5gsoeC_1cHzm370lIp4TqM1M77_ew&oe=66C12EB8',
                    fit: BoxFit.cover,
                  ),
                  const Positioned(
                    bottom: 16,
                    right: 16,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://scontent-mxp1-1.xx.fbcdn.net/v/t39.30808-6/368026394_1338646700400353_5417791331397426477_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeG-DO8_CBQZQk8MXcWmQgz-1jRfTJ1lbnvWNF9MnWVue1AFvGnAnLt9MzGh4K4_mgU7GLepbOmvXI3woQ9Rdk_v&_nc_ohc=YEzEeevR2t8Q7kNvgHvNWVM&_nc_ht=scontent-mxp1-1.xx&oh=00_AYB6CN5aEmmjpcKiOllStF1EZw4yRlpCG7HX0ONPj2B35w&oe=66C15149',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  // Handle settings action
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Software Developer',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Flutter enthusiast | Open source contributor',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.darkGrey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        _buildStatColumn('Posts', '42'),
                        _buildStatColumn('Followers', '1.2k'),
                        _buildStatColumn('Following', '300'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _buildPostItem(index);
              },
              childCount: 20, // Number of posts
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: actionButton,
        elevation: 2,
        child: const Icon(
          Icons.fingerprint,
          color: AppColors.white,
        ),
      ),
    );
  }

  Widget _buildStatColumn(String title, String count) {
    return Column(
      children: <Widget>[
        Text(
          count,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        Text(
          title,
          style: const TextStyle(color: AppColors.darkGrey),
        ),
      ],
    );
  }

  Widget _buildPostItem(int index) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Post $index',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'This is the content of post $index. It can be a long text or even contain images.',
              style: const TextStyle(color: AppColors.darkGrey),
            ),
          ],
        ),
      ),
    );
  }
}
