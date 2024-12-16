import UIKit

class ShopController: UIViewController {
    private var shopModel = ProductGroup.vegetables()
    private var shopView: ShopView! {
        guard isViewLoaded else { return nil }
        return (view as! ShopView)
    }
    override func viewDidLoad () {
        super.viewDidLoad()
        configure ()
    }
}

private extension ShopController {
    func configure () {
        shopView.tableView.delegate = self
        shopView.tableView.dataSource = self
    }
}

extension ShopController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shopModel.products.count
    }
    
    /// Криво скопировал опять, ошибки скобок
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell")
        cell?.textLabel?.text = shopModel.products[indexPath.row].name
        return cell!
    }
}
