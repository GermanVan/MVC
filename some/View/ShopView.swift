import UIKit

class ShopView: UIView {
    @IBOutlet weak var tableView: UITableView!
    
    func configure () {
        tableView.estimatedRowHeight = 50
        tableView.rowHeight = 100
    }
    
    func hideBorders (view: UIView) {
        /// тут видно, что ты не перепечатал, а скопировал
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseInOut, animations: {
            /// Вероятно не докопирована функция, так как ее нет в нативном коде
//            self.createViewHeighConstraint.constant = view.bounds.height * 0.6
            /// EditButton нет выше, я про @IBOutlet
//            self.editButton.layer.cornerRadius = 20
            ///  postView нет выше, я про @IBOutlet
//            self.postView.layer?.shadowOpacity = 0
//            self.postView.layer?.cornerRadius = 0
            view.layoutIfNeeded()
        }, completion: nil)
    }
}

