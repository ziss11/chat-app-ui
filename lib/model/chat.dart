class Chat {
  String img;
  String name;
  String content;
  String time;

  Chat({
    required this.content,
    required this.img,
    required this.name,
    required this.time,
  });
}

var chatList = [
  Chat(
    content: "Sent a Photo",
    img: 'assets/friends1.png',
    name: "Keazia De Rezia",
    time: "Now",
  ),
  Chat(
    content: "Oke, sure",
    img: 'assets/friends2.png',
    name: "Peter Park",
    time: "11:2 PM",
  ),
  Chat(
    content: "Don't forget group as...",
    img: 'assets/friends3.png',
    name: "Loila Bae",
    time: "10:6 PM",
  ),
  Chat(
    content: "Check you Email!",
    img: 'assets/friends4.png',
    name: "Ben Markz",
    time: "9:11 PM",
  ),
  Chat(
    content: "No. Sorry",
    img: 'assets/friends5.png',
    name: "Alice March",
    time: "Yesterday",
  ),
  Chat(
    content: "Sent a Photo",
    img: 'assets/friends6.png',
    name: "Josh George",
    time: "Yesterday",
  ),
];
