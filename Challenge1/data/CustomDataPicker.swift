import SwiftUI

// extension을 통해 내가 추가하고 싶은 기능을 넣어 확장(커스텀) 할 때 사용
extension Date {
    func getAllDates() -> [Date] {      //getAllDates = 날짜 타입의 배열로 가져올것
        
        let calendar = Calendar.current     //Calendar.current는 그레고리안 달력을 의미
        
        let startDate = calendar.date(from: Calendar.current.dateComponents([.year, .month], from: self))!
        //startDate = 캘린더의 년,월 정보를 가져오고 각 월에 해당하는 날짜를 가져오기
        
        let range = calendar.range(of: .day, in: .month, for: startDate)!
        //range 사용해 startDate의 월에서 해당 일자를 구하고 벗어나는 날은 nil처리를 해라..?
        
        return range.compactMap { day -> Date in
            return calendar.date(byAdding: .day, value: day - 1, to: startDate)!
        }
        //해석 : startDate의 모든 일자에 -1을 한 값을 리턴해서 nil값이 없는 배열로 만들어라
        //compactMap 리턴의 Value: day에 -1해주는거 startDate랑 연관 있는 것 같은데..
    }
}

struct CustomDataPicker: View {
    @Binding var currentDate: Date
    
    let myDateComponents = DateComponents(year: 2022, month: 12, day: 12)
    // DateComponents를 이용해 원하는 날짜를 만들 수 있습니다.
    
    let calendar = Calendar.current
    // 기준이 되는 달력이 있어야하기 떄문에 claendar도 선언해주세요!
    
    let myDate: Date
   // myDateComponents 날짜가 들어갈 변수를 선언
    
    init(){
        myDate = calendar.date(from: myDateComponents) ?? Date()
        //date(from:)에는 DateComponents 형식을 파라미터로 받기때문에
        //위에서 선언해준 myDateComponents을 전달해줄 수 있었습니다!
        //근데 swift가 안전성을 추구하기 때문에, 값이 없을떄는 현재 날짜를 전달해주는 코드를 뒤에 써줘야해요!
        // ?? : 값이 없을떄(nil 일때) 오른쪽을 실행한다.
    }
}

    var body: some View{
            Text("\(myDate)")
            //myDateComponents에 넣은 날짜(2022.12.12)를 Date 타입으로 불러와줌
        }

#Preview {
    CustomDataPicker
}
