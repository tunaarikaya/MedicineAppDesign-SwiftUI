import SwiftUI

struct ContentView: View {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "yaziRenk2")
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor(named: "yaziRenk1")!,
            .font: UIFont(name: "DMSerifText-Regular", size: 24)!
        ]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
    }
    
    var body: some View {
        GeometryReader { geometry in
            let ekranGenislik = geometry.size.width
            
            NavigationStack {
                VStack(spacing: 0) {
                    Text("app_title")
                        .foregroundStyle(Color("yaziRenk1"))
                        .bold()
                        .font(.system(size: 25))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top, 20)
                        .background(Color("yaziRenk2"))
                        .foregroundColor(.white)
                        
                    Rectangle()
                        .fill(Color("yaziRenk2"))
                        .frame(height: 2)
                    
                    ScrollView {
                        VStack(spacing: 20) {
                            Image("aspirin")
                                .resizable()
                                .frame(width: ekranGenislik * 0.9, height: ekranGenislik * 0.5)
                            
                            HStack {
                                Chip(icerik: "Morning 🌅 ")
                                Chip(icerik: "Noon 🌞 ")
                                Chip(icerik: "Night 🌙")
                            }
                            .padding(.horizontal)

                            VStack(spacing: 15) {
                                Text("last_used")
                                    .foregroundStyle(Color("yaziRenk1"))
                                    .bold()
                                    .font(.system(size: 25))
                                
                                Text("note")
                                    .foregroundStyle(Color("yaziRenk1"))
                                    .font(.system(size: 15))
                                
                                Text("note_detail")
                                    .foregroundStyle(Color("yaziRenk1"))
                                    .font(.system(size: 18))
                                    .multilineTextAlignment(.center)
                                    .padding(.vertical, 25)
                            }
                            
                            VStack {
                                Chip(icerik: "Set an alarm for the next dose ⏱️")
                                    .bold()
                                    .padding(30)
                            }
                        }
                        .padding(.bottom)
                    }
                }
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    ContentView()
}
