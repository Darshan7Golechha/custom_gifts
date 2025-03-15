import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GigDetailsScreen extends StatelessWidget {
  final String gigId;

  const GigDetailsScreen({super.key, required this.gigId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gig Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildGigImageGallery(),
            _buildGigDetails(),
            _buildSellerProfile(),
            _buildPackages(),
            _buildReviews(),
          ],
        ),
      ),
      bottomNavigationBar: _buildContactSellerButton(),
    );
  }

  Widget _buildGigImageGallery() {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://picsum.photos/300/250?random=$index',
              width: 300,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  Widget _buildGigDetails() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Professional Logo Design Service',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'I will create a unique and professional logo design for your business or brand. With over 5 years of experience, I guarantee a high-quality, memorable logo.',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: const [
              Icon(Icons.check_circle, color: Colors.green, size: 18),
              SizedBox(width: 8),
              Text('3 Concepts Included'),
              SizedBox(width: 16),
              Icon(Icons.check_circle, color: Colors.green, size: 18),
              SizedBox(width: 8),
              Text('Unlimited Revisions'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSellerProfile() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About the Seller',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://picsum.photos/80/80',
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Text(
                        ' 4.9 (250 reviews)',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Contact Seller'),
          ),
        ],
      ),
    );
  }

  Widget _buildPackages() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Packages',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildPackageCard('Basic', 50, [
                '1 Logo Concept',
                'Basic Design',
                '2 Revisions',
              ]),
              const SizedBox(width: 16),
              _buildPackageCard('Standard', 100, [
                '2 Logo Concepts',
                'Premium Design',
                'Unlimited Revisions',
                'Source Files',
              ]),
              const SizedBox(width: 16),
              _buildPackageCard('Premium', 200, [
                '3 Logo Concepts',
                'Premium Design',
                'Unlimited Revisions',
                'Source Files',
                'Branding Guide',
              ]),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPackageCard(String title, int price, List<String> features) {
    return Expanded(
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '\$$price',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 12),
              ...features.map((feature) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.check_circle, color: Colors.green, size: 16),
                      const SizedBox(width: 8),
                      Text(feature),
                    ],
                  ),
                );
              }).toList(),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Select Package'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReviews() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Customer Reviews',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          _buildReviewCard(
            'Sarah Johnson',
            4.5,
            'Absolutely amazing work! The logo perfectly captures my brand essence.',
          ),
          const SizedBox(height: 12),
          _buildReviewCard(
            'Mike Thompson',
            5.0,
            'Professional, quick, and exceeded my expectations. Highly recommend!',
          ),
          const SizedBox(height: 12),
          _buildReviewCard(
            'Emily Roberts',
            4.0,
            'Great design, though took a bit longer than expected. Still very satisfied.',
          ),
        ],
      ),
    );
  }

  Widget _buildReviewCard(String name, double rating, String review) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://picsum.photos/40/40?random=${name.hashCode}',
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          index < rating.floor() 
                            ? Icons.star 
                            : Icons.star_border,
                          color: Colors.amber,
                          size: 18,
                        );
                      }),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(review),
          ],
        ),
      ),
    );
  }

  Widget _buildContactSellerButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
        ),
        onPressed: () {},
        child: const Text(
          'Contact Seller',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}