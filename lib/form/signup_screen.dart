import 'package:first_app/navigator/view_model/city_vm.dart';
import 'package:first_app/navigator/view_model/user_vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  GlobalKey<FormState> frmkey=GlobalKey();
  TextEditingController emailController=TextEditingController();
  TextEditingController firstNameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
  TextEditingController passwordConfigController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  
  String? gender="male";
  bool isTermAccepted=false;
  String? selectedCity;
  CitiesVm cities=CitiesVm();
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration:  BoxDecoration(
                      image: const DecorationImage(image: AssetImage("assets/images/y3.png"),fit: BoxFit.fill),
                      color: Colors.red,borderRadius: BorderRadius.circular(50)),
                    // child: const Icon(Icons.person,size: 60,),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      
                      child: TextFormField(
                      validator: (value) => checkValiedation(value),    

                       controller: firstNameController,
                       decoration:  InputDecoration(
                        
                        label: const Text("First Name"),
                        hintText: "Enter First Name",
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(),
                           borderRadius: BorderRadius.circular(20),
                        ),
                         enabledBorder: OutlineInputBorder(
                          
                          borderSide: const BorderSide(),
                           borderRadius: BorderRadius.circular(20),
                        ),
                      
                       ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: TextFormField(
                        controller: lastNameController,
                       validator: (value) => checkValiedation(value),     
                       decoration:  InputDecoration(
                        label: const Text("Last Name"),
                        hintText: "Enter Last Name",
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(),
                           borderRadius: BorderRadius.circular(20),
                        ),
                          enabledBorder: OutlineInputBorder(
                          
                          borderSide: const BorderSide(),
                           borderRadius: BorderRadius.circular(20),
                        ),
                      
                       ),
                      ),
                    ),
                 
                  ],
                ),
                const SizedBox(height: 10,),
                 TextFormField(

                  controller: emailController,
                    validator: (value) => checkValiedation(value),   
                       decoration:  InputDecoration(
                        label: const Text("E-Mail"),
                        hintText: "Enter Your E-Mail",
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(),
                           borderRadius: BorderRadius.circular(20),
                        ),
                          enabledBorder: OutlineInputBorder(
                          
                          borderSide: const BorderSide(),
                           borderRadius: BorderRadius.circular(20),
                        ),
                      
                       ),
                      ),
                      const SizedBox(height: 10,),
                 TextFormField(
                  controller: phoneController,
                        validator: (value) => checkValiedation(value),    
                       decoration:  InputDecoration(
                        label: const Text("Phone Number"),
                        hintText: "Enter Your Phone Number",
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(),
                           borderRadius: BorderRadius.circular(20),
                        ),
                          enabledBorder: OutlineInputBorder(
                          
                          borderSide: const BorderSide(),
                           borderRadius: BorderRadius.circular(20),
                        ),
                      
                       ),
                      ),
                       const SizedBox(height: 10,),
                 TextFormField(
                        validator: (value) => checkValiedation(value),
                        controller: passwordController,
                       decoration:  InputDecoration(
                        label: const Text("Password"),
                        hintText: "Enter Password",
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(),
                           borderRadius: BorderRadius.circular(20),
                        ),
                          enabledBorder: OutlineInputBorder(
                          
                          borderSide: const BorderSide(),
                           borderRadius: BorderRadius.circular(20),
                        ),
                      
                       ),
                      ),
                       const SizedBox(height: 10,),
                 TextFormField(
                  controller: passwordConfigController,
                        validator: (value) => checkValiedation(value),      
                       decoration:  InputDecoration(
                        label: const Text("Configration Password"),
                        hintText: "Enter Password again",
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(),
                           borderRadius: BorderRadius.circular(20),
                        ),
                          enabledBorder: OutlineInputBorder(
                          
                          borderSide: const BorderSide(),
                           borderRadius: BorderRadius.circular(20),
                        ),
                      
                       ),
                      ),
DropdownButton(
  borderRadius:BorderRadius.circular(20) ,
  hint: const Text("Select the City"),
  alignment: Alignment.center,
  focusColor: Colors.blue,
  icon: Icon(Icons.location_city_rounded),
 dropdownColor: Colors.brown,
value: selectedCity,
items: [DropdownMenuItem(value: "Sa",child: Text("Sanaa"))],
  // items:cities.loadCities().map((e) =>DropdownMenuItem(value: e.value,child: Text(e.name),)),
  onChanged: (value){
    selectedCity=value;
    setState(() {
      
    });
  }),
                      Row(
                        children: [
                          Radio(value: 'male', groupValue: gender, onChanged: (value){
                            gender=value;
                            setState(() {
                              
                            });
                          }),
                          const Text("Male"),
                             Radio(value: 'female', groupValue: gender, onChanged: (value){
                              gender=value;
                              setState(() {
                                
                              });
                             }),
                          const Text("Female"),
                        ],
                      ),
                      const SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox(value: isTermAccepted, onChanged: (value){
                          isTermAccepted=value!;
                    setState(() {
                      
                    });
                        }),
                        const Text("Accept Trem & Conditions")
                      ],
                    ),
                       const SizedBox(height: 10),
                      
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(onPressed: (){
                          if( frmkey.currentState!.validate()){

                            UserVm userVm=UserVm();
                            userVm.register(email: emailController.text ,password: passwordController.text, name: firstNameController.text);
                            emailController.clear();
                            firstNameController.clear();
                            lastNameController.clear();
                            phoneController.clear();
                            passwordController.clear();
                            passwordConfigController.clear();
                          }
                        
                               
                               }, child: const Row(
                          children: [
                            Icon(Icons.save),
                            Text("Save"),
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


checkValiedation(String? value){
  // value!=null&& value.isNotEmpty?null:"this field is required";
if(value!=null&&value.isNotEmpty)
return null;
else
return "this field is required";

}
