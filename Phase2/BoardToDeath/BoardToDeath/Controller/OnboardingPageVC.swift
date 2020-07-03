

import UIKit

class OnboardingPageVC: UIViewController {

    var userDefaults = UserDefaults.standard
        
    @IBAction func doneBtnWasPressed(_ sender: Any) {
//        userDefaults.onboardingCompleted = true
//        dismiss(animated: true)
      
      let alert = UIAlertController(title: "You did it", message: "Congrats", preferredStyle: .alert)
      let alertAction = UIAlertAction(title: "Action", style: .default, handler: nil)
      
      alert.addAction(alertAction)
      
      present(alert, animated: true, completion: nil)
      
    }
    
}
