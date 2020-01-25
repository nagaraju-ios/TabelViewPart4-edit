//
//  SCViewController.swift
//  TabelViewPart2Sections
//
//  Created by THOTA NAGARAJU on 12/27/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit
import CoreData
class SCViewController: UIViewController , UINavigationControllerDelegate,UITableViewDelegate,UIImagePickerControllerDelegate,UITextFieldDelegate{
    
    
    @IBOutlet weak var ageTF: UITextField!
    
   
    @IBOutlet weak var allCatogirySC: UISegmentedControl!
    @IBOutlet weak var imageVw: UIImageView!
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var industryTF: UITextField!
    @IBOutlet weak var conentView: UIView!
    var imagePikker = UIImagePickerController()
    var imageButton:UIButton!
    var moc:NSManagedObjectContext!
    var frstTF = ""
    var lastTF = ""
    var numTF  =  ""
    var image11 = [UIImage]()
    var imagedata:NSData!
    var msg:String!
    var ad:AppDelegate!
    var index:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
     ad = UIApplication.shared.delegate as! AppDelegate
            moc = ad.persistentContainer.viewContext
                imagesdata()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @objc func tagetsSC(obj:UISegmentedControl){
        index = obj.tag
    }
    
    // Create imageDisplay button and addtarget function
            
            func imagesdata(){
            imageButton = UIButton(frame: CGRect(x: 110, y: 140, width: 200, height: 150))
            imageButton .clipsToBounds = true
            imageButton .layer.cornerRadius = imageButton.frame.size.width/2
            imageButton.addTarget(self, action: #selector(imageTarget), for: UIControl.Event.touchUpInside)
            imageButton.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
            imageButton.setTitle("ChooseImage", for: UIControl.State.normal)
            imageButton.setBackgroundImage(UIImage(named: "images"), for: UIControl.State.normal)
            conentView.addSubview(imageButton)
            }
            
    // addtrarget fun in image
        @objc func imageTarget(obj:Any)
             {
               if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.savedPhotosAlbum)){
                    imagePikker.delegate = self
                    imagePikker.sourceType = .savedPhotosAlbum
                    imagePikker.allowsEditing = true
                    self.present(imagePikker, animated: true, completion: nil)
                }
            }
    // image pikkercontroller fun
            
            func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
                if let pickkedImage:UIImage = info[UIImagePickerController.InfoKey.editedImage] as! UIImage{
              imageButton.setImage(pickkedImage, for: UIControl.State.normal)
              imagedata = (pickkedImage.pngData() as! NSData)
             
                }
                dismiss(animated: true, completion: nil)
            }
         
    // SAVE Contacts fun Of IB ActionButton
     
    @IBAction func saveBtn(_ sender: Any) {
        
            let entity = NSEntityDescription.entity(forEntityName: "Allpeoples", in: moc)
            let newUser = NSManagedObject(entity: entity!, insertInto: moc)
                   

   do
   {
     
        
        if (allCatogirySC.selectedSegmentIndex == 0){
            
            newUser.setValue(imagedata, forKey: "image")
            newUser.setValue(nameTF.text!, forKey: "name")
            newUser.setValue(industryTF.text!, forKey: "industry")
            newUser.setValue("Actors", forKey: "deisignation")
            let age = Int(ageTF.text!)
            newUser.setValue(age, forKey: "age")
                   
        }
        
        if (allCatogirySC.selectedSegmentIndex == 1){
            
            newUser.setValue(imagedata, forKey: "image")
            newUser.setValue(nameTF.text!, forKey: "name")
            newUser.setValue(industryTF.text!, forKey: "industry")
            newUser.setValue("Criketer", forKey: "deisignation")
            let age = Int(ageTF.text!)
            newUser.setValue(age, forKey: "age")
                   
        }
        
       
        if (allCatogirySC.selectedSegmentIndex == 2){
            
            newUser.setValue("Politician", forKey: "deisignation")
            newUser.setValue(imagedata, forKey: "image")
            newUser.setValue(nameTF.text!, forKey: "name")
            newUser.setValue(industryTF.text!, forKey: "industry")
            let age = Int(ageTF.text!)
            newUser.setValue(age, forKey: "age")
                   
        }
        
            
             
          print("saved")
            try moc.save()
        }catch{
            print("not saved")
        }
        
        
        navigationController?.popViewController(animated: true)
        
        }
    
    
        
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
