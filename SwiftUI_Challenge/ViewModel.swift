
import Foundation

final class ViewModel: ObservableObject {
    func getListInfo() -> ListInfo {
        let items = (0..<10).map { index in InfoItem(id:index) }
        return ListInfo(items: items)
    }
}

struct ListInfo {
    let date = Date.now
    let items: [InfoItem]
}

struct InfoItem: Identifiable {
    let id: Int
    let title: String = randomString(length: 5)
    let number: Int = Int.random(in: 10..<100)
}

private func randomString(length: Int) -> String {
  let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  return String((0..<length).map{ _ in letters.randomElement()! })
}
