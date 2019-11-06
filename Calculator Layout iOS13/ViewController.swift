

 import UIKit

 class ViewController: UIViewController {
	 var ScreenDigit : Double = 0
	 var dec : Bool = false
	 var operation = 0
	 var previous : Double = 0
	 
	 override func viewDidLoad() {
	     super.viewDidLoad()
	      Label.text = ""
	     // Do any additional setup after loading the view.
	 }

	 @IBOutlet weak var Label: UILabel!
	 @IBAction func Numbers(_ sender: UIButton) {
		 if(dec == true)
		 {
			 Label.text = sender.currentTitle
			 ScreenDigit = Double(Label.text!)!
			 dec = false
		 }else{
			 Label.text = Label.text! + sender.currentTitle!
			 ScreenDigit = Double(Label.text!)!
			 
		 }
	 }
	 @IBAction func Operations(_ sender: UIButton) {
		 
		 if(Label.text != "") && (sender.tag != 18) && (sender.tag != 13)
		 {
			 previous = Double(Label.text!)!
			 if(sender.tag == 17)
			 {
				 Label.text = "+"
				 
			 }
			 else if(sender.tag == 16)
			 {
				 Label.text = "-"
				 
			 }
			 else if(sender.tag == 15)
			 {
				 Label.text = "*"
				 
			 }
			 else if(sender.tag == 14)
			 {
				 Label.text = "/"
				 
			 }
			 else if(sender.tag == 11)
			 {
				 Label.text = "%"
			 }
			 dec = true
			 operation = sender.tag
		 }
		 else if(sender.tag == 18)
		 {
			 if(operation == 17)
			 {
				 Label.text = String(format : "%.4f" , (previous + ScreenDigit))
			 }
			 else if(operation == 16)
			 {
				 Label.text = String(format : "%.4f" , (previous - ScreenDigit))
			 }
			 else if(operation == 15)
			 {
				 Label.text = String(format : "%.4f" , (previous * ScreenDigit))
			 }
			 else if(operation == 14)
			 {
				 Label.text = String(format : "%.4f" , (previous / ScreenDigit))
			 }
			 else if(operation == 11)
			 {
				 Label.text = String(format : "%.4f" , ((previous / 100) * ScreenDigit))
			 }
			 else if(operation == 12)
			 {
				 Label.text = String(pow(previous, ScreenDigit))
			 }
		 }
				 
		 else if(sender.tag == 13)
		 {
			 Label.text = ""
			 
		 }
	 }
	 

 }


