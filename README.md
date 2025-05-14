# 🏆 Fifa World Cup 2022 Stickers Manager

Manage your Qatar 2022 World Cup sticker collection in a simple and efficient way!

## 📋 Topics

- [About](#about)
- [Preview](#preview)
- [Functionalities](#functionalities)
- [Challenges and Learnings along the way](#challenges-and-learnings-along-the-way)
- [How to Use](#how-to-use)
- [How to Contribute](#how-to-contribute)
- [License](#license)

## 📖 About

This project was developed during a class with professor Rodrigo Rahman from **Academia do Flutter**, and consists of a sticker management app for the **FIFA World Cup Qatar 2022**. 

With this app, users can control which stickers they already have, which ones are missing, and manage duplicates with ease.

## 📱 Preview

Coming soon...

## 🛠️ Functionalities

- Add stickers to your album;
- Track missing and repeated stickers;
- Organize stickers by groups and countries;
- Data is persisted using a remote PHP API;
- Dependency injection with `get_it`;
- Simple state management with `setState`;
- HTTP requests handled with the `dio` package.

## 🤯 Challenges and Learnings along the way

This project allowed me to:
- Deepen my knowledge on **Flutter architecture**;
- Practice **dependency injection** using `get_it`;
- Handle **API integration** and asynchronous data loading with the `dio` package;
- Reinforce the importance of good **separation of concerns** between UI and data layers;
- Manage layout and responsiveness for better UX.

## 🤔 How to Use

Make sure you have Flutter installed and set up on your machine. You can follow the guide at: https://flutter.dev/docs/get-started/install

```bash
# Clone this repository
$ git clone https://github.com/seu-usuario/seu-repo.git

# Enter the project directory
$ cd fifa-stickers-manager

# Install dependencies
$ flutter pub get

# Run the app
$ flutter run
```

⚠️ You must configure the API endpoint in the code. This project consumes a PHP backend, so the base URL must point to a valid server.

## 💪 How to Contribute

- Fork the project
- Create a new branch with your feature:
  ```bash
  git checkout -b feature/my-feature
  ```
- Commit your changes:
  ```bash
  git commit -m "feat: my new feature"
  ```
- Push to your fork:
  ```bash
  git push origin feature/my-feature
  ```
- Open a pull request 🚀

## 📝 License

This project is under the MIT license. See the [LICENSE](LICENSE) file for more details.

---

Made with ❤️ by **Sérgio R. R. Teixeira**  
With the instructor **Rodrigo Rahman**, in the event **Dart Week 8** on *Academia do Flutter*.  
If it helped you, give ⭐, contribute, it will help me too 😉
