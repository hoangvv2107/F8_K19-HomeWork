export default function PhoneModal({ openPhoneModal, onClose, phoneAns }) {
  if (!openPhoneModal) return;

  return (
    <div className="fixed inset-0 bg-slate-950/80 backdrop-blur-custom z-50 flex items-center justify-center p-4">
      <div className="bg-slate-900 border border-sky-500/50 rounded-2xl p-6 max-w-md w-full text-center shadow-2xl">
        <div className="w-16 h-16 mx-auto mb-4 bg-sky-500/10 border border-sky-500/40 rounded-full flex items-center justify-center text-sky-400 text-2xl">
          <i className="fa-solid fa-phone-volume"></i>
        </div>
        <h3 className="text-xl font-bold text-sky-300 mb-2">
          Gọi điện thoại cho người thân
        </h3>
        <p className="text-xs text-slate-400 mb-4">
          Chuyên gia đang hỗ trợ bạn suy nghĩ...
        </p>

        <div className="bg-slate-950 p-4 rounded-xl border border-slate-800 text-left text-sm text-slate-200 mb-6">
          <p id="friend-dialogue" className="italic text-sky-200">
            {`Thực sự câu này hơi khó, nhưng mình nghiêng 80% về đáp án ${phoneAns}.`}
          </p>
        </div>

        <button
          onClick={onClose}
          className="cursor-pointer w-full py-2.5 bg-sky-600 hover:bg-sky-500 text-white rounded-xl font-bold text-sm transition"
        >
          Cảm ơn người thân!
        </button>
      </div>
    </div>
  );
}
