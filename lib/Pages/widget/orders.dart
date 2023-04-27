import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_task/Utils/constant/color_constants.dart';

class Order_List extends StatelessWidget {
  // const Order_List({Key? key}) : super(key: key);
  List<String> images = [

    "https://images.unsplash.com/photo-1621951753015-740c699ab970?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dCUyMHNoaXJ0JTIwZGVzaWdufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1554200877-40aae1bb6ec1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80",
    "https://media.istockphoto.com/id/1163083366/photo/indian-traditional-kurti-with-flower-design-pattern.jpg?b=1&s=170667a&w=0&k=20&c=29rOHQiZyY2oVDU5Nxja6ahm3Y-7yt7_fsAdHcOKVEA=",
    "https://m.media-amazon.com/images/I/717h83InL6L._UL1280_.jpg",
    'https://media.istockphoto.com/id/1404611452/photo/stylish-brunette-asian-girl-wearing-black-t-shirt-and-sunglasses-posing-against-street-urban.jpg?s=2048x2048&w=is&k=20&c=TSHYALrCdQ1Qdo67E4K0y_vqv4HPzW_5S3tSswSfoOo='

  ];

  List<String> title = [
    "Order #1688068",
    "Order #1457741",
    "Order #1408896",
    "Order #1369633",
    "Order #1258697",
  ];

  List<String> rate = [
    "₹799",
    "₹397.4",
    "₹686.42",
    "₹1123.5",
    "₹369.56",
  ];

  List<String> date = [
    "Jul 12, 02:06 PM",
    "Apr 26, 07:47 AM",
    "Apr 11, 10:54 AM",
    "Apr 02, 11:29 AM",
    "Mar 29, 08:12 AM",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: title.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title[index],
                      style: TextStyle(color: ColorConstant.black),
                    ),
                    Text(rate[index], style: TextStyle(color: ColorConstant.blue)),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(date[index]),

                    Row(

                      children: [
                        CircleAvatar(radius: 5,backgroundColor: ColorConstant.green,),   SizedBox(width: 5,),
                        Text("Sucessful")
                      ],
                    )
                  ],
                ),
                leading: Container(
                  height: 70,
                    width: 70,
                    child: Image.network(images[index],fit: BoxFit.cover,)),
              ),
              
            ),
            Text("Order #168806852t455")
          ],
        );
      },
    );
  }
}
