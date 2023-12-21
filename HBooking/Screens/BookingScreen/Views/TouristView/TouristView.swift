import SwiftUI
import Combine

struct TouristView: View {
    @State private var expanded = true
    @Binding var model: TouristModel
    
    let title: String
    let fieldsValidator: PassthroughSubject<Void, Never>
    
    init(model: Binding<TouristModel>, title: String, fieldsValidator: PassthroughSubject<Void, Never>) {
        self._model = model
        self.title = title
        self.fieldsValidator = fieldsValidator
    }
    
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
                TextFieldView(viewModel: .init(title: "Имя", text: model.name, fieldsValidator: fieldsValidator))
                TextFieldView(viewModel: .init(title: "Фамилия", text: model.surname, fieldsValidator: fieldsValidator))
                TextFieldView(viewModel: .init(title: "Дата рождения", text: model.birthDate, fieldsValidator: fieldsValidator))
                TextFieldView(viewModel: .init(title: "Гражданство", text: model.citizenship, fieldsValidator: fieldsValidator))
                TextFieldView(viewModel: .init(title: "Номер загранпаспорта", text: model.passportNumber, fieldsValidator: fieldsValidator))
                TextFieldView(viewModel: .init(title: "Срок действия загранпаспорта", text: model.passportValidity, fieldsValidator: fieldsValidator))
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
            TouristView(model: model, title: "Первый турист", fieldsValidator: .init())
                .background(Color.white)
                .cornerRadius(8)
        }
    }
}
