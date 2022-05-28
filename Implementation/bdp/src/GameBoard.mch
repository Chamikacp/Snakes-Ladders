/* GameBoard
 * Author: Chamika
 * Creation date: 1/22/2022
 */
MACHINE
    GameBoard

SETS
    // Appropriate Messages
    OUTCOME_MESSAGE = { WENT_DOWN_A_SNAKE , WENT_UP_A_LADDER , THREW_TOO_HIGH_A_DICE_VALUE_TO_FINISH , FINISHED_AND_WON , LANDED_ON_A_NORMAL_SQUARE , NEW_GAME_HAS_STARTED }

CONCRETE_CONSTANTS
    BoardArea , // Area of the game
    Snakes ,    // To store the snake heads and tail values
    Ladders     // To store the ladder bottom and top values

PROPERTIES
    BoardArea <: NATURAL1 & Snakes <: NATURAL1 * NATURAL1 & Ladders <: NATURAL1 * NATURAL1 &
    BoardArea = 1 .. 100 &
    Snakes = { ( 16 |-> 13 ) , ( 31 |-> 4 ) , ( 47 |-> 25 ) , ( 63 |-> 60 ) , ( 66 |-> 52 ) , ( 97 |-> 75 ) } &
    Ladders = { ( 3 |-> 39 ) , ( 10 |-> 12 ) , ( 27 |-> 53 ) , ( 56 |-> 84 ) , ( 61 |-> 99 ) , ( 72 |-> 90 ) }









ABSTRACT_VARIABLES
    playerPosition ,          // To store current position
    lastDiceValue ,           // To store last thrown dice value
    numberOfMoves ,           // To store the number of moves taken by the game
    numberOfTurns ,           // To store the number of turns taken by the dice
    numberOfSnakesGoneDown ,  // To store the number of snakes encountered
    numberOfLaddersGoneUp ,   // To store the number of ladders encountered
    visitedSquares            // To store the squares that visited by player in order

INVARIANT
    playerPosition : INTEGER &
    lastDiceValue : NAT &
    numberOfMoves : INTEGER &
    numberOfTurns : INTEGER &
    numberOfSnakesGoneDown : NAT &
    numberOfLaddersGoneUp : NAT &
    visitedSquares : seq ( BoardArea )

INITIALISATION
    playerPosition := 0 ||
    lastDiceValue := 0 ||
    visitedSquares := <> ||
    numberOfMoves := 0 ||
    numberOfTurns := 0 ||
    numberOfSnakesGoneDown := 0 ||
    numberOfLaddersGoneUp := 0

OPERATIONS
    // Move Operation
    outcomeMessage <-- Move ( diceValue ) =
    PRE
        outcomeMessage : OUTCOME_MESSAGE &
        not ( ( playerPosition = 100 ) ) &
        diceValue : NAT1 & diceValue : 1 .. 6
    THEN
        numberOfTurns := numberOfTurns + 1 ||
        lastDiceValue := diceValue ||
        IF
            ( playerPosition + diceValue ) > 100         // To check the thrown value is too high to finish
        THEN
            outcomeMessage := THREW_TOO_HIGH_A_DICE_VALUE_TO_FINISH
        ELSE
           IF
                ( playerPosition + diceValue ) : dom ( Ladders ) // To check ladder encounters
            THEN
                playerPosition := Ladders ( playerPosition + diceValue ) ||
                numberOfMoves := numberOfMoves + 2 ||
                numberOfLaddersGoneUp := numberOfLaddersGoneUp + 1 ||
                visitedSquares := visitedSquares <- ( playerPosition + diceValue ) <- ( Ladders ( playerPosition + diceValue ) ) ||
                outcomeMessage := WENT_UP_A_LADDER
            ELSE
                IF
                  ( playerPosition + diceValue ) : dom ( Snakes ) // To check snake encounters
                THEN
                    playerPosition := Snakes ( playerPosition + diceValue ) ||
                    numberOfMoves := numberOfMoves + 2 ||
                    numberOfSnakesGoneDown := numberOfSnakesGoneDown + 1 ||
                    visitedSquares := visitedSquares <- ( playerPosition + diceValue ) <- Snakes ( playerPosition + diceValue ) ||
                    outcomeMessage := WENT_DOWN_A_SNAKE
                ELSE
                    playerPosition := playerPosition + diceValue ||
                    numberOfMoves := numberOfMoves + 1 ||
                    visitedSquares := visitedSquares <- playerPosition + diceValue ||
                    IF
                       ( playerPosition + diceValue ) = 100 //To check if the game is going to finish or not
                    THEN
                       outcomeMessage := FINISHED_AND_WON
                    ELSE
                       outcomeMessage := LANDED_ON_A_NORMAL_SQUARE
                    END
                END
            END
        END
    END ;

    // To show the current position
    currentPosition <-- GameStatistics_CurrentPosition =
    BEGIN
        currentPosition := playerPosition
    END ;

    // To show the last dice value
    currentDiceValue <-- GameStatistics_LastThrownDiceValue =
    BEGIN
        currentDiceValue := lastDiceValue
    END ;

    // To show the total moves
    totalMoves <-- GameStatistics_TotalMoves =
    BEGIN
        totalMoves := numberOfMoves
    END ;

    // To show the total turns taken
    totalTurns <-- GameStatistics_TotalTurns =
    BEGIN
        totalTurns := numberOfTurns
    END ;

    // To show the total snakes gone down
    totalEncounteredSnakes <-- GameStatistics_TotalSnakesGoneDown =
    BEGIN
        totalEncounteredSnakes := numberOfSnakesGoneDown
    END ;

    // To show the total ladders went up
    totalEncounteredLadders <-- GameStatistics_TotalLaddersWentUp =
    BEGIN
        totalEncounteredLadders := numberOfLaddersGoneUp
    END ;

    // To get visited squares in order
    visitedSquareOrder <-- VisitedSquares =
    BEGIN
        visitedSquareOrder := visitedSquares
    END ;

    // To reset the game
    outcomeMessage <-- NewGame =
    PRE
        outcomeMessage : OUTCOME_MESSAGE &
        ( playerPosition = 100 )
    THEN
        playerPosition := 0 ||
        lastDiceValue := 0 ||
        visitedSquares := <> ||
        numberOfMoves := 0 ||
        numberOfTurns := 0 ||
        numberOfSnakesGoneDown := 0 ||
        numberOfLaddersGoneUp := 0 ||
        outcomeMessage := NEW_GAME_HAS_STARTED
    END

END
