
import SwiftUI

struct ContentView: View {
    private let viewModel: ViewModel = ViewModel()

    var body: some View {
        VStack {
            Button(action: {
                //TODO: Open a sheet and show the info provided by the viewModel
            }, label: {
                Text("Open sheet")
            })
            Spacer().frame(height: 20)
            Button(action: {
                //TODO: Navigate to a new screen and show the info provided by the viewModel
            }, label: {
                Text("Navigate to view")
            })
        }
    }
}
