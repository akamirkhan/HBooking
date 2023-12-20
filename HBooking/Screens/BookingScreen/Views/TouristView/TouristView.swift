import SwiftUI

struct TouristView: View {
    @State private var expanded = true
    @Binding var model: TouristModel
    
    let title: String
    
    var body: some View {
        VStack(spacing: 4) {
            headerView
            contentView
        }
        .background(Color.white)
        .cornerRadius(12)
    }
    
    private var headerView: some View {
        HStack {
            Text(title)
                .font(.hTitle)
            
            Spacer()
            chevronView
        }
        .padding(.vertical, 13)
        .padding(.horizontal, 16)
        .onTapGesture {
            expanded.toggle()
        }
    }
    
    @ViewBuilder
    private var contentView: some View {
        if expanded {
            VStack(spacing: 8) {
                TextFieldView(title: "Имя", text: $model.name)
                TextFieldView(title: "Фамилия", text: $model.surname)
                TextFieldView(title: "Дата рождения", text: $model.birthDate)
                TextFieldView(title: "Гражданство", text: $model.citizenship)
                TextFieldView(title: "Номер загранпаспорта", text: $model.passportNumber)
                TextFieldView(title: "Срок действия загранпаспорта", text: $model.passportValidity)
            }
            .padding([.horizontal, .bottom], 16)
        }
    }
    
    private var chevronView: some View {
        Image(systemName: expanded ? "chevron.up" : "chevron.down")
            .resizable()
            .frame(width: 12, height: 6)
            .foregroundColor(.buttonColor)
            .frame(width: 32, height: 32)
            .background(Color.detailButtonColor)
            .cornerRadius(6)
    }

}

#Preview {
    StatefulPreviewWrapper(TouristModel.example) { model in
        ZStack {
            Color.secondaryBackgroundColor
            TouristView(model: model, title: "Первый турист")
                .background(Color.white)
                .cornerRadius(8)
        }
    }
}
