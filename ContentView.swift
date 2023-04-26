import SwiftUI


struct ContentView: View {
    @State var goToHome = false
    @State private var isShowingSheet = false
    var body: some View {
        
        ZStack{
//            if goToHome {
                TabBar()
                
                

//            }else{
//                OnBoardingScreen()
//            }
        }
        .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Success")), perform: { _ in
            withAnimation{self.goToHome = true}
        })
        
    }
}


struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("This is a modal view")
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}




struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}


