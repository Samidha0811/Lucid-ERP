import 'package:flutter/material.dart';
import 'otp_verification_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF6A6CF6), Color(0xFFB06BF1), Color(0xFFFF6C8D)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Card
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFF4F1D75).withOpacity(0.98),
                          const Color(0xFF3D145B).withOpacity(0.98),
                        ],
                      ),
                      border: Border.all(color: Colors.white.withOpacity(0.06)),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x33000000),
                          blurRadius: 30,
                          offset: Offset(0, 18),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Top icon tile
                        Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: const LinearGradient(
                              colors: [Color(0xFF7847FF), Color(0xFFFF7A59)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x338B6CF6),
                                blurRadius: 20,
                                offset: Offset(0, 8),
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.category_rounded,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Title & subtitle
                        const Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Enter your credentials to continue',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.75),
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Email or Mobile
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Email or Mobile',
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                            ),
                            prefixIcon: Icon(
                              Icons.insert_drive_file_outlined,
                              color: Colors.white.withOpacity(0.85),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.25),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.35),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.10),
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 18,
                              horizontal: 12,
                            ),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 14),

                        // Password
                        TextField(
                          obscureText: _obscure,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                            ),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.white.withOpacity(0.85),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.white70,
                              ),
                              onPressed: () =>
                                  setState(() => _obscure = !_obscure),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.25),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.35),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.10),
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 18,
                              horizontal: 12,
                            ),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 8),

                        // Remember + Forgot
                        Row(
                          children: [
                            Checkbox(
                              value: _rememberMe,
                              onChanged: (v) =>
                                  setState(() => _rememberMe = v ?? false),
                              visualDensity: VisualDensity.compact,
                              side: BorderSide(
                                color: Colors.white.withOpacity(0.5),
                              ),
                              checkColor: Colors.white,
                              activeColor: const Color(0xFF8B6CF6),
                            ),
                            Text(
                              'Remember me',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.85),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Color(0xFFB18CFF),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 8),

                        // Sign In button (gradient)
                        SizedBox(
                          height: 52,
                          width: double.infinity,
                          child: Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(14),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(14),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const OTPVerificationPage(),
                                  ),
                                );
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFF764BA2),
                                      Color(0xFFFF7A59),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x338B6CF6),
                                      blurRadius: 18,
                                      offset: Offset(0, 8),
                                    ),
                                  ],
                                ),
                                child: const Center(
                                  child: Text(
                                    'Sign In',
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

                        const SizedBox(height: 18),

                        // Divider with text
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.white.withOpacity(0.15),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12.0,
                              ),
                              child: Text(
                                'OR CONTINUE WITH',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.white.withOpacity(0.15),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        // Social buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _socialButton(
                              icon: Icons.g_mobiledata,
                              label: 'Google',
                            ),
                            _socialButton(icon: Icons.apple, label: 'Apple'),
                            _socialButton(icon: Icons.code, label: 'GitHub'),
                          ],
                        ),

                        const SizedBox(height: 16),

                        // Footer
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'New to our platform? ',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                            const Text(
                              'Create Account',
                              style: TextStyle(
                                color: Color(0xFFB18CFF),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialButton({required IconData icon, required String label}) {
    return Expanded(
      child: Container(
        height: 48,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE8E8EF)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x11000000),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Icon(icon, color: const Color(0xFF3C3F58)),
      ),
    );
  }
}
