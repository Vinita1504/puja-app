import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../temple/domain/entities/offering_item.dart';
import '../widgets/bill_details_widget.dart';
import '../widgets/chadhava_offerings_list_widget.dart';
import '../widgets/proceed_button_widget.dart';

/// Puja cart page
///
/// Displays the cart with selected puja and package, bill details,
/// available offerings, and a persistent proceed button.
class PujaCartPage extends StatefulWidget {
  final String pujaId;
  final String packageId;

  const PujaCartPage({
    super.key,
    required this.pujaId,
    required this.packageId,
  });

  @override
  State<PujaCartPage> createState() => _PujaCartPageState();
}

class _PujaCartPageState extends State<PujaCartPage> {
  // Mock data
  final String _pujaName = 'Rudrabhishek pooja';
  final int _pujaPrice = 85100; // in paise (851 rupees)
  final String _panditFee = 'Free';
  final String _discount = '0.0';

  late List<OfferingItemEntity> _offerings;
  late List<OfferingItemEntity> _selectedOfferings;

  @override
  void initState() {
    super.initState();
    _selectedOfferings = [];
    _offerings = [
      const OfferingItemEntity(
        id: '1',
        templeId: 'temple1',
        name: 'Offering 1',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        price: 21000, // 210.0 rupees in paise
        imageUrl: 'assets/images/shivji.png',
      ),
      const OfferingItemEntity(
        id: '2',
        templeId: 'temple1',
        name: 'Offering 2',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
        price: 21000,
        imageUrl: 'assets/images/lakshmi-puja.png',
      ),
      const OfferingItemEntity(
        id: '3',
        templeId: 'temple1',
        name: 'Offering 3',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
        price: 21000,
        imageUrl: 'assets/images/rudra-abhishek.png',
      ),
    ];
  }

  int _calculateTotalAmount() {
    final offeringsTotal = _selectedOfferings.fold<int>(
      0,
      (sum, offering) => sum + offering.price,
    );
    return _pujaPrice + offeringsTotal;
  }

  void _addOffering(OfferingItemEntity offering) {
    setState(() {
      _selectedOfferings.add(offering);
    });
  }

  void _removeOffering(OfferingItemEntity offering) {
    setState(() {
      _selectedOfferings.removeWhere((o) => o.id == offering.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final totalAmount = _calculateTotalAmount();

    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: context.colorScheme.onSurface),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Review Details',
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onSurface,
          ),
        ),
        centerTitle: true,
        backgroundColor: context.colorScheme.surface,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Bill details
                  BillDetailsWidget(
                    pujaName: _pujaName,
                    pujaPrice: _pujaPrice,
                    panditFee: _panditFee,
                    discount: _discount,
                    totalAmount: totalAmount,
                  ),
                  // Offerings list
                  ChadhavaOfferingsListWidget(
                    offerings: _offerings,
                    selectedOfferings: _selectedOfferings,
                    onAddPressed: _addOffering,
                    onRemovePressed: _removeOffering,
                  ),
                  // Bottom padding for proceed button
                  SizedBox(height: 80.h),
                ],
              ),
            ),
          ),
          // Persistent proceed button
          ProceedButtonWidget(
            totalAmount: totalAmount,
            onPressed: () {
              // TODO: Navigate to next step
            },
          ),
        ],
      ),
    );
  }
}
