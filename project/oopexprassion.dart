abstract class LibraryInterface {
  void addBook(Book book);
  Book? searchBook(String query, SearchType searchType);
  void deleteBook(String title);
}

class Book {
  String _title;
  String _author;
  int _publicationYear;

  Book(this._title, this._author, this._publicationYear);

  // getters and setters
}

class User {
  String _name;
  int _membershipNumber;
  List<Book> _borrowedBooks = [];

  // getters and setters
}

class NormalUser extends User {
  // ...
}

class PremiumUser extends User {
  // ...
}

class Library implements LibraryInterface {
  List<Book> _books = [];
  List<User> _users = [];

  @override
  void addBook(Book book) {
    _books.add(book);
  }

  @override
  Book? searchBook(String query, SearchType searchType) {
    // ... (نفس الكود السابق)
  }

  @override
  void deleteBook(String title) {
    _books.removeWhere((book) => book.title == title);
  }
}

enum SearchType { title, author, year }