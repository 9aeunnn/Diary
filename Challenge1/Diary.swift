import SwiftUI
import SwiftData

struct Diary: View {
    let selectedDate: Date
    let existingDiary: DiaryItem?
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    
    @State private var tag1: String = ""
    @State private var tag2: String = ""
    @State private var tag3: String = ""
    @State private var tags: [String] = ["기쁨", "분노", "슬픔", "C1", "C2"]
    @State private var tagToAdd: String = ""
    @State private var content: String = ""
    @State private var image1Data: Data?
    @State private var image2Data: Data?
    
    @FocusState private var focusedField: Field?
    
    enum Field {
        case keyword
        case diary
    }
    
    private var isFormValid: Bool {
        !content.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    var body: some View {
        ZStack {
            Image("찐일기배경")
                .ignoresSafeArea()
                .onTapGesture {
                    focusedField = nil
                }
            
            // 키워드
            VStack {
                HStack(spacing: 25) {
                    Menu {
                        ForEach(tags, id: \.self) { tag in
                            Button(tag) { tag1 = tag }
                        }
                    } label: {
                        keywordLabel(text: tag1.isEmpty ? "키워드1" : tag1)
                    }
                    
                    Menu {
                        ForEach(tags, id: \.self) { tag in
                            Button(tag) { tag2 = tag }
                        }
                    } label: {
                        keywordLabel(text: tag2.isEmpty ? "키워드2" : tag2)
                    }
                    
                    Menu {
                        ForEach(tags, id: \.self) { tag in
                            Button(tag) { tag3 = tag }
                        }
                    } label: {
                        keywordLabel(text: tag3.isEmpty ? "키워드3" : tag3)
                    }
                }
                
                // Add Keywords
                HStack {
                    ZStack{
                        // Add Keywords 배경
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white.opacity(0.4))
                            .frame(width: 380, height: 40)
                            .offset(x: 0, y: 0)
                        
                        HStack {
                            TextField("Add Keywords", text: $tagToAdd)
                                .autocorrectionDisabled()
                                .focused($focusedField, equals: .keyword)
                                .offset(x: 20, y: 0)
                            
                            Button {
                                let trimmed = tagToAdd.trimmingCharacters(in: .whitespacesAndNewlines)
                                if !trimmed.isEmpty && !tags.contains(trimmed) {
                                    tags.append(trimmed)
                                    tagToAdd = ""
                                    focusedField = nil
                                }
                            } label: {
                                Text("추가")
                                    
                            }
                            .padding(.horizontal, 10)
                        }
                    }
                    .padding()

                }
                
                // 일기 작성
                ZStack(alignment: .topLeading) {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white.opacity(0.5))
                        .frame(width: 380, height: 350)
                    
                    if content.isEmpty {
                        Text("Write a diary")
                            .foregroundColor(.gray)
                            .padding(.top, 18)
                            .padding(.leading, 18)
                            .allowsHitTesting(false)
                    }
                    
                    TextEditor(text: $content)
                        .focused($focusedField, equals: .diary)
                        .padding(12)
                        .frame(width: 380, height: 350)
                        .scrollContentBackground(.hidden)
                        .background(Color.clear)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                }
                .padding(.bottom, 150)
            }
            
            // 사진 넣기
            // 사진 선택 → imageData로 Diary에 전달 → saveDiary에서 저장
            ZStack {
                Circle()
                    .frame(width: 250, height: 250)
                    .offset(x: -80, y: 300)
                    .foregroundColor(.white)
                    .opacity(0.3)
                    .shadow(color: .primary, radius: 10, x: 5, y: 5)
                PhotosSelector1(size: 250, imageData: $image1Data)
                    .offset(x: -80, y: 300)
                
                Circle()
                    .frame(width: 200, height: 200)
                    .offset(x: 80, y: 300)
                    .foregroundColor(.white)
                    .opacity(0.3)
                    .shadow(color: .primary, radius: 10, x: 5, y: 5)
                PhotosSelector2(size: 210, imageData: $image2Data)
                    .offset(x: 80, y: 300)
            }
        }
        
        //저장 버튼
        
        .overlay(alignment: .topTrailing) {
//            Button("저장"){
            저장버튼(isValid: isFormValid) {
                saveDiary()
            }
            .padding(.top, 60)
            .padding(.trailing, 20)
            .zIndex(999)
        }
        .onAppear {
            loadExistingDiary()
        }
    }
    
    private func loadExistingDiary() {
        guard let existingDiary else { return }

        tag1 = existingDiary.tag1
        tag2 = existingDiary.tag2
        tag3 = existingDiary.tag3
        tags = existingDiary.tags
        tagToAdd = existingDiary.tagToAdd
        content = existingDiary.content
        image1Data = existingDiary.image1Data
        image2Data = existingDiary.image2Data
    }
    
    private func saveDiary() {
        do {
            if let existingDiary {
                existingDiary.tag1 = tag1
                existingDiary.tag2 = tag2
                existingDiary.tag3 = tag3
                existingDiary.tags = tags
                existingDiary.tagToAdd = tagToAdd
                existingDiary.content = content
                existingDiary.date = selectedDate
                existingDiary.image1Data = image1Data
                existingDiary.image2Data = image2Data
            } else {
                let newDiary = DiaryItem(
                    tag1: tag1,
                    tag2: tag2,
                    tag3: tag3,
                    tags: tags,
                    tagToAdd: tagToAdd,
                    date: selectedDate,
                    content: content,
                    image1Data: image1Data,
                    image2Data: image2Data
                )
                modelContext.insert(newDiary)
            }

            try modelContext.save()
            print("저장 성공:", selectedDate, content)
            dismiss()
        } catch {
            print("저장 실패:", error.localizedDescription)
        }
    }
    
    @ViewBuilder
    private func keywordLabel(text: String) -> some View {
        HStack {
            Text(text)
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

#Preview {
    Diary(selectedDate: Date(), existingDiary: nil)
}
