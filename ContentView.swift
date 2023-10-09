import SwiftUI//The stuff...


var buttonDistance = 10; //? WIP
var buttonColor = Color.secondary
var buttonTextColor = Color.primary

struct ContentView: View {
    
    var body: some View {
        HStack(
            alignment: .center,
            spacing: 10)
        {
            Button(action: {
                print("A Action")
            }) {
                Text("A")
                    .frame(width: 100, height: 100)
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
                        .frame(width: 100, height: 100)
                        .foregroundColor(buttonTextColor)
                        .background(buttonColor)
                        .clipShape(Circle())
                }
                
                
                Button(action: {
                    print("S Action")
                }) {
                    Text("S")
                        .frame(width: 100, height: 100)
                        .foregroundColor(buttonTextColor)
                        .background(buttonColor)
                        .clipShape(Circle())
                }
            }
            
           
            Button(action: {
                print("D Action")
            }) {
                Text("D")
                    .frame(width: 100, height: 100)
                    .foregroundColor(buttonTextColor)
                    .background(buttonColor)
                    .clipShape(Circle())
                
                
            }
            
               
            Button(action: {
                        print("J Action")
                    }) {
                        Text("J")
                            .frame(width: 100, height: 100)
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
                        .frame(width: 100, height: 100)
                        .foregroundColor(buttonTextColor)
                        .background(buttonColor)
                        .clipShape(Circle())
                }
                
                
                Button(action: {
                    print("K Action")
                }) {
                    Text("K")
                        .frame(width: 100, height: 100)
                        .foregroundColor(buttonTextColor)
                        .background(buttonColor)
                        .clipShape(Circle())
                }
                }
            
            Button(action: {
                print("L Action")
            }) {
                Text("L")
                    .frame(width: 100, height: 100)
                    .foregroundColor(buttonTextColor)
                    .background(buttonColor)
                    .clipShape(Circle())
                
                
            }
        } 
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
