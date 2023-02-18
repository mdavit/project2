//
//  ViewController.swift
//  Lesson-04.04.23
//
//  Created by Davit Margaryan on 04.02.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var secondView: UIButton!
    @IBOutlet weak var thirdView: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        //rections()
        //        NotificationCenter.default.post(name: NSNotification(name: rawValue, object: <#T##Any?#>))
        //    }
//        func rections() {
//            NotificationCenter.default.addObserver(self,
//                                                   selector: #selector(ViewController.keyboardNotification(notification:)),
//                                                   name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
//        }
//
//        @objc func keyboardNotification(notification: NSNotification) {
//
//            if let userInfo = notification.userInfo {
//                let endFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue
//                let duration: TimeInterval = (userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? NSNumber)?.doubleValue ?? 0
//                let animationCurveRawNSN = userInfo[UIResponder.keyboardAnimationCurveUserInfoKey] as? NSNumber
//                let animationCurveRaw = animationCurveRawNSN?.uintValue ?? UIView.AnimationOptions.curveEaseInOut.rawValue
//                let animationCurve: UIView.AnimationOptions = UIView.AnimationOptions(rawValue: animationCurveRaw)
//
//                if (endFrame?.origin.y)! >= UIScreen.main.bounds.size.height {
//                    //close keyboard
//
//                } else {
//                    //open keyboar
//                    let height: CGFloat = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as? CGRect)!.size.height
//
//                }
//
//                UIView.animate(withDuration: duration,
//                               delay: TimeInterval(0),
//                               options: animationCurve,
//                               animations: { self.view.layoutIfNeeded() },
//                               completion: nil)
//            }
//        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        switch segue.identifier {
//        case "second":
//            let destinationFirst =  segue.destination as! SecondViewController
//            destinationFirst.knopka
//        case "third":
//            let destinationFirst = segue.destination as! ThirdViewController
//            destinationFirst.knopka2
//        default: break
//        }
//    }
        
        @IBAction func openSecondView(_ sender: Any) {
//            self.performSegue(withIdentifier: "second", sender: sender)
            let controller = storyboard?.instantiateViewController(identifier: "SecondVC") as! SecondViewController
            controller.knopka = textField.text
            controller.modalPresentationStyle = .fullScreen
            present(controller, animated: true, completion: nil)
        }
        
        @IBAction func openThirdView(_ sender: Any) {
//            self.performSegue(withIdentifier: "third", sender: sender)
            let controller2 = storyboard?.instantiateViewController(identifier: "ThirdVC") as! ThirdViewController
            controller2.knopka2 = textField.text
            controller2.modalPresentationStyle = .fullScreen
            present(controller2, animated: true, completion: nil)
        }
        
    }

