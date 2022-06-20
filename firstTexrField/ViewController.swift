
import UIKit

class ViewController: UIViewController {
    
    let myField = UITextField(frame:CGRect(x: 100, y: 400,width: 210,height:  35))
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
    let button = UIButton(frame: CGRect(x: 150, y:500, width:  100, height:  35))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        /* label */
        
        label.center = CGPoint(x: 185, y: 285)
        label.textAlignment = .center
        label.text = "Enter Your Name"
        
        self.view.addSubview(label)
        
        
        /* textfield */
        myField.backgroundColor = .white
        
        self.view.addSubview(myField)
        
        /* button */
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle("Hello", for: .normal)
        button.backgroundColor = .systemPink
        
        button.addTarget(self, action: #selector(self.pressed), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    @objc func pressed() {
        let name = myField.text!
        
        let greeting = "Hello, \(name)!";
        label.text = greeting;
        myField.resignFirstResponder();
        // myField.text = "Hello " + name + " ;) "
    }
    
}


