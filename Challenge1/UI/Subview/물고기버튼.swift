import SwiftUI


struct 거북이버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("거북이")
        }
    }
}

struct 꽃게버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("꽃게")
        }
    }
}

struct 넙적고래버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("넙적고래")
        }
    }
}

struct 메기버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("메기")
        }
    }
}
struct 멸치버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("멸치")
        }
    }
}

struct 멸치2버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("멸치2")
        }
    }
}

struct 문어버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("문어")
        }
    }
}

struct 물개버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("물개")
        }
    }
}

struct 우파루파버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("우파루파")
        }
    }
}

struct 복어버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("복어")
        }
    }
}

struct 불가사리버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("불가사리")
        }
    }
}

struct 빨붕어버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("빨붕어")
        }
    }
}

struct 뾰족버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("뾰족")
        }
    }
}

struct 상어버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("상어")
        }
    }
}

struct 새우버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("새우")
        }
    }
}

struct 수염버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("수염")
        }
    }
}

struct 아구버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("아구")
        }
    }
}

struct 아귀버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("아귀")
        }
    }
}

struct 오징어버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("오징어")
        }
    }
}

struct 왕눈이물고기버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("왕눈이물고기")
        }
    }
}

struct 초록버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("초록")
        }
    }
}

struct 초록색지느러미버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("초록색지느러미")
        }
    }
}

struct 파랑이버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("파랑이")
        }
    }
}

struct 해파리버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("해파리")
        }
    }
}

struct 헬멧버튼: View {
    var body: some View {
        Button(action:{
        }) {
            Image("헬멧")
        }
    }
}

struct 저장버튼: View {
    var isValid: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image("저장")
                .opacity(isValid ? 1.0 : 0.4)  // 내용 없으면 흐리게
        }
        .disabled(!isValid)
    }
}

#Preview {

}
