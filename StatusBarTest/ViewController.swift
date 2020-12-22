import UIKit

class ViewController: UIViewController {
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let height = view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        let height2 = navigationController?.view.safeAreaInsets.top ?? 0.0
        statusbarHeightLabel.text = "statusBar height: " + height.description
        safeAreaTopLabel.text = "navigationController safeAreaTop: " + height2.description
    }
    
    @IBOutlet private weak var statusbarHeightLabel: UILabel!
    @IBOutlet private weak var safeAreaTopLabel: UILabel!
    @IBAction func modalButtonTapped(_ sender: Any) {
        let vc = ModalViewController.make()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}

