import 'package:flutter/material.dart';

import 'package:flutter_app_json_local/customWidgets/department.dart';

class Department extends StatefulWidget {

  final String dept;

  Department(this.dept);

  @override
  _DepartmentState createState() => _DepartmentState(this.dept);
}

class _DepartmentState extends State<Department> {

  final String dept;
  List<CustomDepartment> departments = List();

  _DepartmentState(this.dept);

  @override
  Widget build(BuildContext context) {
    departments.add(CustomDepartment("Cardiology", "Our team of cardiologists and cardiothoracic surgeons are trained at the top institutes in India and abroad and are completely dedicated to the treatment for coronary heart diseases. Our pioneering work for the prevention and treatment of cardiac diseases has led to the achievement of better outcomes and improved quality of life for thousands of cardiac patients who visit us each year with complex heart problems. Apollo Hospitals has a team led by the best Cardiologists in India and our advanced infrastructure supports the complex nature of the cardiac care provided. Third generation Cath Labs, Cardiac Critical Care Units and Intensive Care Units support our experienced cardiologists and post-operative care teams, making us the most sought-after Cardiology hospital in India."));
    departments.add(CustomDepartment("Orthopedices", "The Institutes are at the forefront in offering the latest in Orthopedic treatments and Orthopedic surgical advancements in India on par with the best centres in the world.\nOur Orthopedicians trained at the top centres worldwide, bring with them the latest and best techniques and work in our facilities that have the latest cutting edge technology in terms of equipments, operating rooms, recovery areas and advanced Physical therapy facilities.\nWe have dedicated & well equipped Orthopedic surgery complexes with laminar flow & various modern equipment like image intensifier, operating microscope, computer navigation system, top of the line arthroscopy system etc."));
    departments.add(CustomDepartment("Ophthalmology", "We have a fully equipped OT with the latest operating microscopes Phacoemulsification for removal of cataract is performed with the most advanced computer chip and fluidics to provide total control of the eye during modern phacoemulsification cataract surgery. In most cases phacoemulsification is done on day care basis where the patient goes home just after a few hours of the surgery.\nThe ophthalmology department is fully equipped with state of the art diagnostic and therapeutic equipments.\nThe Clinical team consists of internationally renowned doctors, providing the best of care"));
    departments.add(CustomDepartment("Nurology", "Ably assisted by the latest Neuro-Radiology services, Neuro-Intensive Care facilities and Medical and Radiation Oncology services, our Neurologists and Neurosurgeons achieve outcomes in neurological disease & treatments matching those of the leading institutions across the globe.\nThe department of neurosurgery at Apollo Hospitals in India is well equipped to treat all the neurological diseases including stroke, headache, epilepsy, coma, neuropathies, multiple sclerosis, myopathies, Parkinson's disease, Myasthenia Gravis and many more, establishing it as one of the best hospital for neurosurgery treatment in India.\nNeurosurgery a branch of surgery involved with the brain injury, spine and nerves, is a key specialty at Apollo hospitals. Our neurosurgery doctors treat neurological diseases such as brain injury or diseases, head injury, spinal injury, brain tumors, spinal tumors, brain hemorrhage, hydrocephalus, nerve injuries, tumors, disc prolapse or herniation, spinal dislocation, unstable spine, congenital malformations like atlanto-axial dislocation, spinal dysraphism etc. Treatment of seizures or epilepsy as well as modern treatments for movement disorders like Parkinson's disease are further specializations. More than 1000 major neurosurgeries are being carried out every year."));
    departments.add(CustomDepartment("Dermatology", "We offer a well-equipped department of Dermatology & Cosmetology with treatments ranging from routine outpatient care to intensive care for patients with dermatological emergencies. Our consultants are experts not only in skin disorders like psoriasis, vitiligo, hair loss etc but also in Sexually Transmitted Diseases (STDs) and HIV, Leprosy, Medical Cosmetology and Dermato-surgery.\nThe Department has full-fledged investigation facilities for Dermatopathology, skin biopsy, fungal studies etc.\nCosmetic Dermatology is fast becoming an integral part of the management of clinical dermatology. In addition to chemical peels to treat facial hyper-pigmentation and age spots, we offer microdermabrasion to treat the aftermath of acne and chickenpox, with excellent results. We also offer electro-epilation & laser for permanent reduction of unwanted hair."));

    return Scaffold(
      appBar: AppBar(title: Text(this.dept),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.red[50],
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          departments[0],
          departments[1],
          departments[2],
          departments[3],
          departments[4],
        ],
      )
    );
  }
}
