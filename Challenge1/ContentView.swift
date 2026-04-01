//
//  ContentView.swift
//  Challenge1
//
//  Created by 김가은 on 3/24/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack{
                    Image("배경")
                    Image("4월")
                        .offset(x: -130, y: -900)
                    
                    
                        
                    NavigationLink {
                        Diary()
                    }label: {
                        Image("1")
                    }
                        .offset(x: -100, y: -780)

                    NavigationLink {
                        Diary()
                    }label: {
                        Image("2")
                    }
                        .offset(x: 20, y: -800)
                    
                    NavigationLink {
                        Diary()
                    }label: {
                        Image("3")
                    }
                        .offset(x: 120, y: -770)
                    
                    NavigationLink {
                        Diary()
                    }label: {
                        Image("4")
                    }.offset(x: -110, y: -650)
                    
                    NavigationLink {
                        Diary()
                    }label: {
                        Image("5")
                    }
                        .offset(x: 10, y: -670)
                    
                    NavigationLink {
                        finish()
                    }label: {
                        Image("6")
                    }
                        .offset(x: 125, y: -620)
                    
                    숫7버튼()
                        .offset(x: 0, y: -540)
                    숫8버튼()
                        .offset(x: -120, y: -500)
                    숫9버튼()
                        .offset(x: 60, y: -460)
                    숫10버튼()
                        .offset(x: -70, y: -400)
                    숫11버튼()
                        .offset(x: 40, y: -380)
                    숫12버튼()
                        .offset(x: -120, y: -300)
                    숫13버튼()
                        .offset(x: 0, y: -290)
                    숫14버튼()
                        .offset(x: 125, y: -320)
                    숫15버튼()
                        .offset(x: -60, y: -190)
                    숫16버튼()
                        .offset(x: 70, y: -190)
                    숫17버튼()
                        .offset(x: -130, y: -120)
                    숫18버튼()
                        .offset(x: 10, y: -110)
                    숫19버튼()
                        .offset(x: 130, y: -100)
                    //                    숫20버튼()
                    //                    숫21버튼()
                    //                    숫22버튼()
                    //                    숫23버튼()
                    //                    숫24버튼()
                    //                    숫25버튼()
                    //                    숫26버튼()
                    //                    숫27버튼()
                    //                    숫28버튼()
                    //                    숫29버튼()
                    //                    숫30버튼()
                    //                    숫31버튼()
                    
                    VStack {
                        복어버튼()
                        //                    }
                    }
                }
            }
            .ignoresSafeArea()

        }
    }
}

#Preview {
    ContentView()
}
