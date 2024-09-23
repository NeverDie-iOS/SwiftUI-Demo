import SwiftUI

struct ContentView: View {
    @State private var isViewVisible = false

    var body: some View {
        ZStack() {
            Color.white.edgesIgnoringSafeArea(.all)

            VStack {
                Button(action: {
                    withAnimation {
                        isViewVisible.toggle()
                    }
                }) {
                    Text("Appear")
                        .font(.headline)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
            }

            if isViewVisible {
                Color.black.opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        withAnimation {
                            isViewVisible = false
                        }
                    }

                CustomView()
                    .scaleEffect(isViewVisible ? 1 : 0.5)
                    .opacity(isViewVisible ? 1 : 0)
                    .animation(.easeInOut(duration: 1.0), value: isViewVisible)
                    .transition(AnyTransition.opacity.combined(with: .scale).animation(.easeInOut(duration: 0.5)))
                    .zIndex(1)
            }
        }
    }
}

struct CustomView: View {
    @State private var isVisible = false

    var body: some View {
        Text("✨ NeverDie-iOS ✨")
            .font(.largeTitle)
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .scaleEffect(isVisible ? 1 : 0.5)
            .opacity(isVisible ? 1 : 0)
            .onAppear {
                withAnimation(.easeInOut(duration: 0.5)) {
                    isVisible = true
                }
            }
            .onDisappear {
                isVisible = false
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
