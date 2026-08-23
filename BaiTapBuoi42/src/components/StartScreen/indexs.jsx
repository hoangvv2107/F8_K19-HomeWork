export default function StartScreen({ onStartGame, isStartScreen }) {
  if (isStartScreen) return;
  return (
    <div className="max-w-2xl w-full bg-slate-900/90 border border-indigo-500/30 rounded-2xl p-6 sm:p-10 text-center shadow-2xl relative overflow-hidden my-auto">
      {/* Mẫu: Đã sửa class thành className */}
      <div className="absolute -top-24 -left-24 w-48 h-48 bg-blue-600/20 rounded-full blur-3xl pointer-events-none"></div>
      <div className="absolute -bottom-24 -right-24 w-48 h-48 bg-amber-500/20 rounded-full blur-3xl pointer-events-none"></div>

      <div className="w-28 h-28 mx-auto mb-6 rounded-full bg-gradient-to-tr from-amber-600 via-yellow-400 to-amber-200 p-1 shadow-2xl shadow-amber-500/20">
        <div className="w-full h-full bg-slate-950 rounded-full flex items-center justify-center border-2 border-slate-900">
          <i className="fa-solid fa-award text-5xl text-amber-400"></i>
        </div>
      </div>

      <h2 className="text-3xl sm:text-4xl font-black text-amber-300 mb-3 tracking-wide">
        AI LÀ TRIỆU PHÚ
      </h2>
      <p className="text-slate-300 text-sm sm:text-base mb-8 max-w-lg mx-auto leading-relaxed">
        Hãy chuẩn bị tinh thần bước vào ghế nóng, vượt qua 15 câu hỏi kiến thức
        phong phú và giành lấy tiền thưởng <b>150.000.000 VNĐ</b>!
      </p>

      <div className="bg-slate-950/60 rounded-xl p-4 mb-8 text-left border border-slate-800 text-xs sm:text-sm text-slate-300 space-y-2">
        <div className="flex items-center gap-2 text-amber-400 font-semibold mb-1">
          <i className="fa-solid fa-circle-info"></i> Quy tắc trò chơi:
        </div>
        <p>• Trả lời 15 câu hỏi trắc nghiệm từ dễ đến khó.</p>
        <p>
          • Hai cột mốc an toàn quan trọng: <b>Câu 5 (2.000.000đ)</b> &{" "}
          <b>Câu 10 (22.000.000đ)</b>.
        </p>
        <p>
          • Bạn có <b>4 quyền trợ giúp</b> hỗ trợ trong suốt quá trình chơi.
        </p>
        <p>
          • Bạn có thể bấm <b>"Dừng cuộc chơi"</b> bất cứ lúc nào để bảo toàn số
          tiền thưởng hiện tại.
        </p>
      </div>

      {/* Mẫu: Đã sửa onclick thành onClick và nhận prop onStartGame */}
      <button
        onClick={onStartGame}
        className="w-full sm:w-auto px-10 py-4 bg-gradient-to-r from-amber-500 via-yellow-500 to-amber-600 hover:from-amber-400 hover:to-yellow-500 text-slate-950 font-black text-lg rounded-xl shadow-lg shadow-amber-500/30 transform hover:scale-105 transition-all duration-200"
        style={{ cursor: "pointer" }}
      >
        BẮT ĐẦU VÀO GHẾ NÓNG <i className="fa-solid fa-play ml-2"></i>
      </button>
    </div>
  );
}
