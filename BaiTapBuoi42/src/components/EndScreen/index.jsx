export default function EndScreen({
  prizeMoney,
  onRestart,
  isEnd,
  status,
  currentLevel,
}) {
  if (!isEnd) return;
  const statusMap = {
    isLose: {
      icon: (
        <div className="w-20 h-20 mx-auto mb-4 rounded-full bg-red-500/20 border-2 border-red-500 flex items-center justify-center text-4xl text-red-500 shadow-xl">
          <i className="fa-solid fa-xmark"></i>
        </div>
      ),
      title: "KẾT THÚC CUỘC CHƠI",
      desc: "Rất tiếc! Đáp án của bạn chưa chính xác.",
    },
    isWin: {
      icon: (
        <div className="w-20 h-20 mx-auto mb-4 rounded-full flex items-center justify-center text-4xl shadow-xl bg-amber-500/20 text-amber-400 border border-amber-500/50">
          <i className="fa-solid fa-crown"></i>
        </div>
      ),
      title: "XUẤT SẮC! BẠN LÀ TRIỆU PHÚ!",
      desc: "Chúc mừng bạn đã chinh phục thành công tất cả 15 câu hỏi!",
    },
    isTimeOut: {
      icon: (
        <div
          id="result-icon-box"
          className="w-20 h-20 mx-auto mb-4 rounded-full flex items-center justify-center text-4xl shadow-xl bg-rose-500/20 text-rose-400 border border-rose-500/50"
        >
          <i className="fa-solid fa-circle-xmark"></i>
        </div>
      ),
      title: "KẾT THÚC CUỘC CHƠI",
      desc: "Đã hết thời gian suy nghĩ cho câu hỏi này!",
    },
    isStopGame: {
      icon: (
        <div
          id="result-icon-box"
          className="w-20 h-20 mx-auto mb-4 rounded-full flex items-center justify-center text-4xl shadow-xl bg-sky-500/20 text-sky-400 border border-sky-500/50"
        >
          <i className="fa-solid fa-sack-dollar"></i>
        </div>
      ),
      title: "DỪNG CUỘC CHƠI",
      desc: `Bạn đã quyết định dừng cuộc chơi tại Câu số  ${currentLevel + 1}.`,
    },
  };
  const currentStatus = statusMap[status];
  return (
    <div className="fixed inset-0 bg-slate-950/90 backdrop-blur-sm z-50 flex items-center justify-center p-4">
      <div className="bg-slate-900 border-2 border-amber-500/80 rounded-2xl p-6 sm:p-8 max-w-lg w-full text-center shadow-2xl relative overflow-hidden">
        {currentStatus.icon}

        <h2 className="text-2xl sm:text-3xl font-black text-amber-300 mb-2">
          {currentStatus.title}
        </h2>
        <p className="text-slate-300 text-sm sm:text-base mb-6">
          {currentStatus.desc}
        </p>

        <div className="bg-slate-950 border border-slate-800 rounded-xl p-4 mb-6">
          <div className="text-xs text-slate-400 uppercase tracking-widest mb-1">
            Số tiền thưởng của bạn
          </div>
          {/* Hiển thị số tiền lấy từ Prop */}
          <div className="text-2xl sm:text-3xl font-black text-amber-400">
            {prizeMoney} VNĐ
          </div>
        </div>

        {/* Nút bấm gọi hàm từ Prop */}
        <button
          onClick={onRestart}
          className="w-full py-3.5 bg-gradient-to-r from-amber-500 via-yellow-500 to-amber-600 text-slate-950 font-extrabold text-base rounded-xl shadow-lg hover:scale-105 transition duration-200 cursor-pointer"
        >
          THỬ SỨC LẠI <i className="fa-solid fa-rotate-right ml-2"></i>
        </button>
      </div>
    </div>
  );
}
