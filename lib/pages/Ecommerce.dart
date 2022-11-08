
import 'package:book_library/pages/Product.dart';
import 'package:book_library/pages/Product_card.dart';
import 'package:book_library/pages/Search_Form.dart';
import 'package:book_library/pages/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Categories.dart';
import 'Category.dart';
import 'Profile.dart';
import 'Section_Title.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({Key? key}) : super(key: key);

     @override
     Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: bgColor,
        appBar: AppBar(
       //  backgroundColor: Colors.transparent,
       //  elevation: 0,
       // //  leading: IconButton(onPressed: (){},icon: SvgPicture.asset("svg_icon/menu.svg"),
       //  ),
       // //  title: Row(
       //    mainAxisAlignment: MainAxisAlignment.center,
       //    children: [SvgPicture.asset("svg_icon/Location.svg"),
       //    const SizedBox(width: defaultPadding / 2),
       //    Text("Noida Sec 62", style: Theme.of(context).textTheme.subtitle2,)
       //   ],
       //  ),
       //  actions: [
       //    IconButton(
       //      onPressed: () {},
       //      icon: SvgPicture.asset("svg_icon/Notification.svg"),
       //    )
       //  ],

          backgroundColor: Color(0xffc29a37),
          elevation: 0,
          //leading: Icon(Icons.menu),
          title: Text("Home"),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap:() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
                child: Container(
                  width: 36,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.cover),
                  ),
                  // child: Center(child: Text("0")),
                ),
              ),
            ),
          ],

        ),
       body: SingleChildScrollView(
           padding: const EdgeInsets.all(defaultPadding),
           child:Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           Text("Explore" ,style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.w500,
           color: Colors.black),
           ),
           const Text(
          "Best Products For You",
           style: TextStyle(fontSize: 18),
           ),
            const Padding(
              padding:  EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
             ),
             const Categories(),
             const SizedBox(height: defaultPadding),
             NewArrivalProducts(),
             const SizedBox(height: defaultPadding),
             NewProducts(),
              ],
            ),
          ),
        );
      }
   }
class NewArrivalProducts extends StatelessWidget {
  const NewArrivalProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "New Arrival",
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
              physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.horizontal,
              child: Row(
              children: List.generate(
              demo_product.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: ProductCard(
                      title: demo_product[index].title,
                      image: demo_product[index].image,
                      price: demo_product[index].price,
                      bgColor: demo_product[index].bgColor,
                      press: (){
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => DetailsScreen(product: demo_product[index]),
                        //     ));
                      },
                    ),
                  ),
            ),
          ),
        )
      ],
    );
  }
}

class NewProducts extends StatelessWidget {
  const NewProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "Populars",
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
                  (index) =>
                  Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: ProductCard(
                      title: demo_product[index].title,
                      image: demo_product[index].image,
                      price: demo_product[index].price,
                      bgColor: demo_product[index].bgColor,
                      press: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => DetailsScreen(product: demo_product[index]),
                        //     ));
                      },
                    ),
                  ),
            ),
          ),
        )
      ],
    );
  }
}

  class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.bgColor,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final Color bgColor;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child:Container(
      width: 154,
      padding: const EdgeInsets.all(defaultPadding/2),
      decoration:const BoxDecoration(
      color: Colors.white,
      borderRadius:
      BorderRadius.all(Radius.circular(defaultBorderRadius)),
    ),
    child:Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(color: bgColor,
          borderRadius:const BorderRadius.all(Radius.circular(defaultBorderRadius)),
           ),
          child: Image.asset(image, height:132,
          ),
        ),
        const SizedBox(height: defaultPadding/2),
        Row(
        children:[
         Expanded(
          child: Text(title, style: const TextStyle(color: Colors.black),
          ),
         ),
          const SizedBox(width: defaultPadding/4),

          Text("\$"+ price.toString(), style: Theme.of(context).textTheme.subtitle2),
             ],
            ),
          ],
        ),
         ),
       );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
      ),
      ),
      child: Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding/4,
          vertical: defaultPadding/2),
      child:Column(
        children: [
          SvgPicture.asset(icon),
          const SizedBox(height: defaultPadding/2),
          Text(title, style: Theme.of(context).textTheme.subtitle2,
          ),

         ],

        ),

       ),

     );

   }
 }