db.createUser(
  {
    user: "impulsesieve",
    pwd: "blahblahblah",
    roles: [
      {
        role: "readWrite",
        db: "impulsesieve"
      }
    ]
  }
)