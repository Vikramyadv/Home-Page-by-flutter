// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, must_be_immutable, prefer_const_constructors, dead_code, sized_box_for_whitespace, avoid_print, use_build_context_synchronously

// import 'dart:html';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  String SelectedImagepath = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 660,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Positioned(
                  top: 450,
                  left: 85,
                  child: Card(
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.file(
                        File(SelectedImagepath),
                        height: 200,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () async {
              selectImage();
              setState(() {});

              PermissionStatus StorageStatus =
                  await Permission.storage.request();
              if (StorageStatus == PermissionStatus.granted) {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => Center(),
                //   ),
                // );
              }
              if (StorageStatus == PermissionStatus.denied) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("This Permission is recommended."),
                  ),
                );
              }
              if (StorageStatus == PermissionStatus.permanentlyDenied) {
                openAppSettings();
              }
            },
            child: Text('Click me'),
          ),
        ],
      ),
    );
  }

  Future selectImage() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(
                      'Select Image From !',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            SelectedImagepath = await selectImageFromGallery();
                            print('Image_Path:-');
                            print(SelectedImagepath);
                            if (SelectedImagepath != '') {
                              Navigator.pop(context);
                              setState(() {});
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text("No Image Selected !"),
                              ));
                            }
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/gallery.png',
                                        height: 60,
                                        width: 60,
                                      ),
                                      Text('Gallery'),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            SelectedImagepath = await selectImageFromCamera();
                            print('Image_Path:-');
                            print(SelectedImagepath);

                            if (SelectedImagepath != '') {
                              Navigator.pop(context);
                              setState(() {});
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text("No Image Captured !"),
                              ));
                            }
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/camera.png',
                                        height: 60,
                                        width: 60,
                                      ),
                                      Text('Camera'),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  selectImageFromGallery() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }

  selectImageFromCamera() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }
}