class Music {
  final String name;
  final String artirts;
  final String banner;
  final String duration;

  Music(this.name, this.artirts, this.banner, this.duration);

  static List<Music> data() {
    return [
      Music(
          "Bye Bye",
          "Marshmellow, Juice WRLD",
          "https://images.unsplash.com/photo-1551878931-9c07f24e9911?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
          "2:09"),
      Music(
          "I Like You",
          "Post Maole, Doja Cat",
          "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
          "4:03"),
      Music(
          "Fountains",
          "Drake, Tems",
          "https://images.unsplash.com/photo-1468276311594-df7cb65d8df6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
          "3:18"),
    ];
  }
}
