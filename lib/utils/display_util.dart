enum NavLinks { Home, Github }

String displayString(NavLinks link) {
  switch(link) {
    case NavLinks.Home:
      return "Home";
      break;

    case NavLinks.Github:
      return "Github";
      break;

    default:
      return "";

  }
}

String linkUrl(NavLinks link) {
  switch(link) {
    case NavLinks.Home:
      return "https://Chinese-Learning-Chatbot.web.app/";
      break;

    case NavLinks.Github:
      return "https://github.com/zhengzc18/FlutterChatBot";
      break;
      
    default:
      return "";

  }
}