import 'package:first_app/product_app/view_model/city_vm.dart';
import 'package:first_app/product_app/view_model/user_vm.dart';
import 'package:first_app/product_app/views/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<OrderScreen> {
  GlobalKey<FormState> frmkey=GlobalKey();
static  TextEditingController firstNameController=TextEditingController();

 static TextEditingController phoneController=TextEditingController();
  
  String? gender="cash";
  String? selectedCity;
  CitiesVm cities=CitiesVm();
  String? mess;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Order"),),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.all(10),
          child: Form(
            key: frmkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              NTextFormField(
                      validator: (value) => checkValiedation(value,firstNameController.text),    
                       controller: firstNameController,
                        label: const Text("الاسم"),
                        hintText: "ادخل اسمك الرباعي هنا",
                  
                      
                      ),
            
                const SizedBox(height: 10,),
               
                 NTextFormField(
                  controller: phoneController,
                        validator: (value) => checkValiedationPhone(value,phoneController.text),    
                 
                        label: const Text("رقم الهاتف"),
                        hintText: "ادخل رقم هاتفك هنا",
                     
                      ),
              
                       const SizedBox(height: 10,),
              
DropdownButton(
  borderRadius:BorderRadius.circular(20) ,
  hint: const Text("اختار موعد التسليم"),
  alignment: Alignment.center,
  focusColor: Colors.blue,
  icon: Icon(Icons.delivery_dining_rounded),
 dropdownColor: Colors.brown,
value: selectedCity,
items: const [DropdownMenuItem(value: "mornig",child: Text("صباح")),DropdownMenuItem(value: "noon",child: Text("بعد الظهر")),DropdownMenuItem(value: "evening",child: Text("مساء")),],
  onChanged: (value){
    selectedCity=value;
    setState(() {
      
    });
  }),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                               const Text("عند الاستلام"),
                              Radio(value: 'cash', groupValue: gender, onChanged: (value){
                                gender=value;
                                setState(() {
                                  
                                });
                              }),
                                
                            ],
                          ),
                       
                             Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                  const Text("العمقي"),
                                 Radio(value: 'Al-Aomqi', groupValue: gender, onChanged: (value){
                                  gender=value;
                                  setState(() {
                                    
                                  });
                                 }),
                               ],
                             ),
                        
                           
                             Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                  const Text("العمقي"),
                                 Radio(value: 'Al-kurimi', groupValue: gender, onChanged: (value){
                                  gender=value;
                                  setState(() {
                                    
                                  });
                                 }),
                               ],
                             ),
                        
                        ],
                      ),
                      const SizedBox(height: 10),
                       Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.brown),
                          borderRadius: BorderRadius.circular(10)

                        ),
                        height: 60,

                        child: const TextField(
textAlign: TextAlign.right,
                       decoration: InputDecoration(
                          hintText: "اكتب ملاحضاتك هنا",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                           borderRadius: BorderRadius.zero,
                        ),
                          enabledBorder: OutlineInputBorder(
                          
                          borderSide:  BorderSide.none,
                           borderRadius: BorderRadius.zero,
                        ),
                       ),

                        ),
                      ),
                     const SizedBox(height: 10),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(onPressed: (){
                          if( frmkey.currentState!.validate()){

                            UserVm userVm=UserVm();
                           
                            // if(a.length>=2 ){
                            if(selectedCity==null){
                              SnackBar(width: 100, duration: Duration(seconds: 10),content: Text("Error "),backgroundColor: Colors.red,);
                            }
                            else{
                               Navigator.pushNamed(context, '/success');
                            }
                               
                            //   if(phoneController.text.length==9 && phoneController.text.startsWith('70')||phoneController.text.startsWith('71')||phoneController.text.startsWith('73')||phoneController.text.startsWith('77')){
                              
                            //   }
                            // }
                            // else{
                        
                            // return checkValiedation(mess);
                            // }
                            

                            // userVm.register(
                            //   email: emailController.text ,password: passwordController.text, name: firstNameController.text);
                           
                            firstNameController.clear();
                            phoneController.clear();
                          }
                        
                               
                               }, child: const Row(
                          children: [
                            Icon(Icons.save),
                            Text("تاكيد"),
                          ],
                        )),
                      )

              ],
            ),
            
            ),
        ),
      ),
      ),
    );
  }
}


checkValiedation(String? value, controller){
  // value!=null&& value.isNotEmpty?null:"this field is required";
     List<String> a=controller!.split(' ');
                           
                               
if(value!=null&&value.isNotEmpty ){
  if(a.length<3){
    return "يجب ان بكون الاسم ثلاثي";
  }

  return null;
}

else
return "الحقل مطلوب";

}


checkValiedationPhone(String? value, controller){
  // value!=null&& value.isNotEmpty?null:"this field is required";
     List<String> a=controller!.split(' ');
                           
                               
if(value!=null&&value.isNotEmpty ){
   if(controller.length!=9 ){
        return 'يجب ان بحتوي الرقم على تسعه ارقام ويبداء 73او71و او70او 77';
            }

  return null;
}


else
return "الحقل مطلوب";

}


