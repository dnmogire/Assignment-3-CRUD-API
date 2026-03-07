# Manchester United Player API

A RESTful CRUD API for Manchester United football players built with Spring Boot, Spring Data JPA, and PostgreSQL.

---

## Installation

1. Clone the repository
2. Set up a PostgreSQL database on Neon
3. Add your connection details to `application.properties`
4. Run the app:
```
./mvnw spring-boot:run
```

---

## API Endpoints

### Get All Players
`GET /players`

### Get Player by ID
`GET /players/{playerId}`

### Add a Player
`POST /players`
```json
{
  "name": "Bruno Fernandes",
  "description": "Creative midfielder and captain.",
  "position": "Midfielder",
  "jerseyNumber": 8,
  "nationality": "Portuguese",
  "age": 30,
  "marketValue": 60.0
}
```

### Update a Player
`PUT /players/{playerId}`

### Delete a Player
`DELETE /players/{playerId}`

### Get Players by Position
`GET /players/position/{position}`

### Search Players by Name
`GET /players/search?name={substring}`

---

## Demo Video

https://uncg-my.sharepoint.com/:v:/g/personal/dnmogire_uncg_edu/IQBu-SfbK7GuTbqMK98Rpwm-AU8blrp1MHDi0NUFvS139XU?e=YtsfkB 