void main() {
  Book book1 = Book("ALchemist", "Paulo Choelo", BookCategory.fiction, true);
  Book book2 = Book("CleanCode", "Robert", BookCategory.technology, true);
  Book book3 = Book("PoorDad", "adam", BookCategory.history, false);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  library.display();

  LibraryMember member = LibraryMember("zain");

  member.borrowBook(book1);
  library.display();

  member.returnBook(book1);
  library.display();
}

enum BookCategory { fiction, non_Fiction, science, history, technology }

class Book {
  String title;
  String author;
  BookCategory category;
  bool isAvailable;

  Book(this.title, this.author, this.category, this.isAvailable);

  void displayDetails() {
    print(
        "Book Title: $title | Book Auhtor: $author | Book Category: ${category.name} | Availability: ${isAvailable ? "yes" : "no"} ");
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void display() {
    print("Available Books....");
    for (var book in books) {
      book.displayDetails();
    }
  }
}

class LibraryMember {
  String name;

  LibraryMember(this.name);
  List<Book> borrowbooks = [];

  void borrowBook(Book book) {
    if (book.isAvailable) {
      borrowbooks.add(book);
      book.isAvailable = false; // Mark book as unavailable
      print('$name Borrowed "${book.title}".');
    } else {
      print('Sorry, "${book.title}" is not available.');
    }
  }

  void returnBook(Book book) {
    if (borrowbooks.contains(book)) {
      borrowbooks.remove(book);
      book.isAvailable = true; // Mark book as available again
      print('$name Returned "${book.title}".');
    } else {
      print("$name didn't borrow \"${book.title}\".");
    }
  }
}
