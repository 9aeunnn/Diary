import SwiftUI

struct Diary: View {
    @State private var names: [String] = ["기쁨", "분노", "슬픔", "C1", "C2"]
    @State private var nameToAdd = ""
    //    @State private var selectedName: String = "기쁨"
    @State private var selectedNames: [String] = ["", "", ""]
    @State private var text = ""
    
    var body: some View {
        ZStack {
            Image("속지배경")
                .ignoresSafeArea()
            VStack {
                HStack(spacing:25) {
                    // Menu로 만든 커스텀 버튼 Picker
                    Menu {
                        ForEach(names, id: \.self) { name in
                            Button(name) {
                                selectedNames[0] = name
                            }
                        }
                    } label: {
                        HStack {
                            Text(selectedNames[0])
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.down")
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .foregroundColor(.primary)
                    }
                    
                    Menu {
                        ForEach(names, id: \.self) { name in
                            Button(name) {
                                selectedNames[1] = name
                            }
                        }
                    } label: {
                        HStack {
                            Text(selectedNames[1])
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.down")
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .foregroundColor(.primary)
                    }
                    
                    Menu {
                        ForEach(names, id: \.self) { name in
                            Button(name) {
                                selectedNames[2] = name
                            }
                        }
                    } label: {
                        HStack {
                            Text(selectedNames[2])
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.down")
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .foregroundColor(.primary)
                    }
                    
                    
                }
                
                // 키워드 추가 HStack
                HStack {
                    TextField("Add Keywords", text: $nameToAdd)
                        .autocorrectionDisabled()
                    Button {
                        if !nameToAdd.isEmpty {
                            names.append(nameToAdd)
                            nameToAdd = ""
                        }
                    } label: {
                        Text("추가")
                    }
                }
                
                .padding()
                
                //일기
                TextField("Write a diary", text: $text, axis: .vertical)
                    .frame(width: 380, height: 350)
                    .background(.white)
                    .opacity(0.5)
                    .padding(.bottom, 150)
                    .cornerRadius(15)
                //글자
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .multilineTextAlignment(.center)
                
            }
            // 사진 넣기
            ZStack {
                Circle()
                    .frame(width: 250, height: 250)
                    .offset(x: -80, y: 300)
                    .foregroundColor(.white)
                    .opacity(0.3)
                    .shadow(color: .primary, radius: 10, x: 5, y: 5)
                PhotosSelector1(size: 250)
                    .offset(x: -80, y: 300)
                
                Circle()
                    .frame(width: 200, height: 200)
                    .offset(x: 80, y: 300)
                    .foregroundColor(.white)
                    .opacity(0.3)
                    .shadow(color: .primary, radius: 10, x: 5, y: 5)
                PhotosSelector2(size: 210)
                    .offset(x: 80, y: 300)
                
            }
            저장버튼()
                .offset(x: 140, y: -390)
                
                
        }
        
    }
}

#Preview {
    Diary()
}
