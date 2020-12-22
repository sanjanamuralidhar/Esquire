import 'dart:math';
import 'dart:io' as io;
import 'package:audio_recorder/audio_recorder.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:path_provider/path_provider.dart';

class CustomAudioRecorder extends StatefulWidget {
  final LocalFileSystem localFileSystem;

  CustomAudioRecorder({localFileSystem})
      : this.localFileSystem = localFileSystem ?? LocalFileSystem();
  @override
  _CustomAudioRecorderState createState() => _CustomAudioRecorderState();
}

class _CustomAudioRecorderState extends State<CustomAudioRecorder> {
  Recording _recording = new Recording();
  bool _isRecording = false;
  bool _isPlaying = false;
  TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlugin = AudioPlayer();

    return Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.mic,
                  color: _isRecording ? Colors.green : Colors.red,
                ),
                onPressed: _isRecording ? _stop : _start),
            Text(_recording.duration != null
                ? _recording.duration.inSeconds.toString() + ' SEC'
                : '0 SEC'),
            IconButton(
                icon: Icon(
                  Icons.delete,
                  color: _isRecording ? Colors.grey : Colors.red,
                ),
                onPressed: () {
                  if (!_isRecording) {
                    final dir = io.Directory(_recording.path);
                    dir.deleteSync(recursive: true);
                  }
                }),
            IconButton(
              onPressed: () {
                setState(() {
                  audioPlugin
                      .play(_recording.path)
                      .then((value) => _isPlaying = true);
                  _isPlaying = false;
                  debugPrint(audioPlugin.state.toString());
                });
              },
              icon: _isPlaying
                  ? Icon(
                      Icons.pause,
                      color: Colors.green,
                    )
                  : Icon(
                      Icons.play_arrow,
                      color: Colors.green,
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  audioPlugin.stop().then((value) => _isPlaying = false);
                });
              },
              icon: Icon(
                Icons.stop,
                color: Colors.red,
              ),
            )
          ]),
    );
  }

  _start() async {
    try {
      if (await AudioRecorder.hasPermissions) {
        if (_controller.text != null && _controller.text != "") {
          String path = _controller.text;
          if (!_controller.text.contains('/')) {
            io.Directory appDocDirectory =
                await getApplicationDocumentsDirectory();
            path = appDocDirectory.path + '/' + _controller.text;
          }
          print("Start recording: $path");
          await AudioRecorder.start(
              path: path, audioOutputFormat: AudioOutputFormat.AAC);
        } else {
          await AudioRecorder.start();
        }
        bool isRecording = await AudioRecorder.isRecording;
        setState(() {
          _recording = new Recording(duration: new Duration(), path: "");
          _isRecording = isRecording;
        });
      } else {
        Scaffold.of(context).showSnackBar(
            new SnackBar(content: new Text("You must accept permissions")));
      }
    } catch (e) {
      print(e);
    }
  }

  _stop() async {
    var recording = await AudioRecorder.stop();
    print("Stop recording: ${recording.path}");
    bool isRecording = await AudioRecorder.isRecording;
    File file = widget.localFileSystem.file(recording.path);
    print("  File length: ${await file.length()}");
    setState(() {
      _recording = recording;
      _isRecording = isRecording;
    });
    _controller.text = recording.path;
  }
}
