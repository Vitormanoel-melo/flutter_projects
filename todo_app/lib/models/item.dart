class Item {
  String? title = "";
  bool? done = false;

  // construtor que adiciona os valores automaticamente nas propriedades
  Item({this.title, this.done});

  // converte de json para item
  Item.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    done = json['done'];
  }

  // converte de json para item
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = title;
    data['done'] = done;

    return data;
  }
  
}