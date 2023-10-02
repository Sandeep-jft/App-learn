// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogItem {
  late final int id;
  late final String name;
  late final String description;
  late final num price;
  late final String picture;
  CatalogItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.picture,
  });

  CatalogItem copyWith({
    int? id,
    String? name,
    String? description,
    num? price,
    String? picture,
  }) {
    return CatalogItem(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      picture: picture ?? this.picture,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'picture': picture,
    };
  }

  factory CatalogItem.fromMap(Map<String, dynamic> map) {
    return CatalogItem(
        id: map["id"],
        name: map["name"],
        description: map["description"],
        price: map["price"],
        picture: map["picture"]);
  }

  String toJson() => json.encode(toMap());

  factory CatalogItem.fromJson(String source) =>
      CatalogItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CatalogItem(id: $id, name: $name, description: $description, price: $price, picture: $picture)';
  }

  @override
  bool operator ==(covariant CatalogItem other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        other.picture == picture;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        picture.hashCode;
  }
}

// CatalogItem(
//     {required this.id,
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.picture});

// factory CatalogItem.fromMap(Map<String, dynamic> map) {
//   return CatalogItem(
//       id: map["id"],
//       name: map["name"],
//       description: map["description"],
//       price: map["price"],
//       picture: map["picture"]);
// }

// toMap() => {
//       "id": id,
//       "name": name,
//       "description": description,
//       "price": price,
//       "picture": picture
//     };

class CatalogModel {
  static List<CatalogItem> modelItem = [
    CatalogItem(
      id: 1,
      name: 'Iphone 15',
      description: "Iphone 15 New Generation",
      price: 10000,
      picture:
          "https://imgs.search.brave.com/k3-X0zMA9yDZSsrDE4kaxB4DaX08a4nytcEEXmnQgbc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mZG4y/LmdzbWFyZW5hLmNv/bS92di9iaWdwaWMv/YXBwbGUtaXBob25l/LTE1LXBsdXMtLmpw/Zw",
    ),
    CatalogItem(
      id: 2,
      name: 'Samsung Galaxy S21',
      description: "Samsung Galaxy S21 256 GB",
      price: 9000,
      picture:
          "https://imgs.search.brave.com/k3-X0zMA9yDZSsrDE4kaxB4DaX08a4nytcEEXmnQgbc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mZG4y/LmdzbWFyZW5hLmNv/bS92di9iaWdwaWMv/YXBwbGUtaXBob25l/LTE1LXBsdXMtLmpw/Zw",
    ),
    CatalogItem(
      id: 3,
      name: 'Google Pixel 6',
      description: "Google Pixel 6 128 GB",
      price: 8000,
      picture:
          "https://imgs.search.brave.com/k3-X0zMA9yDZSsrDE4kaxB4DaX08a4nytcEEXmnQgbc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mZG4y/LmdzbWFyZW5hLmNv/bS92di9iaWdwaWMv/YXBwbGUtaXBob25l/LTE1LXBsdXMtLmpw/Zw",
    ),
    CatalogItem(
      id: 4,
      name: 'OnePlus 9 Pro',
      description: "OnePlus 9 Pro 256 GB",
      price: 7500,
      picture:
          "https://imgs.search.brave.com/k3-X0zMA9yDZSsrDE4kaxB4DaX08a4nytcEEXmnQgbc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mZG4y/LmdzbWFyZW5hLmNv/bS92di9iaWdwaWMv/YXBwbGUtaXBob25l/LTE1LXBsdXMtLmpw/Zw",
    ),
    CatalogItem(
      id: 5,
      name: 'Xiaomi Mi 11',
      description: "Xiaomi Mi 11 128 GB",
      price: 7000,
      picture:
          "https://imgs.search.brave.com/k3-X0zMA9yDZSsrDE4kaxB4DaX08a4nytcEEXmnQgbc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mZG4y/LmdzbWFyZW5hLmNv/bS92di9iaWdwaWMv/YXBwbGUtaXBob25l/LTE1LXBsdXMtLmpw/Zw",
    ),
    CatalogItem(
      id: 6,
      name: 'Huawei P40',
      description: "Huawei P40 128 GB",
      price: 6000,
      picture:
          "https://imgs.search.brave.com/k3-X0zMA9yDZSsrDE4kaxB4DaX08a4nytcEEXmnQgbc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mZG4y/LmdzbWFyZW5hLmNv/bS92di9iaWdwaWMv/YXBwbGUtaXBob25l/LTE1LXBsdXMtLmpw/Zw",
    ),
    CatalogItem(
      id: 7,
      name: 'Sony Xperia 5 III',
      description: "Sony Xperia 5 III 256 GB",
      price: 8500,
      picture:
          "https://imgs.search.brave.com/k3-X0zMA9yDZSsrDE4kaxB4DaX08a4nytcEEXmnQgbc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mZG4y/LmdzbWFyZW5hLmNv/bS92di9iaWdwaWMv/YXBwbGUtaXBob25l/LTE1LXBsdXMtLmpw/Zw",
    ),
    CatalogItem(
      id: 8,
      name: 'LG V60 ThinQ',
      description: "LG V60 ThinQ 128 GB",
      price: 6500,
      picture:
          "https://imgs.search.brave.com/k3-X0zMA9yDZSsrDE4kaxB4DaX08a4nytcEEXmnQgbc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mZG4y/LmdzbWFyZW5hLmNv/bS92di9iaWdwaWMv/YXBwbGUtaXBob25l/LTE1LXBsdXMtLmpw/Zw",
    ),
    CatalogItem(
      id: 9,
      name: 'Motorola Moto G Power',
      description: "Motorola Moto G Power 64 GB",
      price: 3500,
      picture:
          "https://imgs.search.brave.com/k3-X0zMA9yDZSsrDE4kaxB4DaX08a4nytcEEXmnQgbc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mZG4y/LmdzbWFyZW5hLmNv/bS92di9iaWdwaWMv/YXBwbGUtaXBob25l/LTE1LXBsdXMtLmpw/Zw",
    ),
    CatalogItem(
      id: 10,
      name: 'Nokia 9 PureView',
      description: "Nokia 9 PureView 128 GB",
      price: 4000,
      picture:
          "https://imgs.search.brave.com/k3-X0zMA9yDZSsrDE4kaxB4DaX08a4nytcEEXmnQgbc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mZG4y/LmdzbWFyZW5hLmNv/bS92di9iaWdwaWMv/YXBwbGUtaXBob25l/LTE1LXBsdXMtLmpw/Zw",
    ),
  ];
}
