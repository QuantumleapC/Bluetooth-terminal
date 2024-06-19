import 'package:bluetooth_terminal/pages/footer.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuantumnLeap Creations',
            style: TextStyle(fontSize: 17)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/About.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                ),
                const Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Who We Are',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'QuantumLeap Creations is an enterprise dedicated to driving innovation and creativity in technology to advance both society and the tech industry. Our team is passionately committed to making a meaningful impact on the world through our work',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 16),
                  const Text(
                    'Our Vision',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'To democratize technology, making it accessible to every individual, regardless of background. We believe technology is not just a tool but a force for empowerment and advancement, enriching communities as a whole. By seamlessly integrating technology into everyday life, we aim to create a more inclusive and connected world,',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Our Mission',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '"THE TECHNOLOGY YOU USE IMPRESSES NO ONE . THE EXPERIENCE  YOU CREATE IS EVERYTHING.” SEAN GERETY . To redefine the user experience in technology, prioritizing unforgettable interactions over mere product utility. By infusing every encounter with innovation and inspiration, we aim to not only elevate individual experiences but also drive positive change within the broader technological landscape.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Our Core Values',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'INTEGRITY- we are committed to providing products that honor our communities and customers.\nGROWTH- we believe that growth is what is required in an organization and community but also on a micro-level .\nINNOVATION- we constantly want to challenge conventional methods by being curious and creative .\nCOMPASSION – we want to better understand where we can help or where help is needed in the community not only by being observant but listening .\nDRIVE- “excellence is a habit not a goal” we welcome challenge and want to go above and beyond',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Our Team',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  //Team members

                  Column(
                    children: [
                      Row(
                        children: [
                          _buildTeamMember(
                            name: 'Destiny Motsamai',
                            role: 'Managing Director',
                            imagePath: 'assets/images/des.jpeg',
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          _buildTeamMember(
                            name: 'Ahlumile Mafanya',
                            role: 'CEO',
                            imagePath: 'assets/images/Ahlum.jpeg',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          _buildTeamMember(
                            name: 'Tumisang Lesimola',
                            role: 'IT Specialist',
                            imagePath: 'assets/images/Rom.jpeg',
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          _buildTeamMember(
                            name: 'Kamohelo Tjekana',
                            role: 'It Specialist',
                            imagePath: 'assets/images/Eddy.jpeg',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          _buildTeamMember(
                            name: 'Dumisani Malindi',
                            role: 'CRO',
                            imagePath: 'assets/images/Dumi.jpeg',
                          ),
                          const SizedBox(
                            width: 45,
                          ),
                          _buildTeamMember(
                            name: 'Ayanda Simwinga',
                            role: 'CIO',
                            imagePath: 'assets/images/Aya.jpeg',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          _buildTeamMember(
                            name: 'Ziphozethu Tshabalala',
                            role: 'AI Intergration Specialist',
                            imagePath: 'assets/images/Lu.jpeg',
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamMember(
      {required String name, required String role, required String imagePath}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                role,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
