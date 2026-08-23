import { useEffect, useState } from "react";
import Header from "./components/Header";
import StartScreen from "./components/StartScreen/indexs";
import GameplayScreen from "./components/GameplayScreen";
import { QUESTION_DATABASE, BACKUP_QUESTIONS, PRIZE_LADDER } from "./database";
import EndScreen from "./components/EndScreen";
import WalkAway from "./components/WalkAway";
function App() {
  const [currentLevel, setCurrentLevel] = useState(0);
  const [currentPrize, setCurrentPrize] = useState(0);
  const [startGame, setStartGame] = useState(false);
  const [selectedAnswer, setSelectedAnswer] = useState(null);
  const [isLocked, setIsLocked] = useState(false);
  const [isShowingResult, setIsShowingResult] = useState(false);
  const [isWalkAway, setIsWalkAway] = useState(false);
  const [isEnd, setIsEnd] = useState(false);
  const [endStatus, setEndStatus] = useState("");
  const [timeLeft, setTimeLeft] = useState(60);

  const onStartGame = () => {
    setStartGame(true);
  };

  const onRestartGame = () => {
    setCurrentLevel(0);
    setCurrentPrize(0);
    setStartGame(false);
    setSelectedAnswer(null);
    setIsLocked(false);
    setIsShowingResult(false);
    setIsWalkAway(false);
    setIsEnd(false);
    setEndStatus("");
    setTimeLeft(60);
  };

  useEffect(() => {
    if (!startGame || isLocked || isEnd || isWalkAway) return;
    const timer = setInterval(() => {
      setTimeLeft((prev) => {
        if (prev <= 0) {
          clearInterval(timer);
          return 0;
        }

        return prev - 1;
      });
    }, 1000);

    return () => {
      clearInterval(timer);
    };
  }, [startGame, isEnd, isLocked]);

  useEffect(() => {
    if (timeLeft === 0 && !isEnd) {
      setIsEnd(true);
      setEndStatus("isTimeOut");
      if (currentLevel > 9) setCurrentPrize(PRIZE_LADDER[9]);
      else if (currentLevel > 4) setCurrentPrize(PRIZE_LADDER[4]);
      else setCurrentPrize(0);
    }
  }, [timeLeft, isEnd, currentLevel]);

  const handleSelectAnswer = (index) => {
    if (isLocked) return;
    setIsLocked(true);
    setSelectedAnswer(index);

    setTimeout(() => {
      setIsShowingResult(true);

      const isCorrect = index === QUESTION_DATABASE[currentLevel].correct;
      console.log();

      setTimeout(() => {
        if (isCorrect) {
          nextLevel();
        } else {
          loseGame();
        }
      }, 2000);
    }, 2000);
  };
  const handleStopGame = () => {};
  const nextLevel = () => {
    if (currentLevel === 14) {
      setCurrentPrize(PRIZE_LADDER[currentLevel]);
      setIsEnd(true);
      setEndStatus("isWin");
      return;
    }
    setCurrentPrize(PRIZE_LADDER[currentLevel]);
    setCurrentLevel(currentLevel + 1);
    setSelectedAnswer(null);
    setIsLocked(false);
    setIsShowingResult(false);
    setTimeLeft(60);
  };
  const loseGame = () => {
    setIsEnd(true);
    setEndStatus("isLose");

    if (currentLevel > 9) setCurrentPrize(PRIZE_LADDER[9]);
    else if (currentLevel > 4) setCurrentPrize(PRIZE_LADDER[4]);
    else setCurrentPrize(0);
  };
  const showWalkAway = () => {
    setIsWalkAway(true);
  };
  const onCancel = () => {
    setIsWalkAway(false);
  };
  const onConfirm = () => {
    setIsWalkAway(false);
    setIsEnd(true);
    setEndStatus("isStopGame");
  };
  return (
    <div className="min-h-screen flex flex-col justify-between overflow-x-hidden">
      <Header
        isStartGame={startGame}
        timeLeft={timeLeft}
        showWalkAway={showWalkAway}
      />

      <main className="w-full flex-grow flex items-center justify-center p-2 sm:p-4 md:p-6 relative">
        <StartScreen isStartScreen={startGame} onStartGame={onStartGame} />

        <GameplayScreen
          isStartGame={startGame}
          currentLevel={currentLevel}
          questionData={QUESTION_DATABASE[currentLevel]}
          prizeLadder={PRIZE_LADDER}
          onSelectAnswer={handleSelectAnswer}
          selectedAnswer={selectedAnswer}
          isShowingResult={isShowingResult}
          nextLevel={nextLevel}
        />

        <WalkAway
          currentPrize={currentPrize}
          isWalkAway={isWalkAway}
          onCancel={onCancel}
          onConfirm={onConfirm}
        />

        <EndScreen
          isEnd={isEnd}
          status={endStatus}
          onRestart={onRestartGame}
          prizeMoney={currentPrize + " VNĐ"}
          currentLevel={currentLevel}
        />
      </main>
    </div>
  );
}

export default App;
