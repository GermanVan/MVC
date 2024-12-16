import UIKit

class ShopView: UIView {
    @IBOutlet weak var tableView: UITableView!
    
    func configure () {
        tableView.estimatedRowHeight = 50
        tableView.rowHeight = 100
    }

    func hideBorders (view: UIView) {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseInOut, animations: <#() -> Void#>, animations: ): {
            self.createViewHeighConstraint.constant = view.bounds.height * 0.6
            self.editButton.layer.cornerRadius = 20
            self.postView.layer?.shadowOpacity = 0
            self.postView.layer?.cornerRadius = 0
            view.layoutIfNeeded()
        }, completion: nil
                       }
                       }

