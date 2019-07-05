gameState = {
    MENU = 1,
    PLAYING = 2
}

directions = {
    UP = 1,
    DOWN = 2,
    RIGHT = 3,
    LEFT = 4
}

enemyDifficulties = {
    HARD = 3,
    MEDIUM = 2,
    EASY = 1
}

function isGamePaused(actGameState)
    return actGameState==gameState.MENU
end

