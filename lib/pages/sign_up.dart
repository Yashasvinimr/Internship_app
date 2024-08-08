import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _branchController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _collegeController = TextEditingController();
  final TextEditingController _tenthPercentageController =
  TextEditingController();
  final TextEditingController _twelfthPercentageController =
  TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  String _selectedBE = 'BE/B.Tech'; // Define selectedBranch variable
  String _selectedME = 'ME/M.Tech/MCA';

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 373;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            padding:
            EdgeInsets.symmetric(horizontal: 20 * fem, vertical: 30 * fem),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.lexend(
                      fontWeight: FontWeight.w700,
                      fontSize: 28 * fem,
                      color: const Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 20 * fem),
                _buildTextField(context, 'Full Name', fem, _fullNameController),
                SizedBox(height: 20 * fem),
                _buildTextField(context, 'Branch', fem, _branchController),
                SizedBox(height: 20 * fem),
                _buildTextField(context, 'Email', fem, _emailController),
                SizedBox(height: 20 * fem),
                _buildTextField(
                    context, 'Phone Number', fem, _phoneNumberController),
                SizedBox(height: 20 * fem),
                _buildTextField(context, 'College', fem, _collegeController),
                SizedBox(height: 20 * fem),
                _buildTextField(context, '10th Percentage', fem,
                    _tenthPercentageController),
                SizedBox(height: 20 * fem),
                _buildTextField(context, '12th Percentage', fem,
                    _twelfthPercentageController),
                SizedBox(height: 20 * fem),
                _buildTextField(context, 'Location', fem, _locationController),
                SizedBox(height: 20 * fem),
                // Dropdown menu for Branch selection
                DropdownButton<String>(
                  value: _selectedBE,
                  onChanged: (value) {
                    setState(() {
                      _selectedBE = value!;
                    });
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'BE/B.Tech',
                      child: Text('BE/B.Tech'),
                    ),
                    DropdownMenuItem(
                      value: 'B.Sc Computers',
                      child: Text('B.Sc Computers'),
                    ),
                    DropdownMenuItem(
                      value: 'BCA',
                      child: Text('BCA'),
                    ),
                    DropdownMenuItem(
                      value: 'BBA',
                      child: Text('BBa'),
                    ),
                    DropdownMenuItem(
                      value: 'Others',
                      child: Text('Others'),
                    ),
                  ],
                ),
                SizedBox(height: 20 * fem),
                // Dropdown menu for Education level selection
                DropdownButton<String>(
                  value: _selectedME,
                  onChanged: (value) {
                    setState(() {
                      _selectedME = value!;
                    });
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'ME/M.Tech/MCA',
                      child: Text('ME/M.Tech/MCA'),
                    ),
                    DropdownMenuItem(
                      value: 'MBA IT',
                      child: Text('MBA IT'),
                    ),
                    DropdownMenuItem(
                      value: 'MBA',
                      child: Text('MBA'),
                    ),
                    DropdownMenuItem(
                      value: 'MS',
                      child: Text('MS'),
                    ),
                    DropdownMenuItem(
                      value: 'MS(Computers)',
                      child: Text('MS(computers)'),
                    ),
                    DropdownMenuItem(
                      value: 'None',
                      child: Text('None'),
                    ),
                  ],
                ),
                SizedBox(height: 20 * fem),
                _buildPasswordField(context, 'Password', fem, _obscurePassword,
                        (value) {
                      setState(() {
                        _obscurePassword = value;
                      });
                    }),
                SizedBox(height: 20 * fem),
                _buildPasswordField(
                    context, 'Confirm Password', fem, _obscureConfirmPassword,
                        (value) {
                      setState(() {
                        _obscureConfirmPassword = value;
                      });
                    }),
                SizedBox(height: 30 * fem),
                GestureDetector(
                  onTap: () async {
                    var userName = _fullNameController.text.trim();
                    var branch = _branchController.text.trim();
                    var email = _emailController.text.trim();
                    var phoneNumber = _phoneNumberController.text.trim();
                    var college = _collegeController.text.trim();
                    var tenthPercentage =
                    _tenthPercentageController.text.trim();
                    var twelfthPercentage =
                    _twelfthPercentageController.text.trim();
                    var location = _locationController.text.trim();
                    var password = _passwordController.text.trim();
                    var confirmPassword =
                    _confirmPasswordController.text.trim();
                    var selectedBE = _selectedBE;
                    var selectedME = _selectedME;

                    // Check if passwords match
                    if (password != confirmPassword) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Passwords do not match')),
                      );
                      return;
                    }

                    // Use FirebaseAuth to create a new user
                    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: email,
                      password: password,
                    );

                    // Save user data to Firestore
                    await FirebaseFirestore.instance.collection("users").doc(userCredential.user!.uid).set({
                      'fullName': userName,
                      'branch': branch,
                      'email': email,
                      'phoneNumber': phoneNumber,
                      'college': college,
                      'tenthPercentage': tenthPercentage,
                      'twelfthPercentage': twelfthPercentage,
                      'location': location,
                      'selectedBE': selectedBE,
                      'selectedME': selectedME,
                    });

                    // Successfully created user
                    // Now you can navigate to another page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF5A91C4),
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50 * fem,
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.lexend(
                            fontWeight: FontWeight.w500,
                            fontSize: 16 * fem,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20 * fem),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: GoogleFonts.lexend(
                          fontWeight: FontWeight.w400,
                          fontSize: 16 * fem,
                          color: const Color(0xFF000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Sign In',
                            style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w400,
                              fontSize: 16 * fem,
                              color: const Color(0xFF5A91C4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(BuildContext context, String label, double fem, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8 * fem),
        ),
      ),
    );
  }

  Widget _buildPasswordField(BuildContext context, String label, double fem, bool obscureText, Function(bool) onToggle) {
    return TextField(
      controller: label == 'Password' ? _passwordController : _confirmPasswordController,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8 * fem),
        ),
        suffixIcon: IconButton(
          icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () => onToggle(!obscureText),
        ),
      ),
    );
  }
}
