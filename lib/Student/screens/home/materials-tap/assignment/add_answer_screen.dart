import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import '../../../../../cache/cache_helper.dart';
import '../../../../../core/api/end_ponits.dart';
import 'assinment_screen.dart';
class AddAnswerScreen extends StatefulWidget {
  const AddAnswerScreen({super.key});
  static const String routeName = 'AddAnswerScreen';

  @override
  _AddAnswerScreenState createState() => _AddAnswerScreenState();
}

class _AddAnswerScreenState extends State<AddAnswerScreen> {
  FilePickerResult? result;
  String? fileName;
  String? filePath;

  void _pickFile() async {
    result = await FilePicker.platform.pickFiles(type: FileType.any);

    if (result != null) {
      filePath = result!.files.single.path;
      fileName = result!.files.single.name;
      setState(() {});
    }
  }

  void _uploadFile() async {
    if (filePath == null) return;

    String url = "http://eirpsystem.runasp.net/api/Assignment/submit?assignmentId=${CacheHelper().getData(key: ApiKey.assignmentIdSaved)}&studentId=${CacheHelper().getData(key: ApiKey.id)}";
    Dio dio = Dio();

    FormData formData = FormData.fromMap({
      "answer": await MultipartFile.fromFile(filePath!, filename: fileName),
    });


    try {
      Response response = await dio.post(url, data: formData,options:Options(
        headers: {
          'Authorization': 'Bearer ${CacheHelper().getData(key: ApiKey.token)}',
        },
      ) );
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('File uploaded successfully')));
      }
      else  if (response.statusCode == 500) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('already submitted')));
      }else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to upload file')));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFF3F7FF),
      appBar: AppBar(
        backgroundColor: Color(0xffEFF3F7FF),
        elevation: 0,
        title: Text(
          'Assignment',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 150, bottom: 150),
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  height: 5,
                  width: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Add answer",
                            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black),
                          ),
                          Spacer(),
                          Text(
                            "Assigned",
                            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: _pickFile,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.add, color: Colors.blue),
                              Text(
                                "Add attachment",
                                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18, color: Colors.blue),
                              ),
                              Spacer(),
                              Icon(Icons.upload, color: Colors.blue),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (fileName != null) ...[
                      SizedBox(height: 20),
                      Text(
                        "Selected file: $fileName",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                    SizedBox(height: 100),
                    TextButton(
                      onPressed: _uploadFile,
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                      child: Text(
                        "Submit Assignment",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
