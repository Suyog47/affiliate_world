import 'package:affiliate_world/constants/colors.dart';
import 'package:affiliate_world/widgets/text_field_decoration.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List desc = [
    "Godrej 1 Ton 3 Star, 5-In-1 Convertible Cooling, Inverter Split AC (Copper, I-Sense Technology, 2023 Model.)",
    "Whirlpool 184 L 3 Star Direct-Cool Single Door Refrigerator",
    "ZEROLINE 1 Seater Swing Chair Without Stand & Cushion & Hook Indoor Outdoor Living Room Balcony Garden Patio Home Improvement",
    "Bajaj Military Series Glamore 800W Mixer Grinder| 3 Stainless Steel Military Grade Jars*",
    "LEOTUDE Half Sleeve Oversized Cottonblend Round Neck Drop Shoulder Printed T-Shirt for Men's"
  ];

  List links = [
    "https://www.amazon.in/Godrej-Convertible-Split-AC-12TINV3R32-GWA/dp/B0BN37ZCF7/ref=sr_1_5?_encoding=UTF8&rps=1&s=kitchen&sr=1-5",
    "https://www.amazon.in/Whirlpool-Refrigerator-205-WDE-CLS/dp/B0BSRVP834/ref=sr_1_9?nsdOptOutParam=true&s=kitchen&sr=1-9",
    "https://www.amazon.in/ZEROLINE-Improvement-Stand-Black-Black-Basket-Cushion-Red/dp/B0D1V2JFV7/?_encoding=UTF8&ref_=pd_hp_d_btf_ci_mcx_mr_hp_d",
    "https://www.amazon.in/Bajaj-Military-Glamore-Stainless-DuraCut%C2%AE/dp/B0CKBTDN9R/?_encoding=UTF8&ref_=pd_hp_d_btf_ci_mcx_mr_hp_d",
    "https://www.amazon.in/LEOTUDE-Oversized-Sleeve-Cottonblend-FS49_BLK_HOPE_P_Black_L/dp/B0D76N8W18/?_encoding=UTF8&ref_=pd_hp_d_btf_ci_mcx_mr_hp_d"
  ];

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Affiliates",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: themeColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  height: 200,
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Get your Affiliate links:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ))),
                      const SizedBox(height: 5),
                      TextFormField(
                        decoration: inputDecor.copyWith(
                          labelText: "Your product link",
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: themeColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text("Get the link",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("Top product links:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          )),
                    )),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          _launchUrl(Uri.parse(links[index]));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/img${index+1}.png"),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Expanded(
                                  child: Text(desc[index].toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                  textAlign: TextAlign.start),
                                ),
                              ]),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
