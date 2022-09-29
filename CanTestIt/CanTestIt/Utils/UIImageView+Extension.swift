import UIKit
import Kingfisher

extension UIImageView {
    func handleImage(with name: String) {
        let url = URL(string: AppVariables.baseURL + "images/" + name)
        DispatchQueue.main.async { [weak self] in
            self?.kf.indicatorType = .activity
            self?.kf.setImage(with: url, placeholder: UIImage.emptyImage)
        }
    }
}