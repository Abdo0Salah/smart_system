import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:smart_system/Admin/screens/admin_home/admin-home.dart';

import 'accepted_qr.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:google_fonts/google_fonts.dart';

//import '../../../../doctor/screens/Qr Scanner/course_name.dart';
//import '../../../../doctor/screens/doctor_home.dart';
class QrReadScreen extends StatefulWidget {
  static const String routeName = 'QrReadScreen';

  @override
  State<QrReadScreen> createState() => _QrReadScreenState();
}

class _QrReadScreenState extends State<QrReadScreen> {
  String scanResult = 'Scan a code';
  bool isScanning = true; // متغير لتتبع حالة المسح
  late MobileScannerController cameraController; // المتحكم بالكاميرا

  @override
  void initState() {
    super.initState();
    cameraController = MobileScannerController();
  }

  @override
  void dispose() {
    cameraController.dispose(); // تأكد من تحرير موارد الكاميرا
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Topic'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.qr_code),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Scan QR Code",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              )),
          Expanded(
            flex: 5,
            child: MobileScanner(
              controller: cameraController, // استخدام المتحكم
              onDetect: (BarcodeCapture barcodeCapture) {
                final barcode = barcodeCapture.barcodes.first;
                if (isScanning) {
                  setState(() {
                    scanResult = barcode.rawValue ?? 'Unknown';
                    isScanning = false; // تعطيل المسح بعد القراءة
                  });
                  cameraController.stop(); // إيقاف الكاميرا
                }
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(scanResult),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20).w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        scanResult = 'Scan a code';
                        isScanning = true;
                      });
                      cameraController.start(); // إعادة تشغيل الكاميرا
                    },
                    child: Text('Restart Scanning'),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AcceptedQrScreen.routeName,
                      );
                    },
                    child: Text('Send'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
//@override

// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(title: Text('QR Code Scanner')),
//     body: Column(
//       children: <Widget>[
//         Expanded(
//           flex: 5,
//           child: QRView(
//             key: qrKey,
//             onQRViewCreated: _onQRViewCreated,
//
//           ),
//         ),
//         Expanded(
//           flex: 1,
//           child: Center(
//             child: (result != null)
//                 ? Text('Barcode Type: ${result?.format}   Data: ${result?.code}')
//                 : Text('Scan a code'),
//           ),
//         )
//       ],
//     ),
//   );
// }
//
// void _onQRViewCreated(QRViewController controller) {
//   setState(() {
//     this.controller = controller;
//   });
//   controller.scannedDataStream.listen((scanData) {
//     setState(() {
//       result = scanData;
//       if(result!=null) {
//         Navigator.of(context).pushNamed(DoctorHomeScreen.routeName);
//         return;
//       }
//     });
//   });
// }
//
// @override
// void dispose() {
//   controller?.dispose();
//   super.dispose();
// }
//}
