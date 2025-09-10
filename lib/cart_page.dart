import 'package:e_commarce_site/components/cart_model.dart';
import 'package:e_commarce_site/screen/count_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
        backgroundColor: Colors.transparent,
        
        elevation: 0,
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child){
          return Column(
            children: [
              if(value.cartItem.isEmpty) Text("Your Cart Is Empty"),
              Expanded(
                child: ListView.builder(
                  itemCount: value.cartItem.length,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      // padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Image.asset(value.cartItem[index][2], height: 50, width: 50,),
                        title: Text(value.cartItem[index][0]),
                        subtitle: Text("\$ ${value.cartItem[index][1]}"),
                        trailing: IconButton(
                          onPressed: (){
                            value.removeFromCart(index: index);
                          }, 
                          icon: Icon(Icons.cancel),
                        ),
                      ),
                    );
                  },
                )
              ),

              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal)
                            ),
                            Text("\$${value.calculateTotal()}" ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(()=>CounterPage());
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1.5),
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                          child: Row(
                            children: [
                              Text("Pay Now", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                              Icon(Icons.arrow_forward_ios, color: Colors.white,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        }
      )
    );
  }
}