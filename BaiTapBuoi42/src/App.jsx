import { useEffect, useState } from "react";
import Header from "./components/Header";
import StartScreen from "./components/StartScreen/indexs";
import GameplayScreen from "./components/GameplayScreen";
import { QUESTION_DATABASE, BACKUP_QUESTIONS, PRIZE_LADDER } from "./database";
import EndScreen from "./components/EndScreen";
import WalkAway from "./components/WalkAway";
import PhoneModal from "./components/PhoneModal";
import AudienceModal from "./components/AudienceModal";
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
  const [openPhoneModal, setOpenPhoneModal] = useState(false);
  const [openAudienceModal, setOpenAudienceModal] = useState(false);
  const [lifelines, setLifelines] = useState({
    fiftyFifty: false, // false nghĩa là chưa dùng
    phone: false,
    audience: false,
    switch: false,
  });
  const [hiddenAnswers, setHiddenAnswers] = useState([]);
  const [audienceVotes, setAudienceVotes] = useState([0, 0, 0, 0]);
  const [phoneAns, setPhoneAns] = useState("");
  const [useBackupQuestion, setUseBackupQuestion] = useState(false);
  const [backupQuestion, setBackupQuestion] = useState(null);
  const currentQuestionData = useBackupQuestion
    ? backupQuestion
    : QUESTION_DATABASE[currentLevel];

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
    setLifelines({
      fiftyFifty: false,
      phone: false,
      audience: false,
      switch: false,
    });
    setHiddenAnswers([]);
    setAudienceVotes([0, 0, 0, 0]);
    setPhoneAns("");
    setUseBackupQuestion(false);
    setBackupQuestion(null);
  };

  useEffect(() => {
    if (
      !startGame ||
      isLocked ||
      isEnd ||
      isWalkAway ||
      openAudienceModal ||
      openPhoneModal
    )
      return;
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
  }, [
    startGame,
    isEnd,
    isLocked,
    isWalkAway,
    openAudienceModal,
    openPhoneModal,
  ]);

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

      const activeQuestion = useBackupQuestion
        ? backupQuestion
        : QUESTION_DATABASE[currentLevel];
      const isCorrect = index === activeQuestion.correct;
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
  const nextLevel = () => {
    if (currentLevel === 14) {
      setCurrentPrize(PRIZE_LADDER[currentLevel]);
      setIsEnd(true);
      setEndStatus("isWin");
      setHiddenAnswers([]);
      setUseBackupQuestion(false);
      setBackupQuestion(null);
      return;
    }
    setCurrentPrize(PRIZE_LADDER[currentLevel]);
    setCurrentLevel(currentLevel + 1);
    setSelectedAnswer(null);
    setIsLocked(false);
    setIsShowingResult(false);
    setTimeLeft(60);
    setHiddenAnswers([]);
    setUseBackupQuestion(false);
    setBackupQuestion(null);
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

  const onFiftyFifty = () => {
    setLifelines({ ...lifelines, fiftyFifty: true });
    const correctAnswer = currentQuestionData.correct;
    const wrongIndexes = [0, 1, 2, 3].filter(
      (index) => index !== correctAnswer,
    );
    const shuffledWrongIndexes = wrongIndexes.sort(() => Math.random() - 0.5);
    const twoHiddenIndexes = shuffledWrongIndexes.slice(0, 2);
    setHiddenAnswers(twoHiddenIndexes);
  };

  const generateAudienceVotes = (correctIndex) => {
    // 1. Cho đáp án đúng một tỉ lệ áp đảo (từ 50% đến 75%)
    const correctPercent = Math.floor(Math.random() * 26) + 50;
    let remaining = 100 - correctPercent;

    // 2. Chia số phần trăm còn lại cho 3 đáp án sai
    const votes = [0, 0, 0, 0];
    votes[correctIndex] = correctPercent;

    const wrongIndexes = [0, 1, 2, 3].filter((i) => i !== correctIndex);

    // Random cho 2 đáp án sai đầu tiên
    const wrong1 = Math.floor(Math.random() * (remaining - 5));
    votes[wrongIndexes[0]] = wrong1;
    remaining -= wrong1;

    const wrong2 = Math.floor(Math.random() * remaining);
    votes[wrongIndexes[1]] = wrong2;
    remaining -= wrong2;

    // Đáp án sai cuối cùng nhận phần còn lại
    votes[wrongIndexes[2]] = remaining;

    return votes; // Trả về mảng ví dụ: [65, 9, 17, 9]
  };
  const handleAudienceVotes = () => {
    setLifelines({ ...lifelines, audience: true });
    const newVotes = generateAudienceVotes(currentQuestionData.correct);
    setAudienceVotes(newVotes);
    setOpenAudienceModal(true);
  };

  const generatePhoneAdvice = (correctIndex) => {
    const labels = ["A", "B", "C", "D"];
    const isAccurate = Math.random() < 0.85; // 85% chọn đúng

    let chosenIndex = correctIndex;
    if (!isAccurate) {
      // 15% còn lại chọn ngẫu nhiên một đáp án bất kỳ
      chosenIndex = Math.floor(Math.random() * 4);
    }

    return labels[chosenIndex];
  };
  const handlePhoneAdvice = () => {
    setLifelines({ ...lifelines, phone: true });
    setPhoneAns(generatePhoneAdvice(currentQuestionData.correct));
    setOpenPhoneModal(true);
  };

  const handleSwitchQuestion = () => {
    setLifelines({ ...lifelines, switch: true });
    const randomIndex = Math.floor(Math.random() * BACKUP_QUESTIONS.length);
    setBackupQuestion(BACKUP_QUESTIONS[randomIndex]);
    setUseBackupQuestion(true);
    setHiddenAnswers([]);
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
          questionData={currentQuestionData}
          prizeLadder={PRIZE_LADDER}
          onSelectAnswer={handleSelectAnswer}
          selectedAnswer={selectedAnswer}
          isShowingResult={isShowingResult}
          nextLevel={nextLevel}
          lifelines={lifelines}
          hiddenAnswers={hiddenAnswers}
          onFiftyFifty={onFiftyFifty}
          isLocked={isLocked}
          handleAudienceVotes={handleAudienceVotes}
          handlePhoneAdvice={handlePhoneAdvice}
          useBackupQuestion={useBackupQuestion}
          handleSwitchQuestion={handleSwitchQuestion}
        />

        <PhoneModal
          openPhoneModal={openPhoneModal}
          onClose={() => setOpenPhoneModal(false)}
          phoneAns={phoneAns}
        />

        <AudienceModal
          openAudienceModal={openAudienceModal}
          votes={audienceVotes}
          onClose={() => setOpenAudienceModal(false)}
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
          prizeMoney={currentPrize}
          currentLevel={currentLevel}
        />
      </main>
    </div>
  );
}

export default App;
