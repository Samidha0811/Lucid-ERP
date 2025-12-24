import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

// Drawer helpers
Widget _drawerSectionLabel(String title) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(6, 14, 6, 6),
    child: Text(
      title,
      style: const TextStyle(
        color: Colors.black54,
        fontWeight: FontWeight.w700,
        fontSize: 12,
        letterSpacing: 0.4,
      ),
    ),
  );
}

Widget _drawerTile({
  required IconData icon,
  required Color iconBg,
  required String title,
  Widget? trailing,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 6),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Color(0x0F000000),
          blurRadius: 8,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: iconBg,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: Colors.white),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      trailing:
          trailing ?? const Icon(Icons.chevron_right, color: Colors.black38),
      onTap: () {},
    ),
  );
}

Widget _pointsBadge(String label) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    decoration: BoxDecoration(
      color: const Color(0xFFE7FFE7),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      label,
      style: const TextStyle(
        color: Color(0xFF1CA23E),
        fontWeight: FontWeight.w800,
        fontSize: 12,
      ),
    ),
  );
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF5B6CFF),
                Color(0xFFB06BF1),
                Color(0xFFFF6C8D),
                Color(0xFFFFC870),
              ],
            ),
          ),
        ),
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'LedgerOne',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 6),
              Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white),
            ],
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 24),
            children: [
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: const LinearGradient(
                        colors: [Color(0xFF7847FF), Color(0xFFFF7A59)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x22000000),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'A',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Aniket Desai',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'aniket21desai@gmail.com',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.verified_outlined, color: Color(0xFF8B6CF6)),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x15000000),
                      blurRadius: 10,
                      offset: Offset(0, 6),
                    ),
                  ],
                  border: Border.all(color: Color(0xFFFFE2C0)),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.timer_outlined, color: Color(0xFFFF7A59)),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Expires on: 15 Dec 25',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Icon(Icons.chevron_right_rounded, color: Colors.black38),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              _drawerSectionLabel('MY ACCOUNT'),
              _drawerTile(
                icon: Icons.business_outlined,
                iconBg: const Color(0xFF5CD1FF),
                title: 'Companies',
              ),
              _drawerTile(
                icon: Icons.group_outlined,
                iconBg: const Color(0xFFB085FF),
                title: 'Users',
              ),
              _drawerTile(
                icon: Icons.settings_outlined,
                iconBg: const Color(0xFF2CE6C8),
                title: 'Settings',
              ),
              _drawerTile(
                icon: Icons.share_outlined,
                iconBg: const Color(0xFFFFB84D),
                title: 'Refer a Friend',
              ),
              _drawerTile(
                icon: Icons.account_balance_wallet_outlined,
                iconBg: const Color(0xFF7AE582),
                title: 'Wallet',
                trailing: _pointsBadge('300 POINTS'),
              ),

              const SizedBox(height: 6),
              _drawerSectionLabel('SUBSCRIPTION'),
              _drawerTile(
                icon: Icons.credit_card_outlined,
                iconBg: const Color(0xFF8BC6FF),
                title: 'Purchase Subscription',
              ),

              const SizedBox(height: 6),
              _drawerSectionLabel('SECURITY'),
              _drawerTile(
                icon: Icons.lock_outline,
                iconBg: const Color(0xFFFFD84D),
                title: 'Set Passcode',
              ),
              _drawerTile(
                icon: Icons.vpn_key_outlined,
                iconBg: const Color(0xFFFF6C8D),
                title: 'Forgot Password',
              ),

              const SizedBox(height: 6),
              _drawerSectionLabel('SUPPORT'),
              _drawerTile(
                icon: Icons.info_outline,
                iconBg: const Color(0xFFB0BEC5),
                title: 'Version 19.6.2',
              ),
              _drawerTile(
                icon: Icons.help_outline,
                iconBg: const Color(0xFF8B6CF6),
                title: 'Help',
              ),
              _drawerTile(
                icon: Icons.info,
                iconBg: const Color(0xFFB085FF),
                title: 'About',
              ),
              _drawerTile(
                icon: Icons.logout,
                iconBg: const Color(0xFFFF7A59),
                title: 'Logout',
              ),
              _drawerTile(
                icon: Icons.privacy_tip_outlined,
                iconBg: const Color(0xFF2CE6C8),
                title: 'Privacy Policy',
              ),

              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF3E9),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x11000000),
                      blurRadius: 10,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.workspace_premium_outlined,
                      color: Color(0xFFFF7A59),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Premium Features\nUnlock advanced analytics & reports',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Last sync pill
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.sync, size: 16, color: Colors.black54),
                      SizedBox(width: 6),
                      Text(
                        'Last sync: 11 Dec 25 @ 05:54 pm',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Icon(Icons.info_outline, color: Colors.black45),
              ],
            ),

            const SizedBox(height: 12),

            // Two quick cards
            Row(
              children: [
                Expanded(
                  child: _quickCard(
                    context,
                    icon: Icons.inventory_2_outlined,
                    title: 'Items',
                    subtitle: 'Manage inventory',
                    start: const Color(0xFF5B6CFF),
                    end: const Color(0xFFB6E3FF),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _quickCard(
                    context,
                    icon: Icons.group_outlined,
                    title: 'Party',
                    subtitle: 'Manage clients',
                    start: const Color(0xFF5EE7A4),
                    end: const Color(0xFFD9F8E5),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Date range chip
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.calendar_today_outlined,
                      size: 18,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 8),
                    Text('01 Apr 25 - 31 Mar 26'),
                    SizedBox(width: 8),
                    Icon(Icons.chevron_right, size: 20, color: Colors.black45),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Financial Overview header
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Financial Overview',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 8),

            // Overview list
            _overviewTile(
              icon: Icons.receipt_long,
              iconBg: Color(0xFF5CD1FF),
              title: 'Sales - Credit Note',
              amount: '₹ 725',
            ),
            _overviewTile(
              icon: Icons.shopping_cart_outlined,
              iconBg: Color(0xFFB085FF),
              title: 'Purchase - Debit Note',
              amount: '₹ 0',
            ),
            _overviewTile(
              icon: Icons.receipt_outlined,
              iconBg: Color(0xFF2CE6C8),
              title: 'Receipt',
              amount: '₹ 0',
            ),
            _overviewTile(
              icon: Icons.payments_outlined,
              iconBg: Color(0xFFFFB84D),
              title: 'Payment',
              amount: '₹ 0',
            ),
            _overviewTile(
              icon: Icons.trending_up,
              iconBg: Color(0xFF7AE582),
              title: 'Outstanding Receivable',
              amount: '₹ 725',
            ),
            _overviewTile(
              icon: Icons.trending_down,
              iconBg: Color(0xFFFF6C8D),
              title: 'Outstanding Payable',
              amount: '₹ 0',
            ),
            _overviewTile(
              icon: Icons.savings_outlined,
              iconBg: Color(0xFFFFD84D),
              title: 'Cash / Bank Balance',
              amount: '₹ 0',
            ),
            _overviewTile(
              icon: Icons.assignment_outlined,
              iconBg: Color(0xFF8BC6FF),
              title: 'Sales Order',
              amount: '₹ 0',
            ),
            _overviewTile(
              icon: Icons.shopping_bag_outlined,
              iconBg: Color(0xFFFFB5C2),
              title: 'Purchase Order',
              amount: '₹ 0',
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFF1E88E5),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Outstandings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Sales Team',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Reports',
          ),
        ],
      ),
    );
  }
}

// Helpers
Widget _quickCard(
  BuildContext context, {
  required IconData icon,
  required String title,
  required String subtitle,
  required Color start,
  required Color end,
}) {
  return Container(
    height: 110,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: const [
        BoxShadow(
          color: Color(0x19000000),
          blurRadius: 16,
          offset: Offset(0, 8),
        ),
      ],
    ),
    padding: const EdgeInsets.all(16),
    child: Row(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [start, end],
            ),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
              const SizedBox(height: 4),
              Text(subtitle, style: const TextStyle(color: Colors.black54)),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _overviewTile({
  required IconData icon,
  required Color iconBg,
  required String title,
  required String amount,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
      boxShadow: const [
        BoxShadow(
          color: Color(0x12000000),
          blurRadius: 10,
          offset: Offset(0, 6),
        ),
      ],
    ),
    child: Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: iconBg,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 6),
              Text(
                amount,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        const Icon(Icons.chevron_right, color: Colors.black45),
      ],
    ),
  );
}
