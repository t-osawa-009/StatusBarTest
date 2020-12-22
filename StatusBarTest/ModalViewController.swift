import UIKit

final class ModalViewController: UIViewController {
    class func make() -> ModalViewController {
        return UIStoryboard(name: String(describing: ModalViewController.self), bundle: nil).instantiateInitialViewController() as! ModalViewController
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let height = view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        let height2 = view.safeAreaInsets.top
        statusbarHeightLabel.text = "statusBar height: " + height.description
        safeAreaTopLabel.text = "View safeAreaTop: " + height2.description
    }
    @IBOutlet private weak var statusbarHeightLabel: UILabel!
    @IBOutlet private weak var safeAreaTopLabel: UILabel!
    @IBAction private func closeButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
