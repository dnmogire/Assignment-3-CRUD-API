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
                <li><a href="/mvc/players/about">About</a></li>
                <li><a href="/mvc/players/createForm">Add Player</a></li>
            </ul>
        </div>
    </nav>

    <main>
        <form action="/mvc/players/update/${player.playerId?c}" method="post">
            <h2 style="text-align:center; color:#2c3e50; margin-bottom:20px;">${title}</h2>

            <div class="form-group">
                <label for="name">Player Name *</label>
                <input type="text" id="name" name="name" value="${player.name}" required>
            </div>

            <div class="form-group">
                <label for="position">Position *</label>
                <select id="position" name="position" required>
                    <option value="">Select Position</option>
                    <option value="Goalkeeper" <#if player.position == "Goalkeeper">selected</#if>>Goalkeeper</option>
                    <option value="Defender"   <#if player.position == "Defender">selected</#if>>Defender</option>
                    <option value="Midfielder" <#if player.position == "Midfielder">selected</#if>>Midfielder</option>
                    <option value="Forward"    <#if player.position == "Forward">selected</#if>>Forward</option>
                </select>
            </div>

            <div class="form-group">
                <label for="nationality">Nationality *</label>
                <input type="text" id="nationality" name="nationality" value="${player.nationality!''}" required>
            </div>

            <div class="form-group">
                <label for="jerseyNumber">Jersey Number *</label>
                <input type="number" id="jerseyNumber" name="jerseyNumber" value="${player.jerseyNumber}" min="1" max="99" required>
            </div>

            <div class="form-group">
                <label for="age">Age *</label>
                <input type="number" id="age" name="age" value="${player.age}" min="15" max="50" required>
            </div>

            <div class="form-group">
                <label for="marketValue">Market Value (£M)</label>
                <input type="number" id="marketValue" name="marketValue" value="${player.marketValue}" step="0.1" min="0">
            </div>

            <div class="form-group">
                <label for="description">Player Description *</label>
                <textarea id="description" name="description" required>${player.description!''}</textarea>
            </div>

            <button type="submit">Save Changes</button>
            <a href="/mvc/players/${player.playerId?c}" style="margin-left:15px; color:#3498db;">Cancel</a>
        </form>
    </main>

    <footer>
        <p>&copy; 2025 Football Players Gallery | CSC 340 Assignment</p>
    </footer>
</body>
</html>