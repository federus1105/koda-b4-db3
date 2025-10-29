### ERD DATABASE MOVIES
```mermaid
erDiagram
actors {
    int id
    string first_name
    string last_name
    string gender
}

directors {
    int id
    string first_name
    string last_name
}

directors_genres {
    string director_id
    string genre
}

movies {
    int id
    string name
    string year
    string rankscore
}

movies_directors {
    int director_id
    int movie_id
}

movies_genres {
    int movie_id
    string genre
}

roles {
    int actor_id
    int movie_id
    string role
}


actors }|--|{ roles : mendapatkan
movies }|--o{ roles : memainkan
directors }|--o{ directors_genres : memiliki
movies }|--o{ movies_genres : memiliki
movies }o--|{ movies_directors : distutradarai
directors }|--o{ movies_directors : menyutradarai 


```