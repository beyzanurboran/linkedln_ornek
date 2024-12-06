
class NetworkEntity {

  final String? userBgImage;
  final String? userProfileImage;
  final String? username;
  final String? userBio;
  final num? mutualConnections;

  NetworkEntity(
      {this.userBgImage,
        this.userProfileImage,
        this.username,
        this.userBio,
        this.mutualConnections});

  static List<NetworkEntity> networkData = [

    NetworkEntity(
      userBgImage: "images/arka_plan.jpeg",
      userProfileImage: "images/profil.jpeg",
      mutualConnections: 13,
      userBio: "Flutter Developer & Advocate",
      username: "John Doe",
    ),

    NetworkEntity(
      userBgImage: "images/arka_plan.jpeg",
      userProfileImage: "images/profil.jpeg",
      mutualConnections: 22,
      userBio: "Senior Software Engineer",
      username: "Carig C. Watson",
    ),

    NetworkEntity(
      userBgImage: "images/arka_plan.jpeg",
      userProfileImage: "images/profil.jpeg",
      mutualConnections: 52,
      userBio: "UX/UI Researcher & Designer",
      username: "Diana Joe",
    ),

    NetworkEntity(
      userBgImage: "images/arka_plan.jpeg",
      userProfileImage: "images/profil.jpeg",
      mutualConnections: 13,
      userBio: "Android Developer at Google",
      username: "Stephan Covey",
    ),

    NetworkEntity(
      userBgImage: "images/arka_plan.jpeg",
      userProfileImage: "images/profil.jpeg",
      mutualConnections: 88,
      userBio: "Flutter Developer & Advocate",
      username: "Elon Musk",
    ),

    NetworkEntity(
      userBgImage: "images/arka_plan.jpeg",
      userProfileImage: "images/profil.jpeg",
      mutualConnections: 11,
      userBio: "Flutter Developer & Advocate",
      username: "Robert Frost",
    ),

    NetworkEntity(
      userBgImage: "images/arka_plan.jpeg",
      userProfileImage: "images/profil.jpeg",
      mutualConnections: 13,
      userBio: "Flutter Developer & Advocate",
      username: "Steve Wozniak",
    ),

    NetworkEntity(
      userBgImage: "images/arka_plan.jpeg",
      userProfileImage: "images/profil.jpeg",
      mutualConnections: 76,
      userBio: "Flutter Developer & Advocate",
      username: "Doug Stevenson",
    ),
  ];

}