import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart' as Path;

import 'chech_permission.dart';
import 'directory_path.dart';

class CustomFileDownloader extends StatefulWidget {
  final String fileName;
  final String filePath;

  CustomFileDownloader(
      {super.key, required this.fileName, required this.filePath});

  @override
  State<CustomFileDownloader> createState() => _CustomFileDownloaderState();
}

class _CustomFileDownloaderState extends State<CustomFileDownloader> {
  bool isPermission = false;
  bool downloading = false;
  bool fileExists = false;
  double progress = 0;
  late String fullPath;
  late CancelToken cancelToken;
  var checkAllPermissions = CheckPermission();
  var getPathFile = DirectoryPath();

  checkPermission() async {
    var permission = await checkAllPermissions.isStoragePermission();
    if (permission) {
      setState(() {
        isPermission = true;
      });
      checkFileExists();
    }
  }

  startDownload() async {
    cancelToken = CancelToken();
    var storePath = await getPathFile.getPath();
    fullPath = '$storePath/${widget.fileName}';
    setState(() {
      downloading = true;
      progress = 0;
    });

    try {
      await Dio().download(
        widget.filePath, // Use the file URL from the widget
        fullPath,
        onReceiveProgress: (count, total) {
          setState(() {
            progress = count / total;
          });
        },
        cancelToken: cancelToken,
      );
      setState(() {
        downloading = false;
        fileExists = true;
      });
    } catch (e) {
      print(e);
      setState(() {
        downloading = false;
      });
    }
  }

  cancelDownload() {
    cancelToken.cancel();
    setState(() {
      downloading = false;
    });
  }

  checkFileExists() async {
    var storePath = await getPathFile.getPath();
    fullPath = '$storePath/${widget.fileName}';
    bool fileExistCheck = await File(fullPath).exists();
    setState(() {
      fileExists = fileExistCheck;
    });
  }

  openFile() {
    OpenFile.open(fullPath);
    print("Opening file: $fullPath");
  }

  @override
  void initState() {
    super.initState();
    checkPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isPermission
          ? Card(
              elevation: 10,
              shadowColor: Colors.grey.shade100,
              child: GestureDetector(
                onTap: () {
                  fileExists && !downloading ? openFile() : startDownload();
                },
                child: ListTile(
                  title: Text(
                    widget.fileName, // Use the file name from the widget
                    style: TextStyle(fontSize: 14),
                  ),
                  leading: Icon(Icons.picture_as_pdf, color: Colors.red),
                  trailing: IconButton(
                    onPressed: () {
                      fileExists && !downloading
                          ? openFile()
                          : startDownload();
                    },
                    icon: fileExists
                        ? Icon(Icons.save, color: Colors.green)
                        : downloading
                            ? Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircularProgressIndicator(
                                    value: progress,
                                    strokeWidth: 3,
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.blue,
                                    ),
                                  ),
                                  Text(
                                    "${(progress * 100).toStringAsFixed(2)}%",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              )
                            : Icon(Icons.download),
                  ),
                ),
              ),
            )
          : TextButton(
              onPressed: checkPermission,
              child: const Text("Permission issue"),
            ),
    );
  }
}
