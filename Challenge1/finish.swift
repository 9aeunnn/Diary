import SwiftUI

struct finish: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack{
                    Image("배경")
                    Image("4월")
                        .offset(x: -130, y: -900)
                    
                    Image("메기")
                        .offset(x: -130, y: -760)
                    Image("1")
                        .offset(x: -90, y: -760)
                    
                    Image("복어")
                        .offset(x: 0, y: -800)
                    Image("2")
                        .offset(x: 20, y: -800)
                    
                    Image("해달")
                        .offset(x: 120, y: -770)
                    Image("3")
                        .offset(x: 120, y: -770)
                    
                    Image("물개")
                        .offset(x: -100, y: -580)
                    Image("4")
                        .offset(x: -110, y: -580)
                    
                    Image("뾰족")
                        .offset(x: 10, y: -670)
                    Image("5")
                        .offset(x: 5, y: -670)
                    
                    Image("수염")
                        .offset(x: 125, y: -620)
                    Image("6")
                        .offset(x: 125, y: -620)
                    
                    Image("파랑이")
                        .offset(x: 0, y: -560)
                    Image("7")
                        .offset(x: 0, y: -560)
                    
                    
                    Image("8")
                        .offset(x: 60, y: -460)
                    Image("9")
                        .offset(x: -70, y: -400)
                    Image("")
                        .offset(x: 40, y: -380)
                    Image("")
                        .offset(x: -120, y: -300)
                    Image("")
                        .offset(x: 0, y: -290)
                    Image("")
                        .offset(x: 125, y: -320)
                    Image("")
                        .offset(x: -60, y: -190)
                    Image("")
                        .offset(x: 70, y: -190)
                    Image("")
                        .offset(x: -130, y: -120)
                    Image("")
                        .offset(x: 10, y: -110)
                    Image("")
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
                    
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    finish()
}
