import SwiftUI


struct ContentView: View {
    @State var goToHome = false
    var body: some View {
        
        ZStack{
            if goToHome {
                TabBar()
            }else{
                OnBoardingScreen()
            }
        }
        .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Success")), perform: { _ in
            withAnimation{self.goToHome = true}
        })
        
    }
}




struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}


