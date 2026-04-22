import SwiftUI
import SwiftData
import Lottie

struct ContentView: View {
    @Query private var diary: [DiaryItem]
    
    // 날짜 만들기
    func makeDate(day: Int) -> Date {
        Calendar.current.date(from: DateComponents(year: 2026, month: 4, day: day)) ?? Date()
    }
    
    // 일기 갖고 있는지 확인
    //        item.date = 2026-04-01 10:00
    //        date = 2026-04-01 18:00
    //        결과: true (같은 날)
    func hasDiary(on date: Date) -> Bool {
        diary.contains { item in
            Calendar.current.isDate(item.date, inSameDayAs: date)
        }
    }
    
    // 해당 날짜의 일기 하나 가져오기
    //        contains    Bool (있냐 없냐)
    //        first    실제 데이터 반환
    func diaryForDate(_ date: Date) -> DiaryItem? {
        diary.first { item in
            Calendar.current.isDate(item.date, inSameDayAs: date)
        }
    }
    
    var body: some View {
        ZStack{
            NavigationStack {
                ScrollView {
                    ZStack {
                        Image("배경")
                        
                        Image("4월")
                            .offset(x: -130, y: -900)
                        
                        // 1일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 1),
                                existingDiary: diaryForDate(makeDate(day: 1))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 1)) {
                                    Image("메기")
                                        .allowsHitTesting(false)
                                }
                                
                                Image("1")
                            }
                        }
                        .offset(x: -130, y: -760)
                        
                        // 2일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 2),
                                existingDiary: diaryForDate(makeDate(day: 2))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 2)) {
                                    Image("복어")
                                        .allowsHitTesting(false)
                                }
                                
                                Image("2")
                            }
                        }
                        .offset(x: 0, y: -800)
                        
                        // 3일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 3),
                                existingDiary: diaryForDate(makeDate(day: 3))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 3)) {
                                    Image("해달")
                                        .allowsHitTesting(false)
                                }
                                
                                Image("3")
                            }
                        }
                        .offset(x: 120, y: -770)
                        
                        // 4일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 4),
                                existingDiary: diaryForDate(makeDate(day: 4))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 4)) {
                                    Image("물개")
                                        .allowsHitTesting(false)
                                }
                                Image("4")
                            }
                        }
                        .offset(x: -100, y: -580)
                        
                        // 5일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 5),
                                existingDiary: diaryForDate(makeDate(day: 5))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 5)) {
                                    Image("뾰족")
                                        .allowsHitTesting(false)
                                }
                                Image("5")
                            }
                        }
                        .offset(x: 10, y: -670)
                        
                        // 6일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 6),
                                existingDiary: diaryForDate(makeDate(day: 6))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 6)) {
                                    Image("수염")
                                        .allowsHitTesting(false)
                                }
                                Image("6")
                            }
                        }
                        .offset(x: 125, y: -620)
                        
                        // 7일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 7),
                                existingDiary: diaryForDate(makeDate(day: 7))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 7)) {
                                    Image("파랑이")
                                        .allowsHitTesting(false)
                                }
                                Image("7")
                            }
                        }
                        .offset(x: 0, y: -560)
                        
                        // 8일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 8),
                                existingDiary: diaryForDate(makeDate(day: 8))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 8)) {
                                    Image("멸치")
                                        .allowsHitTesting(false)
                                }
                                Image("8")
                            }
                        }
                        .offset(x: 110, y: -480)
                        
                        // 9일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 9),
                                existingDiary: diaryForDate(makeDate(day: 9))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 9)) {
                                    Image("새우")
                                        .allowsHitTesting(false)
                                }
                                Image("9")
                            }
                        }
                        .offset(x: -50, y: -470)
                        
                        // 10일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 10),
                                existingDiary: diaryForDate(makeDate(day: 10))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 10)) {
                                    Image("빨붕어")
                                        .allowsHitTesting(false)
                                }
                                Image("10")
                            }
                        }
                        .offset(x: -120, y: -380)
                        
                        // 11일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 11),
                                existingDiary: diaryForDate(makeDate(day: 11))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 11)) {
                                    Image("멸치2")
                                        .allowsHitTesting(false)
                                }
                                Image("11")
                            }
                        }
                        .offset(x: 40, y: -380)
                        
                        // 12일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 12),
                                existingDiary: diaryForDate(makeDate(day: 12))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 12)) {
                                    Image("거북이")
                                        .allowsHitTesting(false)
                                }
                                Image("12")
                            }
                        }
                        .offset(x: 140, y: -340)
                        
                        // 13일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 13),
                                existingDiary: diaryForDate(makeDate(day: 13))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 13)) {
                                    Image("넙적고래")
                                        .allowsHitTesting(false)
                                }
                                Image("13")
                            }
                        }
                        .offset(x: -80, y: -240)
                        
                        // 14일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 14),
                                existingDiary: diaryForDate(makeDate(day: 14))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 14)) {
                                    Image("니모")
                                        .allowsHitTesting(false)
                                }
                                Image("14")
                            }
                        }
                        .offset(x: 90, y: -260)
                        
                        // 15일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 15),
                                existingDiary: diaryForDate(makeDate(day: 15))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 15)) {
                                    Image("초록")
                                        .allowsHitTesting(false)
                                }
                                Image("15")
                            }
                        }
                        .offset(x: 100, y: -150)
                        
                        // 16일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 16),
                                existingDiary: diaryForDate(makeDate(day: 16))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 16)) {
                                    Image("오징어")
                                        .allowsHitTesting(false)
                                }
                                Image("16")
                            }
                        }
                        .offset(x: -110, y: -60)
                        
                        // 17일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 17),
                                existingDiary: diaryForDate(makeDate(day: 17))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 17)) {
                                    Image("헬멧")
                                        .allowsHitTesting(false)
                                }
                                Image("17")
                            }
                        }
                        .offset(x: 30, y: -60)
                        
                        // 18일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 18),
                                existingDiary: diaryForDate(makeDate(day: 18))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 18)) {
                                    Image("상어")
                                        .allowsHitTesting(false)
                                }
                                Image("18")
                            }
                        }
                        .offset(x: -130, y: 60)
                        
                        // 19일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 19),
                                existingDiary: diaryForDate(makeDate(day: 19))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 19)) {
                                    Image("줄무늬")
                                        .allowsHitTesting(false)
                                }
                                Image("19")
                            }
                        }
                        .offset(x: 70, y: 20)
                        
                        // 20일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 20),
                                existingDiary: diaryForDate(makeDate(day: 20))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 20)) {
                                    Image("멸치2")
                                        .allowsHitTesting(false)
                                }
                                Image("20")
                            }
                        }
                        .offset(x: -120, y: 190)
                        
                        // 21일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 21),
                                existingDiary: diaryForDate(makeDate(day: 21))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 21)) {
                                    Image("파랑이")
                                        .allowsHitTesting(false)
                                }
                                Image("21")
                            }
                        }
                        .offset(x: 0, y: 220)
                        
                        
                        // 22일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 22),
                                existingDiary: diaryForDate(makeDate(day: 22))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 22)) {
                                    Image("복어")
                                        .allowsHitTesting(false)
                                }
                                Image("22")
                            }
                        }
                        .offset(x: 120, y: 170)
                        
                        
                        // 23일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 23),
                                existingDiary: diaryForDate(makeDate(day: 23))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 23)) {
                                    Image("해달")
                                        .allowsHitTesting(false)
                                }
                                Image("23")
                            }
                        }
                        .offset(x: -110, y: 340)
                        
                        // 24일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 24),
                                existingDiary: diaryForDate(makeDate(day: 24))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 24)) {
                                    Image("해파리")
                                        .allowsHitTesting(false)
                                }
                                Image("24")
                            }
                        }
                        .offset(x: 30, y: 350)
                        
                        // 25일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 25),
                                existingDiary: diaryForDate(makeDate(day: 25))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 25)) {
                                    Image("불가사리")
                                        .allowsHitTesting(false)
                                }
                                Image("25")
                            }
                        }
                        .offset(x: 130, y: 280)
                        
                        
                        // 26일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 26),
                                existingDiary: diaryForDate(makeDate(day: 26))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 26)) {
                                    Image("불가사리")
                                        .allowsHitTesting(false)
                                }
                                Image("26")
                            }
                        }
                        .offset(x: -130, y: 480)
                        
                        // 27일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 27),
                                existingDiary: diaryForDate(makeDate(day: 27))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 27)) {
                                    Image("초록색지느러미")
                                        .allowsHitTesting(false)
                                }
                                Image("27")
                            }
                        }
                        .offset(x: 10, y: 470)
                        
                        
                        // 28일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 28),
                                existingDiary: diaryForDate(makeDate(day: 28))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 28)) {
                                    Image("아구")
                                        .allowsHitTesting(false)
                                }
                                Image("28")
                            }
                        }
                        .offset(x: 110, y: 550)
                        
                        
                        // 29일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 29),
                                existingDiary: diaryForDate(makeDate(day: 29))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 29)) {
                                    Image("아귀")
                                        .allowsHitTesting(false)
                                }
                                Image("29")
                            }
                        }
                        .offset(x: -110, y: 620)
                        
                        // 30일
                        NavigationLink {
                            Diary(
                                selectedDate: makeDate(day: 30),
                                existingDiary: diaryForDate(makeDate(day: 30))
                            )
                        } label: {
                            ZStack {
                                if hasDiary(on: makeDate(day: 30)) {
                                    Image("미키")
                                        .allowsHitTesting(false)
                                }
                                Image("30")
                            }
                        }
                        .offset(x: 110, y: 700)
                        
                        
                    }
                }
                .ignoresSafeArea()
            }
            
            GeometryReader { geo in
                LottieView(animation: .named("GanniBada"))
                    .playing(loopMode: .playOnce)
                    .frame(width: geo.size.width+10,
                           height: geo.size.height+150)
                    .allowsHitTesting(false) // Lottie 뷰가 터치를 가로채지 않게
                    .ignoresSafeArea()
                    .offset(y: -60)
            }
        }
        .ignoresSafeArea()
    }
}


#Preview {
    ContentView()
}
