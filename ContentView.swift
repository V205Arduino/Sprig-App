import SwiftUI//The stuff...


var buttonDistance = 10; //? WIP
var buttonColor = Color.secondary
var buttonTextColor = Color.primary
var buttonSize = CGFloat(100)
var buttonTextSize = CGFloat(buttonSize * 3/4)


// Test rotation stuff
// call our action
struct DeviceRotationViewModifier: ViewModifier {
    let action: (UIDeviceOrientation) -> Void

    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
                action(UIDevice.current.orientation)
            }
    }
}

// A View wrapper to make the modifier easier to use
extension View {
    func onRotate(perform action: @escaping (UIDeviceOrientation) -> Void) -> some View {
        self.modifier(DeviceRotationViewModifier(action: action))
    }
}

       
struct ContentView: View {
    @State private var orientation = UIDeviceOrientation.unknown

    var body: some View {
        Group {
                   if orientation.isPortrait {
                       Text("Portrait")
                   } else if orientation.isLandscape {
                       Text("Landscape")
                   } else if orientation.isFlat {
                       Text("Flat??")
                   } else {
                       Text("Unknown Change Device rotation!!!!")
                   }
               }
               .onRotate { newOrientation in
                   orientation = newOrientation
               }
        
        VStack(
            alignment: .center,
            spacing: 10){
            
            Text("Test")
            HStack(
                alignment: .center,
                spacing: 10)
            {
                Button(action: {
                    print("A Action")
                }) {
                    Text("A")
                        .frame(width: buttonSize, height: buttonSize)
                        .font(.system(size: buttonTextSize, weight: .heavy, design: .rounded))
                    
                        .foregroundColor(buttonTextColor)
                        .background(buttonColor)
                        .clipShape(Circle())
                    
                    
                }
                
                VStack(
                    alignment: .center,
                    spacing: 80
                ) {
                    // #1
                    Button(action: {
                        print("W Action")
                    }) {
                        Text("W")
                            .frame(width: buttonSize, height: buttonSize)
                            .font(.system(size: buttonTextSize, weight: .heavy, design: .rounded))
                            .foregroundColor(buttonTextColor)
                            .background(buttonColor)
                            .clipShape(Circle())
                    }
                    
                    
                    Button(action: {
                        print("S Action")
                    }) {
                        Text("S")
                            .frame(width: buttonSize, height: buttonSize)
                            .font(.system(size: buttonTextSize, weight: .heavy, design: .rounded))
                        
                            .foregroundColor(buttonTextColor)
                            .background(buttonColor)
                            .clipShape(Circle())
                    }
                }
                
                
                Button(action: {
                    print("D Action")
                }) {
                    Text("D")
                        .frame(width: buttonSize, height: buttonSize)
                        .font(.system(size: buttonTextSize, weight: .heavy, design: .rounded))
                    
                        .foregroundColor(buttonTextColor)
                        .background(buttonColor)
                        .clipShape(Circle())
                    
                    
                }
                
                
                Button(action: {
                    print("J Action")
                }) {
                    Text("J")
                    
                        .frame(width: buttonSize, height: buttonSize)
                        .font(.system(size: buttonTextSize, weight: .heavy, design: .rounded))
                    
                        .foregroundColor(buttonTextColor)
                        .background(buttonColor)
                        .clipShape(Circle())
                    
                    
                }
                
                VStack(
                    alignment: .center,
                    spacing: 80
                ) {
                    
                    Button(action: {
                        print("I Action")
                    }) {
                        Text("I")
                            .frame(width: buttonSize, height: buttonSize)
                            .font(.system(size: buttonTextSize, weight: .heavy, design: .rounded))
                        
                            .foregroundColor(buttonTextColor)
                            .background(buttonColor)
                            .clipShape(Circle())
                    }
                    
                    
                    Button(action: {
                        print("K Action")
                    }) {
                        Text("K")
                        
                            .frame(width: buttonSize, height: buttonSize)
                            .font(.system(size: buttonTextSize, weight: .heavy, design: .rounded))
                        
                            .foregroundColor(buttonTextColor)
                            .background(buttonColor)
                            .clipShape(Circle())
                    }
                }
                
                Button(action: {
                    print("L Action")
                }) {
                    Text("L")
                    
                        .frame(width: buttonSize, height: buttonSize)
                        .font(.system(size: buttonTextSize, weight: .heavy, design: .rounded))
                    
                        .foregroundColor(buttonTextColor)
                        .background(buttonColor)
                        .clipShape(Circle())
                    
                    
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
