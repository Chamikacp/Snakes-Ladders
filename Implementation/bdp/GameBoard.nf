Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(GameBoard))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(GameBoard))==(Machine(GameBoard));
  Level(Machine(GameBoard))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(GameBoard)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(GameBoard))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(GameBoard))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(GameBoard))==(?);
  List_Includes(Machine(GameBoard))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(GameBoard))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(GameBoard))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(GameBoard))==(?);
  Context_List_Variables(Machine(GameBoard))==(?);
  Abstract_List_Variables(Machine(GameBoard))==(?);
  Local_List_Variables(Machine(GameBoard))==(visitedSquares,numberOfLaddersGoneUp,numberOfSnakesGoneDown,numberOfTurns,numberOfMoves,lastDiceValue,playerPosition);
  List_Variables(Machine(GameBoard))==(visitedSquares,numberOfLaddersGoneUp,numberOfSnakesGoneDown,numberOfTurns,numberOfMoves,lastDiceValue,playerPosition);
  External_List_Variables(Machine(GameBoard))==(visitedSquares,numberOfLaddersGoneUp,numberOfSnakesGoneDown,numberOfTurns,numberOfMoves,lastDiceValue,playerPosition)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(GameBoard))==(?);
  Abstract_List_VisibleVariables(Machine(GameBoard))==(?);
  External_List_VisibleVariables(Machine(GameBoard))==(?);
  Expanded_List_VisibleVariables(Machine(GameBoard))==(?);
  List_VisibleVariables(Machine(GameBoard))==(?);
  Internal_List_VisibleVariables(Machine(GameBoard))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(GameBoard))==(btrue);
  Gluing_List_Invariant(Machine(GameBoard))==(btrue);
  Expanded_List_Invariant(Machine(GameBoard))==(btrue);
  Abstract_List_Invariant(Machine(GameBoard))==(btrue);
  Context_List_Invariant(Machine(GameBoard))==(btrue);
  List_Invariant(Machine(GameBoard))==(playerPosition: INTEGER & lastDiceValue: NAT & numberOfMoves: INTEGER & numberOfTurns: INTEGER & numberOfSnakesGoneDown: NAT & numberOfLaddersGoneUp: NAT & visitedSquares: seq(BoardArea))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(GameBoard))==(btrue);
  Abstract_List_Assertions(Machine(GameBoard))==(btrue);
  Context_List_Assertions(Machine(GameBoard))==(btrue);
  List_Assertions(Machine(GameBoard))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(GameBoard))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(GameBoard))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(GameBoard))==(playerPosition,lastDiceValue,visitedSquares,numberOfMoves,numberOfTurns,numberOfSnakesGoneDown,numberOfLaddersGoneUp:=0,0,<>,0,0,0,0);
  Context_List_Initialisation(Machine(GameBoard))==(skip);
  List_Initialisation(Machine(GameBoard))==(playerPosition:=0 || lastDiceValue:=0 || visitedSquares:=<> || numberOfMoves:=0 || numberOfTurns:=0 || numberOfSnakesGoneDown:=0 || numberOfLaddersGoneUp:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(GameBoard))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(GameBoard))==(btrue);
  List_Constraints(Machine(GameBoard))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(GameBoard))==(Move,GameStatistics_CurrentPosition,GameStatistics_LastThrownDiceValue,GameStatistics_TotalMoves,GameStatistics_TotalTurns,GameStatistics_TotalSnakesGoneDown,GameStatistics_TotalLaddersWentUp,VisitedSquares,NewGame);
  List_Operations(Machine(GameBoard))==(Move,GameStatistics_CurrentPosition,GameStatistics_LastThrownDiceValue,GameStatistics_TotalMoves,GameStatistics_TotalTurns,GameStatistics_TotalSnakesGoneDown,GameStatistics_TotalLaddersWentUp,VisitedSquares,NewGame)
END
&
THEORY ListInputX IS
  List_Input(Machine(GameBoard),Move)==(diceValue);
  List_Input(Machine(GameBoard),GameStatistics_CurrentPosition)==(?);
  List_Input(Machine(GameBoard),GameStatistics_LastThrownDiceValue)==(?);
  List_Input(Machine(GameBoard),GameStatistics_TotalMoves)==(?);
  List_Input(Machine(GameBoard),GameStatistics_TotalTurns)==(?);
  List_Input(Machine(GameBoard),GameStatistics_TotalSnakesGoneDown)==(?);
  List_Input(Machine(GameBoard),GameStatistics_TotalLaddersWentUp)==(?);
  List_Input(Machine(GameBoard),VisitedSquares)==(?);
  List_Input(Machine(GameBoard),NewGame)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(GameBoard),Move)==(outcomeMessage);
  List_Output(Machine(GameBoard),GameStatistics_CurrentPosition)==(currentPosition);
  List_Output(Machine(GameBoard),GameStatistics_LastThrownDiceValue)==(currentDiceValue);
  List_Output(Machine(GameBoard),GameStatistics_TotalMoves)==(totalMoves);
  List_Output(Machine(GameBoard),GameStatistics_TotalTurns)==(totalTurns);
  List_Output(Machine(GameBoard),GameStatistics_TotalSnakesGoneDown)==(totalEncounteredSnakes);
  List_Output(Machine(GameBoard),GameStatistics_TotalLaddersWentUp)==(totalEncounteredLadders);
  List_Output(Machine(GameBoard),VisitedSquares)==(visitedSquareOrder);
  List_Output(Machine(GameBoard),NewGame)==(outcomeMessage)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(GameBoard),Move)==(outcomeMessage <-- Move(diceValue));
  List_Header(Machine(GameBoard),GameStatistics_CurrentPosition)==(currentPosition <-- GameStatistics_CurrentPosition);
  List_Header(Machine(GameBoard),GameStatistics_LastThrownDiceValue)==(currentDiceValue <-- GameStatistics_LastThrownDiceValue);
  List_Header(Machine(GameBoard),GameStatistics_TotalMoves)==(totalMoves <-- GameStatistics_TotalMoves);
  List_Header(Machine(GameBoard),GameStatistics_TotalTurns)==(totalTurns <-- GameStatistics_TotalTurns);
  List_Header(Machine(GameBoard),GameStatistics_TotalSnakesGoneDown)==(totalEncounteredSnakes <-- GameStatistics_TotalSnakesGoneDown);
  List_Header(Machine(GameBoard),GameStatistics_TotalLaddersWentUp)==(totalEncounteredLadders <-- GameStatistics_TotalLaddersWentUp);
  List_Header(Machine(GameBoard),VisitedSquares)==(visitedSquareOrder <-- VisitedSquares);
  List_Header(Machine(GameBoard),NewGame)==(outcomeMessage <-- NewGame)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(GameBoard),Move)==(outcomeMessage: OUTCOME_MESSAGE & not(playerPosition = 100) & diceValue: NAT1 & diceValue: 1..6);
  List_Precondition(Machine(GameBoard),GameStatistics_CurrentPosition)==(btrue);
  List_Precondition(Machine(GameBoard),GameStatistics_LastThrownDiceValue)==(btrue);
  List_Precondition(Machine(GameBoard),GameStatistics_TotalMoves)==(btrue);
  List_Precondition(Machine(GameBoard),GameStatistics_TotalTurns)==(btrue);
  List_Precondition(Machine(GameBoard),GameStatistics_TotalSnakesGoneDown)==(btrue);
  List_Precondition(Machine(GameBoard),GameStatistics_TotalLaddersWentUp)==(btrue);
  List_Precondition(Machine(GameBoard),VisitedSquares)==(btrue);
  List_Precondition(Machine(GameBoard),NewGame)==(outcomeMessage: OUTCOME_MESSAGE & playerPosition = 100)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(GameBoard),NewGame)==(outcomeMessage: OUTCOME_MESSAGE & playerPosition = 100 | playerPosition,lastDiceValue,visitedSquares,numberOfMoves,numberOfTurns,numberOfSnakesGoneDown,numberOfLaddersGoneUp,outcomeMessage:=0,0,<>,0,0,0,0,NEW_GAME_HAS_STARTED);
  Expanded_List_Substitution(Machine(GameBoard),VisitedSquares)==(btrue | visitedSquareOrder:=visitedSquares);
  Expanded_List_Substitution(Machine(GameBoard),GameStatistics_TotalLaddersWentUp)==(btrue | totalEncounteredLadders:=numberOfLaddersGoneUp);
  Expanded_List_Substitution(Machine(GameBoard),GameStatistics_TotalSnakesGoneDown)==(btrue | totalEncounteredSnakes:=numberOfSnakesGoneDown);
  Expanded_List_Substitution(Machine(GameBoard),GameStatistics_TotalTurns)==(btrue | totalTurns:=numberOfTurns);
  Expanded_List_Substitution(Machine(GameBoard),GameStatistics_TotalMoves)==(btrue | totalMoves:=numberOfMoves);
  Expanded_List_Substitution(Machine(GameBoard),GameStatistics_LastThrownDiceValue)==(btrue | currentDiceValue:=lastDiceValue);
  Expanded_List_Substitution(Machine(GameBoard),GameStatistics_CurrentPosition)==(btrue | currentPosition:=playerPosition);
  Expanded_List_Substitution(Machine(GameBoard),Move)==(outcomeMessage: OUTCOME_MESSAGE & not(playerPosition = 100) & diceValue: NAT1 & diceValue: 1..6 | numberOfTurns,lastDiceValue:=numberOfTurns+1,diceValue || (playerPosition+diceValue>100 ==> outcomeMessage:=THREW_TOO_HIGH_A_DICE_VALUE_TO_FINISH [] not(playerPosition+diceValue>100) ==> (playerPosition+diceValue: dom(Ladders) ==> playerPosition,numberOfMoves,numberOfLaddersGoneUp,visitedSquares,outcomeMessage:=Ladders(playerPosition+diceValue),numberOfMoves+2,numberOfLaddersGoneUp+1,visitedSquares<-playerPosition+diceValue<-Ladders(playerPosition+diceValue),WENT_UP_A_LADDER [] not(playerPosition+diceValue: dom(Ladders)) ==> (playerPosition+diceValue: dom(Snakes) ==> playerPosition,numberOfMoves,numberOfSnakesGoneDown,visitedSquares,outcomeMessage:=Snakes(playerPosition+diceValue),numberOfMoves+2,numberOfSnakesGoneDown+1,visitedSquares<-playerPosition+diceValue<-Snakes(playerPosition+diceValue),WENT_DOWN_A_SNAKE [] not(playerPosition+diceValue: dom(Snakes)) ==> (playerPosition,numberOfMoves,visitedSquares:=playerPosition+diceValue,numberOfMoves+1,visitedSquares<-playerPosition+diceValue || (playerPosition+diceValue = 100 ==> outcomeMessage:=FINISHED_AND_WON [] not(playerPosition+diceValue = 100) ==> outcomeMessage:=LANDED_ON_A_NORMAL_SQUARE))))));
  List_Substitution(Machine(GameBoard),Move)==(numberOfTurns:=numberOfTurns+1 || lastDiceValue:=diceValue || IF playerPosition+diceValue>100 THEN outcomeMessage:=THREW_TOO_HIGH_A_DICE_VALUE_TO_FINISH ELSE IF playerPosition+diceValue: dom(Ladders) THEN playerPosition:=Ladders(playerPosition+diceValue) || numberOfMoves:=numberOfMoves+2 || numberOfLaddersGoneUp:=numberOfLaddersGoneUp+1 || visitedSquares:=visitedSquares<-playerPosition+diceValue<-Ladders(playerPosition+diceValue) || outcomeMessage:=WENT_UP_A_LADDER ELSE IF playerPosition+diceValue: dom(Snakes) THEN playerPosition:=Snakes(playerPosition+diceValue) || numberOfMoves:=numberOfMoves+2 || numberOfSnakesGoneDown:=numberOfSnakesGoneDown+1 || visitedSquares:=visitedSquares<-playerPosition+diceValue<-Snakes(playerPosition+diceValue) || outcomeMessage:=WENT_DOWN_A_SNAKE ELSE playerPosition:=playerPosition+diceValue || numberOfMoves:=numberOfMoves+1 || visitedSquares:=visitedSquares<-playerPosition+diceValue || IF playerPosition+diceValue = 100 THEN outcomeMessage:=FINISHED_AND_WON ELSE outcomeMessage:=LANDED_ON_A_NORMAL_SQUARE END END END END);
  List_Substitution(Machine(GameBoard),GameStatistics_CurrentPosition)==(currentPosition:=playerPosition);
  List_Substitution(Machine(GameBoard),GameStatistics_LastThrownDiceValue)==(currentDiceValue:=lastDiceValue);
  List_Substitution(Machine(GameBoard),GameStatistics_TotalMoves)==(totalMoves:=numberOfMoves);
  List_Substitution(Machine(GameBoard),GameStatistics_TotalTurns)==(totalTurns:=numberOfTurns);
  List_Substitution(Machine(GameBoard),GameStatistics_TotalSnakesGoneDown)==(totalEncounteredSnakes:=numberOfSnakesGoneDown);
  List_Substitution(Machine(GameBoard),GameStatistics_TotalLaddersWentUp)==(totalEncounteredLadders:=numberOfLaddersGoneUp);
  List_Substitution(Machine(GameBoard),VisitedSquares)==(visitedSquareOrder:=visitedSquares);
  List_Substitution(Machine(GameBoard),NewGame)==(playerPosition:=0 || lastDiceValue:=0 || visitedSquares:=<> || numberOfMoves:=0 || numberOfTurns:=0 || numberOfSnakesGoneDown:=0 || numberOfLaddersGoneUp:=0 || outcomeMessage:=NEW_GAME_HAS_STARTED)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(GameBoard))==(BoardArea,Snakes,Ladders);
  Inherited_List_Constants(Machine(GameBoard))==(?);
  List_Constants(Machine(GameBoard))==(BoardArea,Snakes,Ladders)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(GameBoard),OUTCOME_MESSAGE)==({WENT_DOWN_A_SNAKE,WENT_UP_A_LADDER,THREW_TOO_HIGH_A_DICE_VALUE_TO_FINISH,FINISHED_AND_WON,LANDED_ON_A_NORMAL_SQUARE,NEW_GAME_HAS_STARTED});
  Context_List_Enumerated(Machine(GameBoard))==(?);
  Context_List_Defered(Machine(GameBoard))==(?);
  Context_List_Sets(Machine(GameBoard))==(?);
  List_Valuable_Sets(Machine(GameBoard))==(?);
  Inherited_List_Enumerated(Machine(GameBoard))==(?);
  Inherited_List_Defered(Machine(GameBoard))==(?);
  Inherited_List_Sets(Machine(GameBoard))==(?);
  List_Enumerated(Machine(GameBoard))==(OUTCOME_MESSAGE);
  List_Defered(Machine(GameBoard))==(?);
  List_Sets(Machine(GameBoard))==(OUTCOME_MESSAGE)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(GameBoard))==(?);
  Expanded_List_HiddenConstants(Machine(GameBoard))==(?);
  List_HiddenConstants(Machine(GameBoard))==(?);
  External_List_HiddenConstants(Machine(GameBoard))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(GameBoard))==(btrue);
  Context_List_Properties(Machine(GameBoard))==(btrue);
  Inherited_List_Properties(Machine(GameBoard))==(btrue);
  List_Properties(Machine(GameBoard))==(BoardArea <: NATURAL1 & Snakes <: NATURAL1*NATURAL1 & Ladders <: NATURAL1*NATURAL1 & BoardArea = 1..100 & Snakes = {16|->13,31|->4,47|->25,63|->60,66|->52,97|->75} & Ladders = {3|->39,10|->12,27|->53,56|->84,61|->99,72|->90} & OUTCOME_MESSAGE: FIN(INTEGER) & not(OUTCOME_MESSAGE = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(GameBoard),Move)==(?);
  List_ANY_Var(Machine(GameBoard),GameStatistics_CurrentPosition)==(?);
  List_ANY_Var(Machine(GameBoard),GameStatistics_LastThrownDiceValue)==(?);
  List_ANY_Var(Machine(GameBoard),GameStatistics_TotalMoves)==(?);
  List_ANY_Var(Machine(GameBoard),GameStatistics_TotalTurns)==(?);
  List_ANY_Var(Machine(GameBoard),GameStatistics_TotalSnakesGoneDown)==(?);
  List_ANY_Var(Machine(GameBoard),GameStatistics_TotalLaddersWentUp)==(?);
  List_ANY_Var(Machine(GameBoard),VisitedSquares)==(?);
  List_ANY_Var(Machine(GameBoard),NewGame)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(GameBoard)) == (BoardArea,Snakes,Ladders,OUTCOME_MESSAGE,WENT_DOWN_A_SNAKE,WENT_UP_A_LADDER,THREW_TOO_HIGH_A_DICE_VALUE_TO_FINISH,FINISHED_AND_WON,LANDED_ON_A_NORMAL_SQUARE,NEW_GAME_HAS_STARTED | ? | visitedSquares,numberOfLaddersGoneUp,numberOfSnakesGoneDown,numberOfTurns,numberOfMoves,lastDiceValue,playerPosition | ? | Move,GameStatistics_CurrentPosition,GameStatistics_LastThrownDiceValue,GameStatistics_TotalMoves,GameStatistics_TotalTurns,GameStatistics_TotalSnakesGoneDown,GameStatistics_TotalLaddersWentUp,VisitedSquares,NewGame | ? | ? | ? | GameBoard);
  List_Of_HiddenCst_Ids(Machine(GameBoard)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(GameBoard)) == (BoardArea,Snakes,Ladders);
  List_Of_VisibleVar_Ids(Machine(GameBoard)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(GameBoard)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(GameBoard)) == (Type(OUTCOME_MESSAGE) == Cst(SetOf(etype(OUTCOME_MESSAGE,0,5))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(GameBoard)) == (Type(WENT_DOWN_A_SNAKE) == Cst(etype(OUTCOME_MESSAGE,0,5));Type(WENT_UP_A_LADDER) == Cst(etype(OUTCOME_MESSAGE,0,5));Type(THREW_TOO_HIGH_A_DICE_VALUE_TO_FINISH) == Cst(etype(OUTCOME_MESSAGE,0,5));Type(FINISHED_AND_WON) == Cst(etype(OUTCOME_MESSAGE,0,5));Type(LANDED_ON_A_NORMAL_SQUARE) == Cst(etype(OUTCOME_MESSAGE,0,5));Type(NEW_GAME_HAS_STARTED) == Cst(etype(OUTCOME_MESSAGE,0,5));Type(BoardArea) == Cst(SetOf(btype(INTEGER,"[BoardArea","]BoardArea")));Type(Snakes) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(Ladders) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(GameBoard)) == (Type(visitedSquares) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(numberOfLaddersGoneUp) == Mvl(btype(INTEGER,?,?));Type(numberOfSnakesGoneDown) == Mvl(btype(INTEGER,?,?));Type(numberOfTurns) == Mvl(btype(INTEGER,?,?));Type(numberOfMoves) == Mvl(btype(INTEGER,?,?));Type(lastDiceValue) == Mvl(btype(INTEGER,?,?));Type(playerPosition) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(GameBoard)) == (Type(NewGame) == Cst(etype(OUTCOME_MESSAGE,?,?),No_type);Type(VisitedSquares) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)),No_type);Type(GameStatistics_TotalLaddersWentUp) == Cst(btype(INTEGER,?,?),No_type);Type(GameStatistics_TotalSnakesGoneDown) == Cst(btype(INTEGER,?,?),No_type);Type(GameStatistics_TotalTurns) == Cst(btype(INTEGER,?,?),No_type);Type(GameStatistics_TotalMoves) == Cst(btype(INTEGER,?,?),No_type);Type(GameStatistics_LastThrownDiceValue) == Cst(btype(INTEGER,?,?),No_type);Type(GameStatistics_CurrentPosition) == Cst(btype(INTEGER,?,?),No_type);Type(Move) == Cst(etype(OUTCOME_MESSAGE,?,?),btype(INTEGER,?,?)));
  Observers(Machine(GameBoard)) == (Type(VisitedSquares) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)),No_type);Type(GameStatistics_TotalLaddersWentUp) == Cst(btype(INTEGER,?,?),No_type);Type(GameStatistics_TotalSnakesGoneDown) == Cst(btype(INTEGER,?,?),No_type);Type(GameStatistics_TotalTurns) == Cst(btype(INTEGER,?,?),No_type);Type(GameStatistics_TotalMoves) == Cst(btype(INTEGER,?,?),No_type);Type(GameStatistics_LastThrownDiceValue) == Cst(btype(INTEGER,?,?),No_type);Type(GameStatistics_CurrentPosition) == Cst(btype(INTEGER,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
