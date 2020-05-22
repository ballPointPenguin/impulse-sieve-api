db.createUser(
  {
    user: "impulsesieve",
    pwd: "secretsauce",
    roles: [
      {
        role: "readWrite",
        db: "impulsesievedb"
      }
    ]
  }
)
