if Requests.find().count() == 0
  Requests.insert {
    genre: "classic rock"
    username: "zaksoup"
    bands: ["the who", "led zeppelin", "katy perry"]
    comments: "stuff for comments goes here"
    public: true
  }

  Requests.insert {
    genre: "Jazz"
    username: "Kooshaba"
    bands: ["Benny Goodman", "Charlie Parker", "katy perry"]
    comments: "more stuff for comments goes here"
    public: true
  }

  Requests.insert {
    genre: "Hidden"
    username: "Ghost"
    bands: ["Spooky", "Scary", "oh so spooky scary"]
    comments: "more spooky stuff for comments goes here"
    public: false
  }
