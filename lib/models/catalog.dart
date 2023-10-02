class CatalogItem {
  late final int id;
  late final String name;
  late final String description;
  late final num price;
  late final String picture;

  CatalogItem(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.picture});
}

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
