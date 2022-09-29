//
//  AnimationOnView.swift
//  AddingTextOnView
//
//  Created by Govind on 28/09/22.
//

import SwiftUI


// Here animation is working awsome with the is animated var  all the things depending on the isAnimated will get animated and we no have to very about other things and is managment it will be managed automaticaly
// Point to be noted all the animation we are having is no the button ( Animate )  tapped if we updating value of isAnimated var from anywhere else  it will not animate like we are updating it from overlayed button ( without animate ).


// We can add delay as well like Animation.name.delay(2.0)

// Duretion as well

// Speed of it as well

/*
 struct AnimationOnView: View {
 @State var isAnimated: Bool = false
 var body: some View {
 VStack {
 Button("Animate") {
 //withAnimation(.default) {
 // withAnimation(Animation.default.delay(2.0)) {
 //  withAnimation(Animation.easeIn(duration: 2.0)) {
 // withAnimation(Animation.default.speed(0.3)) {
 withAnimation(
 Animation
 .default
 //.repeatCount(2,autoreverses: false)
 .repeatCount(2, autoreverses: true)
 ) {
 
 isAnimated.toggle()
 }
 }
 .padding()
 .accentColor(.white)
 .background(.blue)
 .cornerRadius(14)
 
 Spacer()
 RoundedRectangle(cornerRadius: isAnimated ? 50 : 25 )
 .fill(isAnimated ? .green : .red)
 .overlay(content: {
 Button("Without Animate") {
 isAnimated.toggle()
 }
 })
 .frame(width: isAnimated ? 300 : 100,
 height: isAnimated ? 300 : 100)
 .offset(y: isAnimated ? 0 : 100)
 .rotationEffect(Angle(degrees: isAnimated ? 0 : 360))
 .shadow(radius: 5)
 Spacer()
 }
 }
 }
 */


// this was the one way we are having one more way where we are just doing it on the view only which we want to animate

// Now when ever over view will update it will get animated and it will do same animation for both buttons ( Animate & withoutAnimate) in our case, because now we have added the animation the view instead of a state of isAnimate var

// Point to be not that we are using a value with it , which triggers the animation when the value is changed



struct AnimationOnView: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("Animate") {
                isAnimated.toggle()
            }   .padding()
                .accentColor(.white)
                .background(.blue)
                .cornerRadius(14)
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25 )
                .fill(isAnimated ? .green : .red)
                .overlay(content: {
                    Button("Without Animate") {
                        isAnimated.toggle()
                    }
                })
                .frame(width: isAnimated ? 300 : 100,
                       height: isAnimated ? 300 : 100)
                .offset(y: isAnimated ? 0 : 100)
                .rotationEffect(Angle(degrees: isAnimated ? 0 : 360))
                //.scaleEffect(isAnimated ? 2 : 1)
                .animation(.default, value: isAnimated)
            Spacer()
        }
    }
}
struct AnimationOnView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationOnView()
    }
}
