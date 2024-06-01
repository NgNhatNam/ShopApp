import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cuoi_ki_flutter/components/button/app_elevated_button.dart';
import 'package:cuoi_ki_flutter/models/onboarding_model.dart'; 
import 'package:cuoi_ki_flutter/pages/auth/login_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});
  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _completeOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboardingCompleted', true);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              contents[i].image ?? '',
                              height: 300,
                            ),
                            Text(
                              contents[i].title ?? '',
                              style: const TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              contents[i].discription ?? '',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 18,
                                color: AppColor.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index, context),
                ),
              ),
              Container(
                height: 60,
                margin: const EdgeInsets.all(40),
                width: double.infinity,
                child: AppElevatedButton(
                  text: _currentPage == contents.length - 1 ? "Bắt đầu" : "Tiếp theo",
                  onPressed: () {
                    if (_currentPage == contents.length - 1) {
                      _completeOnboarding();
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  
                ),
              ),
            ],
          ),
          Positioned(
            top: 40,
            right: 20,
            child: GestureDetector(
              onTap: _completeOnboarding, 
              child: const Text(
                'Bỏ qua',
                style: TextStyle(
                  color: AppColor.grey,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: _currentPage == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.kprimaryColor,
      ),
    );
  }
}
