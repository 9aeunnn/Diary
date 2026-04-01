import SwiftUI
import SwiftData

struct Diary: View {
    
    @Environment(\.modelContext) private var context
    
//    var editingEntry: DiaryEntry? = nil
    
    @State private var names: [String] = ["기쁨", "분노", "슬픔", "C1", "C2"]
    @State private var nameToAdd = ""
    @State private var selectedNames: [String] = ["", "", ""]
    @State private var text = ""
    
    @FocusState private var focusedField: Field?
    
    enum Field {
        case keyword
        case diary
    }
    
    private var isFormValid: Bool {
        !text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    var body: some View {
        ZStack {
            // 배경 자체를 탭했을 때만 키보드 내리기
            Image("속지배경")
                .ignoresSafeArea()
                .onTapGesture {
                    focusedField = nil
                }
            
            VStack {
                HStack(spacing: 25) {
                    Menu {
                        ForEach(names, id: \.self) { name in
                            Button(name) { selectedNames[0] = name }
                        }
                    } label: {
                        HStack {
                            Text(selectedNames[0].isEmpty ? "키워드1" : selectedNames[0])
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.down")
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .foregroundColor(.primary)
                    }
                    
                    Menu {
                        ForEach(names, id: \.self) { name in
                            Button(name) { selectedNames[1] = name }
                        }
                    } label: {
                        HStack {
                            Text(selectedNames[1].isEmpty ? "키워드2" : selectedNames[1])
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.down")
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .foregroundColor(.primary)
                    }
                    
                    Menu {
                        ForEach(names, id: \.self) { name in
                            Button(name) { selectedNames[2] = name }
                        }
                    } label: {
                        HStack {
                            Text(selectedNames[2].isEmpty ? "키워드3" : selectedNames[2])
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.down")
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .foregroundColor(.primary)
                    }
                }
                
                // 키워드 추가
                HStack {
                    TextField("Add Keywords", text: $nameToAdd)
                        .autocorrectionDisabled()
                    //.textFieldStyle(.roundedBorder)
                        .focused($focusedField, equals: .keyword)
                    
                    Button {
                        let trimmed = nameToAdd.trimmingCharacters(in: .whitespacesAndNewlines)
                        if !trimmed.isEmpty {
                            names.append(trimmed)
                            nameToAdd = ""
                            focusedField = nil   // 추가 후 키보드 내리고 싶으면 유지
                        }
                    } label: {
                        Text("추가")
                    }
                }
                .padding()
                
                // 일기 입력창
                ZStack() {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white.opacity(0.5))
                        .frame(width: 380, height: 350)
                    
                    if text.isEmpty {
                        Text("Write a diary")
                            .foregroundColor(.gray)
                            .padding(.top, 18)
                            .padding(.leading, 18)
                    }
                    
                    //일기 입력창
                    TextEditor(text: $text)
                        .focused($focusedField, equals: .diary)
                        .padding(12)
                        .frame(width: 380, height: 350)
                        .scrollContentBackground(.hidden)
                        .background(Color.clear)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                }
                .padding(.bottom, 150)
                
            }
            
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
        }
        .overlay(alignment: .topTrailing) {
                저장버튼(isValid: isFormValid) {
                    print("저장 버튼 눌림")
//                    saveOrUpdate()
                }
//                .border(.black, width: 2)
                .padding(.top, 60)
                .padding(.trailing, 20)
                .zIndex(999)
            
        }
//        .onAppear {
//            if let entry = editingEntry {
//                selectedNames = entry.emotions
//                text = entry.content
//            }
//        }

    }
    
//    private func saveOrUpdate() {
//        let trimmed = text.trimmingCharacters(in: .whitespacesAndNewlines)
//        guard !trimmed.isEmpty else {
//            print("저장 실패: 내용이 비어 있음")
//            return
//        }
//
//        do {
//            if let entry = editingEntry {
//                entry.emotions = selectedNames
//                entry.content = trimmed
//                try context.save()
//                print("기존 일기 수정 완료")
//            } else {
//                let entry = DiaryEntry(emotions: selectedNames, content: trimmed)
//                context.insert(entry)
//                try context.save()
//                print("새 일기 저장 완료")
//            }
//        } catch {
//            print("SwiftData 저장 에러:", error)
//        }
//    }
}

#Preview {
    Diary()
}
