import SwiftUI
import PhotosUI


struct PhotosSelector1: View {
    var size: CGFloat
    @State var selectedItems: PhotosPickerItem?
    @State var selectedImage: UIImage?

    var body: some View {
        ZStack(alignment: .center) {
            PhotosPicker(selection: $selectedItems,
                         matching: .images) {
                if let image = selectedImage {
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
        
        .onChange(of: selectedItems) { _, newItem in
            guard let newItem  else { return }
            Task {
                if let data = try? await newItem.loadTransferable(type: Data.self),
                   let uiImage = UIImage(data: data) {
                    selectedImage = uiImage
                }
            }
        }
    }
}


#Preview {
    Diary()
}
