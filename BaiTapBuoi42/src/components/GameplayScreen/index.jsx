export default function GameScreen({
  isStartGame,
  currentLevel,
  questionData,
  onSelectAnswer,
  prizeLadder,
  selectedAnswer,
  isShowingResult,
  nextLevel,
  lifelines,
  hiddenAnswers,
  onFiftyFifty,
  isLocked,
  handleAudienceVotes,
  handlePhoneAdvice,
  useBackupQuestion,
  handleSwitchQuestion,
}) {
  if (!isStartGame) return;
  // Tính toán câu hỏi hiện tại dựa trên "công tắc"
  return (
    <div className="w-full max-w-6xl grid grid-cols-1 lg:grid-cols-4 gap-6 items-start">
      {/* CỘT TRÁI: Trợ giúp + Câu hỏi + 4 Đáp án */}
      <div className="lg:col-span-3 space-y-6">
        {/* 1. Thanh trợ giúp */}
        <div className="bg-slate-900/80 border border-slate-800 rounded-xl p-4 flex justify-around items-center gap-2 shadow-lg">
          <button
            disabled={lifelines.fiftyFifty || isLocked}
            onClick={onFiftyFifty}
            className={`lifeline-btn flex-1 py-3 rounded-lg font-bold  ${lifelines.fiftyFifty ? "opacity-50 line-through text-slate-500 cursor-not-allowed " : "text-amber-300 hover:bg-slate-800 cursor-pointer"}`}
          >
            50:50
          </button>
          <button
            onClick={handlePhoneAdvice}
            disabled={lifelines.phone || isLocked}
            className={`lifeline-btn flex-1 py-3 rounded-lg font-bold  ${lifelines.phone ? "opacity-50 line-through text-slate-500 cursor-not-allowed" : "text-sky-300 hover:bg-slate-800 cursor-pointer"}`}
          >
            Người thân
          </button>
          <button
            disabled={lifelines.audience || isLocked}
            onClick={handleAudienceVotes}
            className={`lifeline-btn flex-1 py-3 rounded-lg font-bold  ${lifelines.audience ? "opacity-50 line-through text-slate-500 cursor-not-allowed" : "text-emerald-300 hover:bg-slate-800 cursor-pointer"}`}
          >
            Khán giả
          </button>
          <button
            disabled={lifelines.switch || isLocked}
            onClick={handleSwitchQuestion}
            className={`lifeline-btn flex-1 py-3 rounded-lg font-bold  ${lifelines.switch ? "opacity-50 line-through text-slate-500 cursor-not-allowed" : "text-purple-300 hover:bg-slate-800 cursor-pointer"}`}
          >
            Đổi câu hỏi
          </button>
        </div>

        {/* 2. Hộp câu hỏi */}
        <div className="relative bg-gradient-to-b from-slate-900 to-indigo-950 border-2 border-indigo-500/60 rounded-2xl p-8 min-h-[160px] flex items-center justify-center text-center shadow-2xl">
          <div className="absolute -top-3 left-6 bg-indigo-600 text-slate-100 text-xs font-bold px-3 py-1 rounded-full uppercase">
            Câu hỏi số{" "}
            <span className="text-yellow-300">{currentLevel + 1}</span>
          </div>
          <p className="text-xl font-bold text-slate-100">
            {questionData ? questionData.question : "Đang tải câu hỏi..."}
          </p>
        </div>

        {/* 3. Lưới 4 đáp án */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          {questionData?.answers.map((answerText, index) => {
            const labels = ["A", "B", "C", "D"];
            let statusClass = "";
            if (!isShowingResult) {
              if (selectedAnswer === index) statusClass = "selected";
            } else {
              if (index === questionData.correct) {
                statusClass = "correct";
              } else if (index === selectedAnswer) statusClass = "wrong";
            }
            return (
              <button
                key={index}
                onClick={() => onSelectAnswer(index)}
                className={`option-btn p-4 rounded-xl text-left flex items-center gap-3 cursor-pointer ${statusClass} ${hiddenAnswers.includes(index) ? "invisible" : ""}`}
              >
                <span className="font-extrabold text-amber-400 w-8 h-8 rounded-lg bg-slate-900/80 border border-amber-500/30 flex items-center justify-center shrink-0">
                  {labels[index]}
                </span>
                <span className="font-semibold text-slate-200">
                  {answerText}
                </span>
              </button>
            );
          })}
        </div>
      </div>

      {/* CỘT PHẢI: Thang tiền thưởng */}
      <div className="bg-slate-900/90 border border-slate-800 rounded-2xl p-4 shadow-xl flex flex-col justify-between">
        <div className="flex items-center justify-between pb-3 mb-3 border-b border-slate-800">
          <span className="text-xs font-bold text-slate-400 uppercase">
            Thang tiền thưởng
          </span>
          <i className="fa-solid fa-ranking-star text-amber-400"></i>
        </div>

        <div className="space-y-1 text-sm font-bold max-h-[380px] lg:max-h-none overflow-y-auto custom-scrollbar pr-1">
          {[...prizeLadder].reverse().map((prizeValue, index) => {
            // 1. Tính toán index thực tế của câu hỏi (từ 0 đến 14) để so sánh với currentLevel
            const realIndex = 14 - index;
            const questionNumber = realIndex + 1;

            // 2. Các biến logic để xét trạng thái
            const isMilestone =
              realIndex === 4 || realIndex === 9 || realIndex === 14;
            const isCurrent = realIndex === currentLevel;
            const isPassed = realIndex < currentLevel;

            const itemClass = isCurrent
              ? "bg-gradient-to-r from-amber-500 to-yellow-500 text-slate-950 font-black border-amber-300 shadow-md scale-[1.02]"
              : isPassed
                ? "bg-slate-950/40 text-amber-500/60 border-slate-900"
                : isMilestone
                  ? "bg-slate-800/80 text-amber-300 border-amber-500/40 font-extrabold"
                  : "text-slate-400 border-transparent hover:bg-slate-800/40";

            return (
              <div
                key={realIndex} // Luôn nhớ thêm key khi dùng map để React không báo lỗi
                className={`flex justify-between items-center px-3 py-1.5 rounded-lg border transition-all duration-300 ${itemClass}`}
              >
                <span
                  className={`text-xs ${isCurrent ? "text-slate-950" : "text-slate-500"}`}
                >
                  Câu {questionNumber}
                </span>
                {/* Nếu là mốc và không phải câu hiện tại thì in đậm chữ */}
                <span
                  className={
                    isMilestone && !isCurrent ? "text-amber-300 font-black" : ""
                  }
                >
                  {prizeValue} đ
                </span>
              </div>
            );
          })}
        </div>
      </div>
    </div>
  );
}
