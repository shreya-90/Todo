//
//  NoItemsView.swift
//  TodoList
//
//  Created by Shreya Pallan on 26/09/24.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
        
        //Scrollview has maxHeight of infinity an dpushes content all the way to the top so we choose ScrollView
        ScrollView {
            
            VStack(spacing: 10) {
                Text("No items for display")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you productive? Add tasks to the list to help you keep track of yout day")
                    .padding(.bottom, 20)
                NavigationLink(destination: AddView()) {
                    Text("Add something 🥳")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secondaryAccentColor : Color.accentColor)
                        .cornerRadius(10)
                }
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(color: animate ? secondaryAccentColor.opacity(0.7) : Color.accentColor.opacity(0.7),
                        radius: 10,
                        x: 0,
                        y: animate ? 50 : 30)
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(x: 0, y: animate ? -7 : 0)
   
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            
    }
    
    func addAnimation() {
        
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation.easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
    
}

#Preview {
    
    NavigationView {
        NoItemsView()
            .navigationTitle("Title")
    }
   
}
