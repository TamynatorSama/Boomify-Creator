import 'package:beamify_creator/controller/state_manager/bloc/app_bloc.dart';
import 'package:beamify_creator/controller/state_manager/state/app_state.dart';
import 'package:beamify_creator/shared/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String wifiStreaming = "Automatic";
  String mobileSteaming = "Automatic";
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(builder: (context, cont) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top + 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Profile",
                  style: AppTheme.headerStyle,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  decoration: ShapeDecoration(
                      shape: const StadiumBorder(),
                      color: Colors.white.withOpacity(0.2)),
                  child: Row(
                    children: [
                      SvgPicture.string(
                        """<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 128 128"><circle cx="64" cy="66.58" r="57.36" fill="#d68f30"/><path fill="#bc6f00" d="M10.54 81.48v5.86c.6 1.55 1.27 3.08 2 4.56V81.48zm6.54 11.03v7.04c.8 1.13 1.63 2.24 2.5 3.31V92.51zm8.66 9.2v7.59c.97.87 1.97 1.7 3 2.5v-10.09zm10.66 6.99v8.16c.98.54 1.98 1.05 3 1.54v-9.7zm12.09 4.45v8.64c.99.28 1.99.53 3 .76v-9.4zm14.15 1.54v9.21c.45.01.9.03 1.36.03c.55 0 1.1-.03 1.64-.04v-9.2zm14.15-1.61v9.4c1.01-.23 2.01-.49 3-.77v-8.63zm12.06-4.51v9.71c1.02-.49 2.02-1.02 3-1.57v-8.14zm10.63-7.05v10.1a55.52 55.52 0 0 0 3-2.52v-7.58zm11.61-9.23h-2.5v10.35c.87-1.08 1.71-2.19 2.5-3.33zm6.5-11.07h-2v10.44c.73-1.51 1.4-3.06 2-4.63z"/><circle cx="64" cy="61.42" r="57.36" fill="#fff176"/><circle cx="64" cy="61.42" r="52.25" fill="#f2bc1a"/><path fill="#e08f00" d="M11.65 63.42c-.37-6.88.82-13.86 3.22-20.4c2.5-6.52 6.33-12.55 11.16-17.67C35.73 15.09 49.81 9.14 64 9.07c14.19.08 28.28 6.02 37.96 16.29c4.84 5.11 8.66 11.15 11.16 17.66c2.41 6.55 3.6 13.52 3.22 20.4h-.2a52.756 52.756 0 0 0-4-20a52.834 52.834 0 0 0-11.29-16.97a52.255 52.255 0 0 0-16.9-11.38a51.805 51.805 0 0 0-39.92 0a52.255 52.255 0 0 0-16.9 11.38a52.671 52.671 0 0 0-11.29 16.97a52.756 52.756 0 0 0-4 20z"/><path fill="#fff176" d="M64 4.07c-31.68 0-57.36 25.68-57.36 57.36S32.32 118.79 64 118.79s57.36-25.68 57.36-57.36S95.68 4.07 64 4.07m0 109.61c-28.86 0-52.25-23.39-52.25-52.25C11.75 32.56 35.14 9.17 64 9.17s52.25 23.39 52.25 52.25S92.86 113.68 64 113.68"/><path fill="#d38200" d="m37.99 21.35l1.27 3.93l4.14-1.58v1.58l-3.35 2.43l1.28 2.34v1.59l-3.34-2.43l-3.35 2.43v-1.59l1.28-2.34l-3.34-2.43V23.7l4.13 1.58zM22.01 43.91l1.28 3.93l4.13-1.58v1.58l-3.34 2.43l1.28 2.35v1.58l-3.35-2.43l-3.34 2.43v-1.58l1.28-2.35l-3.35-2.43v-1.58l4.14 1.58zm-.47 27.81l1.28 3.93l4.13-1.58v1.58l-3.34 2.43l1.28 2.35v1.58l-3.35-2.43l-3.34 2.43v-1.58l1.28-2.35l-3.35-2.43v-1.58l4.14 1.58zM38.6 93.8l1.28 3.93l4.13-1.58v1.58l-3.34 2.43l1.28 2.34v1.59l-3.35-2.43l-3.34 2.43v-1.59l1.28-2.34l-3.35-2.43v-1.58l4.14 1.58zm51.41-72.45l-1.27 3.93l-4.14-1.58v1.58l3.35 2.43l-1.28 2.34v1.59l3.34-2.43l3.35 2.43v-1.59l-1.28-2.34l3.34-2.43V23.7l-4.13 1.58zm15.98 22.56l-1.28 3.93l-4.13-1.58v1.58l3.34 2.43l-1.28 2.35v1.58l3.35-2.43l3.34 2.43v-1.58l-1.28-2.35l3.35-2.43v-1.58l-4.14 1.58zm.47 27.81l-1.28 3.93l-4.13-1.58v1.58l3.34 2.43l-1.28 2.35v1.58l3.35-2.43l3.34 2.43v-1.58l-1.28-2.35l3.35-2.43v-1.58l-4.14 1.58zM89.4 93.8l-1.28 3.93l-4.13-1.58v1.58l3.34 2.43l-1.28 2.34v1.59l3.35-2.43l3.34 2.43v-1.59l-1.28-2.34l3.35-2.43v-1.58l-4.14 1.58z"/><path fill="#fff176" d="m89.4 92.21l1.27 3.93h4.14l-3.35 2.43l1.28 3.93l-3.34-2.43l-3.35 2.43l1.28-3.93l-3.34-2.43h4.13zm17.06-22.07l1.27 3.93h4.14l-3.35 2.43l1.28 3.93l-3.34-2.43l-3.35 2.43l1.28-3.93l-3.34-2.43h4.13zm-.47-27.81l1.27 3.93h4.14l-3.35 2.43l1.28 3.93l-3.34-2.43l-3.35 2.43l1.28-3.93l-3.34-2.43h4.13zM90.01 19.76l1.28 3.93h4.13l-3.34 2.43l1.28 3.93l-3.35-2.43l-3.34 2.43l1.28-3.93l-3.35-2.43h4.14z"/><path fill="#d38200" d="m64.05 102.5l1.28 3.93l4.13-1.58v1.58l-3.34 2.43l1.28 2.35v1.58l-3.35-2.43l-3.34 2.43v-1.58l1.28-2.35l-3.35-2.43v-1.58l4.14 1.58z"/><path fill="#fff176" d="m64.05 100.4l1.28 3.93h4.13l-3.34 2.43l1.28 3.93l-3.35-2.43l-3.34 2.43l1.28-3.93l-3.35-2.43h4.14z"/><path fill="#d38200" d="m64.05 12.89l1.28 3.93l4.13-1.58v1.58l-3.34 2.43l1.28 2.35v1.58l-3.35-2.43l-3.34 2.43V21.6l1.28-2.35l-3.35-2.43v-1.58l4.14 1.58z"/><path fill="#fff176" d="m64.05 11.31l1.28 3.93h4.13l-3.34 2.43l1.28 3.93l-3.35-2.43l-3.34 2.43l1.28-3.93l-3.35-2.43h4.14zM38.6 92.21l-1.27 3.93h-4.14l3.35 2.43l-1.28 3.93l3.34-2.43l3.35 2.43l-1.28-3.93l3.34-2.43h-4.13zM21.54 70.14l-1.27 3.93h-4.14l3.35 2.43l-1.28 3.93L21.54 78l3.35 2.43l-1.28-3.93l3.34-2.43h-4.13zm.47-27.81l-1.27 3.93H16.6l3.35 2.43l-1.28 3.93l3.34-2.43l3.35 2.43l-1.28-3.93l3.34-2.43h-4.13zm15.98-22.57l-1.28 3.93h-4.13l3.34 2.43l-1.28 3.93l3.35-2.43l3.34 2.43l-1.28-3.93l3.35-2.43h-4.14z"/><path fill="#d38200" d="M95.22 48.2c0-.35-62.38 0-62.38 0l-.56 1.68v2.87c0 .52.42.94.94.94h61.56c.52 0 .94-.42.94-.94v-2.79zm.09 37.3H33.1l-4.16 2.09l.05 2.69c.01.29.25.53.55.53h68.93c.29 0 .54-.23.55-.53l.05-2.64z"/><path fill="#d38200" d="M43.13 77.32h-3.58c-.59 0-1.07-1.86-1.07-2.45l5.71-.18c0 .59-.48 2.63-1.06 2.63m1.22-19.31h-6.03c-.45 0-.84-.3-.97-.73l-.47-3.93h8.83l-.4 3.93c-.12.43-.51.73-.96.73m-6.03 20.5h6.03c.45 0 1.34.28 1.46.71c0 0-.03 1.87-.03 2.61s-.3 1.28-.97 1.28h-6.95c-.67 0-.97-.6-.97-1.28s-.03-2.59-.03-2.59c.13-.43 1.01-.73 1.46-.73m51.31-1.19h-3.58c-.59 0-1.07-1.86-1.07-2.45l5.71-.18c0 .59-.47 2.63-1.06 2.63m1.22-19.31h-6.03c-.45 0-.84-.3-.97-.73l-.47-3.93h8.83l-.4 3.93c-.12.43-.51.73-.96.73m-6.03 20.5h6.03c.45 0 1.34.28 1.46.71c0 0-.03 1.87-.03 2.61s-.3 1.28-.97 1.28h-6.95c-.67 0-.97-.6-.97-1.28s-.03-2.59-.03-2.59c.13-.43 1.01-.73 1.46-.73m-10.69-1.19h-3.58c-.59 0-1.07-1.86-1.07-2.45l5.71-.18c0 .59-.47 2.63-1.06 2.63m1.22-19.31h-6.03c-.45 0-.84-.3-.97-.73l-.47-3.93h8.83l-.4 3.93c-.12.43-.51.73-.96.73m-6.03 20.5h6.03c.45 0 1.34.28 1.46.71c0 0-.03 1.87-.03 2.61s-.3 1.28-.97 1.28h-6.95c-.67 0-.97-.6-.97-1.28s-.03-2.59-.03-2.59c.13-.43 1.01-.73 1.46-.73m-10.69-1.19h-3.58c-.59 0-1.07-1.86-1.07-2.45l5.71-.18c0 .59-.47 2.63-1.06 2.63m1.22-19.31h-6.03c-.45 0-.84-.3-.97-.73l-.47-3.93h8.83l-.4 3.93c-.12.43-.51.73-.96.73m-6.03 20.5h6.03c.45 0 1.34.28 1.46.71c0 0-.03 1.87-.03 2.61s-.3 1.28-.97 1.28h-6.95c-.67 0-.97-.6-.97-1.28s-.03-2.59-.03-2.59c.13-.43 1.01-.73 1.46-.73"/><path fill="#fff176" d="M95.67 45.52c0-.35-.18-.68-.45-.84l-31.18-17.7l-31.22 17.68c-.3.18-.49.51-.49.86l-.05 4.37c0 .55.45 1 1 1h61.43c.55 0 1-.45 1-1z"/><path fill="#f2bc1a" d="M87.84 44.33L64 30.8L40.16 44.33z"/><path fill="#fff176" d="M79.07 42.68L64 34.12l-15.07 8.56zm14.32 39.34H34.61c-.58 0-1.13.25-1.52.68l-4.04 4.51c-.28.31-.06.8.36.8h69.18c.41 0 .63-.49.36-.8L94.9 82.7c-.38-.43-.94-.68-1.51-.68m-3.76-6.51h-3.58c-.59 0-1.07-.48-1.07-1.07V58.46c0-.59.48-1.07 1.07-1.07h3.58c.59 0 1.07.48 1.07 1.07v15.99c0 .59-.48 1.06-1.07 1.06m1.23-19.31h-6.03c-.45 0-.84-.3-.97-.73l-.46-1.59c-.19-.64.3-1.28.97-1.28h6.95c.67 0 1.15.64.97 1.28l-.46 1.59c-.13.43-.53.73-.97.73m-6.04 20.51h6.03c.45 0 .84.3.97.73l.46 1.59c.19.64-.3 1.28-.97 1.28h-6.95c-.67 0-1.15-.64-.97-1.28l.46-1.59c.13-.44.53-.73.97-.73m-41.69-1.2h-3.58c-.59 0-1.07-.48-1.07-1.07V58.46c0-.59.48-1.07 1.07-1.07h3.58c.59 0 1.07.48 1.07 1.07v15.99c-.01.59-.49 1.06-1.07 1.06m1.22-19.31h-6.03c-.45 0-.84-.3-.97-.73l-.46-1.59c-.19-.64.3-1.28.97-1.28h6.95c.67 0 1.15.64.97 1.28l-.46 1.59c-.13.43-.52.73-.97.73m-6.03 20.51h6.03c.45 0 .84.3.97.73l.46 1.59c.19.64-.3 1.28-.97 1.28h-6.95c-.67 0-1.15-.64-.97-1.28l.46-1.59c.13-.44.52-.73.97-.73m20.31-1.2h-3.58c-.59 0-1.07-.48-1.07-1.07V58.46c0-.59.48-1.07 1.07-1.07h3.58c.59 0 1.07.48 1.07 1.07v15.99a1.07 1.07 0 0 1-1.07 1.06m1.22-19.31h-6.03c-.45 0-.84-.3-.97-.73l-.46-1.59c-.19-.64.3-1.28.97-1.28h6.95c.67 0 1.15.64.97 1.28l-.46 1.59c-.13.43-.52.73-.97.73m-6.03 20.51h6.03c.45 0 .84.3.97.73l.46 1.59c.19.64-.3 1.28-.97 1.28h-6.95c-.67 0-1.15-.64-.97-1.28l.46-1.59c.13-.44.52-.73.97-.73m20.31-1.2h-3.58c-.59 0-1.07-.48-1.07-1.07V58.46c0-.59.48-1.07 1.07-1.07h3.58c.59 0 1.07.48 1.07 1.07v15.99a1.07 1.07 0 0 1-1.07 1.06m1.22-19.31h-6.03c-.45 0-.84-.3-.97-.73l-.46-1.59c-.19-.64.3-1.28.97-1.28h6.95c.67 0 1.15.64.97 1.28l-.46 1.59c-.13.43-.52.73-.97.73m-6.03 20.51h6.03c.45 0 .84.3.97.73l.46 1.59c.19.64-.3 1.28-.97 1.28h-6.95c-.67 0-1.15-.64-.97-1.28l.46-1.59c.13-.44.53-.73.97-.73"/></svg>""",
                        width: 24,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        cont.user!.beamifyCredit,
                        style: AppTheme.bodyText,
                      ),
                      const SizedBox(
                        width: 3,
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 42,
            ),
            _buildUserHeader(
                avatar: cont.user?.avatar,
                firstame: cont.user?.firstName ?? "",
                lastname: cont.user?.lastName ?? "",
                email: cont.user?.email ?? ""),
            const SizedBox(
              height: 32,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Audio Quality",
                    style: AppTheme.headerStyle.copyWith(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Wrap(
                    runSpacing: 15,
                    children: [
                      _profileTiles(context,
                          title: "WiFi streaming",
                          subtitle: "",
                          customTrailling: PopupMenuButton(
                            position: PopupMenuPosition.under,
                            initialValue: wifiStreaming,
                            padding: const EdgeInsets.all(1),
                            onSelected: (value) {
                              wifiStreaming = value;
                              setState(() {
                                
                              });
                            },
                            child: Row(
                              children: [
                                Text(
                                  wifiStreaming,
                                  style: AppTheme.bodyText,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            itemBuilder: (conetext) => [
                              "High",
                              "Low",
                              "Automatic"
                            ]
                                .map((e) =>
                                    PopupMenuItem(value: e, child: Text(e)))
                                .toList(),
                          )),
                     
                      _profileTiles(context,
                          title: "Mobile streaming",
                          subtitle:
                              "Streaming higher quality over a mobile connection uses more data.",customTrailling: PopupMenuButton(
                            position: PopupMenuPosition.under,
                            initialValue: mobileSteaming,
                            padding: const EdgeInsets.all(1),
                            onSelected: (value) {
                              mobileSteaming = value;
                              setState(() {
                                
                              });
                            },
                            child: Row(
                              children: [
                                Text(
                                  mobileSteaming,
                                  style: AppTheme.bodyText,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            itemBuilder: (conetext) => [
                              "High",
                              "Low",
                              "Automatic"
                            ]
                                .map((e) =>
                                    PopupMenuItem(value: e, child: Text(e)))
                                .toList(),
                          )),
                     
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: AppTheme.headerStyle.copyWith(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Wrap(
                    runSpacing: 20,
                    children: [
                      _profileTiles(context,
                          title: "Terms and Conditions",
                          subtitle: "All the stuff you need to know"),
                      _profileTiles(context,
                          title: "Privacy Policy",
                          subtitle: "Important for both of us")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}

Widget _buildUserHeader(
        {String? avatar,
        required String firstame,
        required String lastname,
        required String email}) =>
    Column(
      children: [
        Container(
          height: 80,
          width: 80,
          padding: EdgeInsets.all(avatar == null ? 15 : 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.1)
              // image: const DecorationImage(
              //     image:  AssetImage("assets/images/demo-dp.jpg"),
              //     fit: BoxFit.cover)),
              ),
          child: avatar != null
              ? Image.network(
                  'https://beamify.stream/$avatar',
                  errorBuilder: (context, error, stackTrace) =>
                      SvgPicture.string(
                    """<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><circle cx="12" cy="6" r="4" fill="#163C86"/><path fill="#163C86" d="M20 17.5c0 2.485 0 4.5-8 4.5s-8-2.015-8-4.5S7.582 13 12 13s8 2.015 8 4.5" opacity="0.5"/></svg>""",
                    width: 24,
                    theme: const SvgTheme(currentColor: AppTheme.btnColor),
                  ),
                )
              : SvgPicture.string(
                  """<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><circle cx="12" cy="6" r="4" fill="#163C86"/><path fill="#163C86" d="M20 17.5c0 2.485 0 4.5-8 4.5s-8-2.015-8-4.5S7.582 13 12 13s8 2.015 8 4.5" opacity="0.5"/></svg>""",
                  width: 24,
                  theme: const SvgTheme(currentColor: AppTheme.btnColor),
                ),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Text(
              "$firstame $lastname",
              style: AppTheme.headerStyle,
            ),
            Text(
              email,
              style: AppTheme.bodyTextLight.copyWith(fontSize: 12),
            ),
          ],
        )
      ],
    );

Widget _profileTiles(BuildContext context,
        {required String title,
        required String subtitle,
        Widget? customTrailling}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTheme.headerStyle.copyWith(fontSize: 17),
            ),
            if (subtitle.isNotEmpty)
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.5),
                child: Text(
                  subtitle,
                  style: AppTheme.bodyTextLight.copyWith(fontSize: 12),
                ),
              ),
          ],
        ),
        customTrailling ??
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              color: Colors.white,
            )
      ],
    );


//     navigator.mediaDevices.getUserMedia({
//   audio: {
//     autoGainControl: false,
//     channelCount: 2,
//     echoCancellation: false,
//     latency: 0,
//     noiseSuppression: false,
//     sampleRate: 48000,
//     sampleSize: 16,
//     volume: 1.0
//   }
// });

// let answer = await peer.conn.createAnswer(offerOptions);
// answer.sdp = answer.sdp.replace('useinbandfec=1', 'useinbandfec=1; stereo=1; maxaveragebitrate=510000');
// await peer.conn.setLocalDescription(answer);
