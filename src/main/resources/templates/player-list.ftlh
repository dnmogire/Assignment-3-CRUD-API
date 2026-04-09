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
                <li><a href="/mvc/players" class="active">Home</a></li>
                <li><a href="/mvc/players/about">About</a></li>
                <li><a href="/mvc/players/createForm">Add Player</a></li>
            </ul>
        </div>
    </nav>

    <main>
        <section class="intro">
            <h2>${title}</h2>
            <p>Browse through Manchester United players. Click a card to see the full profile.</p>
        </section>

        <section class="search-container">
            <form action="/mvc/players/search" method="get" style="display:inline;">
                <input type="text" name="name" placeholder="Search by name..."
                       value="${searchTerm!''}"
                       style="padding:10px 15px; font-size:1rem; border:2px solid #ddd; border-radius:5px; width:300px;">
                <button type="submit" style="padding:10px 20px; background:#3498db; color:white; border:none; border-radius:5px; cursor:pointer; margin-left:8px;">Search</button>
            </form>

            <div style="margin-top:15px;">
                <span style="margin-right:8px; font-weight:bold; color:#2c3e50;">Filter by position:</span>
                <a href="/mvc/players/position/Goalkeeper" class="position-btn">Goalkeeper</a>
                <a href="/mvc/players/position/Defender" class="position-btn">Defender</a>
                <a href="/mvc/players/position/Midfielder" class="position-btn">Midfielder</a>
                <a href="/mvc/players/position/Forward" class="position-btn">Forward</a>
                <a href="/mvc/players" class="position-btn" style="background:#95a5a6;">All</a>
            </div>

            <#if filterLabel??>
                <p style="margin-top:12px; color:#555;">Showing: <strong>${filterLabel}</strong></p>
            </#if>
            <#if searchTerm??>
                <p style="margin-top:12px; color:#555;">Results for: <strong>"${searchTerm}"</strong></p>
            </#if>
        </section>

        <section class="gallery">
            <#if playerList?has_content>
                <#list playerList as player>
                    <div class="player-card">
                        <div class="player-content">
                            <h3>${player.name}</h3>
                            <span class="position">${player.position!''}</span>
                            <div class="player-info">
                                <p><strong>Jersey #:</strong> ${player.jerseyNumber}</p>
                                <p><strong>Nationality:</strong> ${player.nationality!''}</p>
                                <p><strong>Age:</strong> ${player.age}</p>
                                <p><strong>Market Value:</strong> £${player.marketValue}M</p>
                            </div>
                            <div class="player-summary">
                                ${player.description!'No description available.'}
                            </div>
                            <div style="margin-top:15px; display:flex; gap:10px; flex-wrap:wrap;">
                                <a href="/mvc/players/${player.playerId?c}" class="btn btn-primary">View Details</a>
                                <a href="/mvc/players/updateForm/${player.playerId?c}" class="btn btn-secondary">Edit</a>
                                <a href="/mvc/players/delete/${player.playerId?c}"
                                   onclick="return confirm('Delete ${player.name}?')"
                                   class="btn btn-danger">Delete</a>
                            </div>
                        </div>
                    </div>
                </#list>
            <#else>
                <p style="text-align:center; color:#888; padding:40px;">No players found.</p>
            </#if>
        </section>
    </main>

    <footer>
        <p>&copy; 2025 Football Players Gallery | CSC 340 Assignment</p>
    </footer>
</body>
</html>