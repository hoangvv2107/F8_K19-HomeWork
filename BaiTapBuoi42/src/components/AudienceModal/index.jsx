export default function AudienceModal({ openAudienceModal, votes, onClose }) {
  if (!openAudienceModal) return;

  const labels = ["A", "B", "C", "D"];
  return (
    <div className="fixed inset-0 bg-slate-950/80 backdrop-blur-sm z-50 flex items-center justify-center p-4">
      <div className="bg-slate-900 border border-emerald-500/50 rounded-2xl p-6 max-w-md w-full text-center shadow-2xl">
        <div className="w-16 h-16 mx-auto mb-4 bg-emerald-500/10 border border-emerald-500/40 rounded-full flex items-center justify-center text-emerald-400 text-2xl">
          <i className="fa-solid fa-chart-simple"></i>
        </div>
        <h3 className="text-xl font-bold text-emerald-300 mb-4">
          Ý kiến khán giả trường quay
        </h3>

        {/* 4 Cột Biểu đồ ngang */}
        <div className="space-y-4 mb-6 text-left">
          {votes.map((percent, index) => (
            <div key={index}>
              <div className="flex justify-between text-xs font-bold text-slate-300 mb-1">
                <span>{labels[index]}</span>
                <span>{percent}%</span>
              </div>
              {/* Thanh nền tối */}
              <div className="w-full bg-slate-800 h-3 rounded-full overflow-hidden">
                {/* Thanh phần trăm màu vàng */}
                <div
                  className="bg-amber-400 h-full rounded-full transition-all duration-700 ease-out"
                  style={{ width: `${percent}%` }}
                ></div>
              </div>
            </div>
          ))}
        </div>

        <button
          onClick={onClose}
          className="cursor-pointer w-full py-2.5 bg-emerald-600 hover:bg-emerald-500 text-white rounded-xl font-bold text-sm transition"
        >
          Tiếp tục cuộc chơi
        </button>
      </div>
    </div>
  );
}
