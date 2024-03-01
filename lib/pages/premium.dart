import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Premium extends StatefulWidget {
  const Premium({super.key});

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {

  final YoutubePlayerController _ytcontrol = YoutubePlayerController(
      initialVideoId: 'PbIlXoijRvM',
    );

  @override
  void initState() {
    super.initState();
  }

  

  bool onSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Dukaan Premium"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Stack(
              children:[
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),

                Card(
                  margin: const EdgeInsets.all(20),
                  elevation: 2,
                  child: Padding(padding: const EdgeInsets.all(20),
                    child: Center(
                      child: Column(
                        children: [
                          // Dukaan premium image?
                          Image.asset('lib/images/logo.png'),
                          const SizedBox(height: 20,),
                          const Text('Get Dukaan Premium for just ₹4,999/year',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const Text("All the advanced features for scaling your business.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ] 
            ),
            
            
            // Features
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Features',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            
            // list
            
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.language)),
              ),
              title: Text('Custom domain name',
                 style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Get your own custom domain and build your brand on the internet.',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.verified_outlined)),
              ),
              title: Text('Verified seller badge',
                 style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Get green verified badge under your store name and build trust.',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.computer)),
              ),
              title: Text('Dukaan for PC',
                 style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Access all the exclusive premium features on Dukaan for PC.',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.headset_mic_outlined)),
              ),
              title: Text('Priority support',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Get your questions resolved with our priority customer support.',
                style: TextStyle(color: Colors.grey),
              ),
            ),

            const SizedBox(height: 15,),
            
            const Divider(thickness: 5,),

            const SizedBox(height: 15,),
            
            // youtube video
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('What is Dukaan Premium?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: YoutubePlayer(
                    controller: _ytcontrol,
                  ),
              ),
            ),
            
            const SizedBox(height: 20,),
            
            const Divider(thickness: 5,),
            
            const SizedBox(height: 15,),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                    const Text('Frequently asked questions',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(child: Text('What types of businesses can use Dukaan Premium?')),
                    
                    InkWell(onTap: () => setState(() {
                      onSelect = !onSelect;
                    }),
                    child: onSelect? const Icon(Icons.remove): const Icon(Icons.add))
                    
                  ],
                ),
                if(onSelect)
                const Text('Dukaan caters to a wide vriety of sellers. be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.',
                  overflow: TextOverflow.clip,
                ),
              
                const Divider(),
                
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What is your refund policy?'),
                    Icon(Icons.add)
                  ],
                ),
              
                const Divider(),
              
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: Text('Will there be an automatic charge after the paid trial?')),
                    Icon(Icons.add)
                  ],
                ),
              
                const Divider(),
              
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What payment methods do you offer?'),
                    Icon(Icons.add)
                  ],
                ),
              
                const Divider(),
              
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What happens when my free trial ends?'),
                    Icon(Icons.add)
                  ],
                ),
              
                const Divider(),
              
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What are the terms for the custom domain?'),
                    Icon(Icons.add)
                  ],
                ),
                ],
              ),
            ),

            const Divider(),

            const SizedBox(height: 10,),

            const Divider(thickness: 5,),

            const SizedBox(height: 10,),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Need help? Get in touch',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 15,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 167,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.chat_bubble_outline_outlined,
                        size: 30,
                      ),
                      SizedBox(height: 5,),
                      Text('Live Chat')
                    ],
                  ),
                ),
                Container(
                  width: 167,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call_outlined,
                        size: 30,
                      ),
                      SizedBox(height: 5,),
                      Text('Phone Call')
                    ],
                  ),
                )
              ],
            ),

            const SizedBox(height: 10,),

            const Divider(thickness: 2,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Select Domain',
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontWeight: FontWeight.bold
                  ),
                  
                ),
                MaterialButton(onPressed: (){},
                height: 60,
                minWidth: 180,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  color: Colors.blue.shade700,
                  child: const Text('Get Premium',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )

            
          ],
        ),
      ),
    );
  }
}