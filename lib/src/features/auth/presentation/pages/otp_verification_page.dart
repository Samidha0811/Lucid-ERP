import 'package:flutter/material.dart';
import '../../../dashboard/presentation/pages/dashboard_page.dart';

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF6A6CF6), Color(0xFFB06BF1), Color(0xFFFF6C8D)],
            ),
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 24,
                ),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(24, 36, 24, 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF4F1D75), Color(0xFF3D145B)],
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 24,
                        offset: Offset(0, 12),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Enter OTP',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'We have sent a verification code to your\nmobile number',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                      const SizedBox(height: 36),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          4,
                          (index) => SizedBox(
                            width: 60,
                            height: 60,
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              style: const TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                counterText: '',
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.06),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: const BorderSide(
                                    color: Color(0x33FFFFFF),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: const BorderSide(
                                    color: Color(0x26FFFFFF),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: const BorderSide(
                                    color: Color(0x66FFFFFF),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 28),
                      const Text(
                        "Didn't receive OTP?",
                        style: TextStyle(color: Colors.white70),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Resend Code',
                        style: TextStyle(
                          color: Color(0xFFC9A7FF),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 36),
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(16),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const DashboardPage(),
                                ),
                              );
                            },
                            child: Ink(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF9B5CF6),
                                    Color(0xFFFF6E8A),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Verify & Continue',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
