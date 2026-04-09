<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title} - Football Gallery</title>
    <link rel="stylesheet" href="/styles.css">
</head>
<body>
    <nav>
        <div class="nav-container">
            <h1>Football Gallery</h1>
            <ul>
                <li><a href="/mvc/players">Home</a></li>
                <li><a href="/mvc/players/about" class="active">About</a></li>
                <li><a href="/mvc/players/createForm">Add Player</a></li>
            </ul>
        </div>
    </nav>

    <main>
        <div class="about-content">
            <h2>About This Project</h2>

            <img src="https://images.unsplash.com/photo-1579952363873-27f3bade9f55?w=800&h=400&fit=crop"
                 alt="Football stadium" class="about-image">

            <h3>Project Overview</h3>
            <p>
                This Football Players Gallery is a full-stack web application built for CSC 340.
                It uses a Spring Boot backend with a PostgreSQL database hosted on Neon,
                and FreeMarker for server-side rendering of all views.
            </p>

            <h3>Features</h3>
            <ul style="margin-left:20px; line-height:1.8;">
                <li>Gallery of all Manchester United players from the database</li>
                <li>Detailed player profile page</li>
                <li>Create a new player using a form</li>
                <li>Edit an existing player's details</li>
                <li>Delete a player</li>
                <li>Filter players by position</li>
                <li>Search players by name</li>
            </ul>

            <h3>Technologies Used</h3>
            <ul style="margin-left:20px; line-height:1.8;">
                <li><strong>Java / Spring Boot:</strong> Backend and MVC controller</li>
                <li><strong>Spring Data JPA:</strong> Database access layer</li>
                <li><strong>PostgreSQL on Neon:</strong> Cloud-hosted database</li>
                <li><strong>FreeMarker:</strong> Server-side HTML templating</li>
                <li><strong>HTML / CSS:</strong> Frontend styling</li>
            </ul>

            <div style="margin-top:30px;">
                <a href="/mvc/players" style="color:#3498db;">← Back to Gallery</a>
            </div>
        </div>
    </main>

    <footer>
        <p>&copy; 2025 Football Players Gallery | CSC 340 Assignment</p>
    </footer>
</body>
</html>