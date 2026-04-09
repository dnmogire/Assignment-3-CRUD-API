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
        <#if player??>
            <div class="detail-page">
                <h2>${player.name} – Player Profile</h2>

                <div class="player-info" style="margin:20px 0;">
                    <p><strong>Position:</strong> ${player.position!''}</p>
                    <p><strong>Nationality:</strong> ${player.nationality!''}</p>
                    <p><strong>Jersey Number:</strong> ${player.jerseyNumber}</p>
                    <p><strong>Age:</strong> ${player.age}</p>
                    <p><strong>Market Value:</strong> £${player.marketValue}M</p>
                    <p><strong>Player ID:</strong> ${player.playerId?c}</p>
                </div>

                <h3 style="margin-top:30px; color:#2c3e50;">About</h3>
                <p style="line-height:1.8; margin-top:10px;">
                    ${player.description!'No description available.'}
                </p>

                <div style="margin-top:30px; display:flex; gap:12px; flex-wrap:wrap;">
                    <a href="/mvc/players/updateForm/${player.playerId?c}" class="btn btn-secondary">Edit Player</a>
                    <a href="/mvc/players/delete/${player.playerId?c}"
                       onclick="return confirm('Are you sure you want to delete ${player.name}?')"
                       class="btn btn-danger">Delete Player</a>
                    <a href="/mvc/players" class="btn btn-primary">← Back to Gallery</a>
                </div>
            </div>
        <#else>
            <div class="detail-page">
                <h2>Player Not Found</h2>
                <p>No player exists with that ID.</p>
                <a href="/mvc/players" class="btn btn-primary" style="margin-top:20px; display:inline-block;">← Back to Gallery</a>
            </div>
        </#if>
    </main>

    <footer>
        <p>&copy; 2025 Football Players Gallery | CSC 340 Assignment</p>
    </footer>
</body>
</html>