db.createUser(
    {
        user: "atri",
        pwd: "akulupa",
        roles: [
            {
                role: "readWrite",
                db: "atri"
            }
        ]
    }
);