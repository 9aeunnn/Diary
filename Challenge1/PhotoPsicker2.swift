import SwiftUI
import PhotosUI


struct PhotosSelector2: View {
    var size: CGFloat
    
    @State var selectedItems2: PhotosPickerItem?
    @State var selectedImage2: UIImage?

    var body: some View {
        ZStack(alignment: .center) {
            PhotosPicker(selection: $selectedItems2,
                         matching: .images) {
                if let image = selectedImage2 {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: size, height: size)
                        .opacity(0.8)
                } else {
                    Text("사진 선택")
                }
            }
        }
        
        .onChange(of: selectedItems2) { _, newItem2 in
            guard let newItem2  else { return }
            Task {
                if let data = try? await newItem2.loadTransferable(type: Data.self),
                   let uiImage = UIImage(data: data) {
                    selectedImage2 = uiImage
                }
            }
        }
    }
}
