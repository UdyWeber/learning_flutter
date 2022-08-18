void main(List<String> args) {
  final String encripted_message = "Ola <@432>, você consegue me dizer se o <@123> decriptou a msg na lingua do <@654>? Fiquei sabendo que a <@1239> e o <@7654> ja tinham descoberto";
  print(encripted_message);

  final String decripted_message = decryptMessageUsers(encripted_message);
  print("The decripted_message is: $decripted_message");
}

class DiscordId {
  int? numeric_id;

  DiscordId(this.numeric_id);

  String realId() {
    final int id = this.numeric_id!;

    return "DID_$id";
  }
}

String decryptMessageUsers(String sentence) {
  const Map<String, String> user_list = {
    "432": "Jobson",
    "123": "Jaw",
    "654": "Bed",
    "7654": "Hell",
    "1239": "Michele"
  };

  final regExp = RegExp(r'<@(\d+)>');
  final matches = regExp.allMatches(sentence);

  for (final match in matches) {
    var formated_match =
        (match[0].toString()).replaceAll(new RegExp(r'(\@)?(\<)?(\>)?'), "");
    final String? username = user_list[formated_match];

    print("Username: $username");
    sentence = sentence.replaceAll("<@$formated_match>", username!);

    final String discord_real_id =
        DiscordId(int.parse(formated_match)).realId();
    print("Real_id: $discord_real_id");
  }

  return sentence;
}
