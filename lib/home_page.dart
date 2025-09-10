import 'package:e_commarce_site/cart_page.dart';
import 'package:e_commarce_site/components/cart_model.dart';
import 'package:e_commarce_site/components/itemtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.to(()=>CartPage());
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_cart_checkout_sharp, color: Colors.white,),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text("Good Morining."),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Let's order awesome items for you.",
                // textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(fontSize: 36),
              ), 
            ),

            Divider(height: 10,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                " Awesome Items",
                // textAlign: TextAlign.center,
                // style: GoogleFonts.notoSerif(fontSize: 18),
              ), 
            ),

            Expanded(
              child: Consumer<CartModel>(
                // child: ,
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.shopItem.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.8
                    ), 
                    padding: EdgeInsets.all(4),
                    
                    itemBuilder: (context, index){
                      return Itemtile(
                        ontap: (){
                          // Provider.of<CartModel>(context, listen: false).addToCart(name: name, price: price, imagePath: imagePath, color: color)
                          value.addToCart(name: value.shopItem[index][0], price: value.shopItem[index][1], imagePath: value.shopItem[index][2], color: value.shopItem[index][3]);
                        },
                        imagePath: value.shopItem[index][2], 
                        itemName: value.shopItem[index][0], 
                        itemPrice: value.shopItem[index][1], 
                        color: value.shopItem[index][3],
                      );
                    }
                  );
                }
              )
            ),

          ],
        ),
      ),
    );
  }

}