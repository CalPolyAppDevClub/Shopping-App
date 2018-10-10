
import UIKit

class ViewController: UIViewController {

    var wrapper = APIWrapper()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    
    func test() {
        
        wrapper.getItems(numItems: 40, callback: {(items) in
            
        })
        
    }
    
    
    

}

