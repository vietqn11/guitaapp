# GUITAR MASTER 2.0 — UI PROTOTYPE v1.4 – CONTENT V4

Đây là prototype HTML/CSS/JavaScript để Product Owner xem, bấm thử và duyệt trải nghiệm trước khi chuyển thiết kế sang Android Kotlin + Jetpack Compose.

## Cách chạy

1. Giải nén toàn bộ ZIP vào một thư mục.
2. Mở `index.html` bằng Chrome/Edge để xem giao diện cơ bản.
3. Khuyến nghị chạy bằng local server để microphone hoạt động:
   - Mở terminal tại thư mục này.
   - Chạy `python -m http.server 8000`
   - Mở `http://localhost:8000`
4. Dùng thanh điều hướng dưới cùng: Trang chủ / Học tập / Công cụ / Tiến độ.

Không cần cài thư viện, không cần Internet và không tải ảnh từ URL ngoài.

## Nội dung prototype

- Home và 6 module chính (Công cụ là module tiện ích, không phải khóa học).
- 5 module học tập, mỗi module học chính có 45 bài cốt lõi, chia 3 cấp Foundation / Development / Mastery; UI giữ nguyên, dữ liệu nội dung đã mở rộng.
- Bài học được lấy từ Product Content Catalog V4: 225 bài cốt lõi cho 5 module học chính; mỗi bài có mục tiêu, hướng dẫn, bước thực hành, lỗi thường gặp, thử thách, tiêu chí thành công và bài bổ trợ.
- Mini-game catalog 18 trò chơi; có luồng chơi thử cho các cơ chế ghi nhớ, chọn đáp án, săn nốt, ghép/xây hợp âm, chuyển hợp âm, xếp tiết tấu, gõ nhịp, nhớ chuỗi ngón, P-I-M-A, nghe nốt, phân biệt trưởng/thứ, nghe vòng hợp âm và xếp cấu trúc bài.
- Công cụ: Tuner thử microphone, Metronome Web Audio, thư viện hợp âm, Capo Helper, Practice Timer.
- Thư viện mẹo guitar và phòng luyện vòng hợp âm mẫu.
- Tiến độ bài học và điểm mini-game lưu trong `localStorage` của trình duyệt.

## Giới hạn cần hiểu đúng

1. Đây là UI prototype, không phải bản Android hoàn chỉnh.
2. Chưa có nhận diện tiếng đàn hoặc tự chấm hợp âm/chuyển hợp âm. Các bài thực hành chơi đàn có xác nhận thủ công.
3. Tuner dùng microphone + thuật toán ước lượng tần số cơ bản trong trình duyệt; kết quả chỉ để thử giao diện, cần kiểm tra kỹ trong ứng dụng Android.
4. Metronome phát click bằng Web Audio API.
5. Âm thanh mẫu trong game cảm âm được tạo bằng oscillator để thử flow; chưa phải mẫu thu guitar chất lượng cao.
6. Biểu đồ tuần, streak và một số thành tích trên Profile là dữ liệu demo; không coi là dữ liệu người dùng thật.
7. Ảnh WebP trong gói là ảnh concept minh họa có sẵn từ Asset Pack trước đó. Không dùng ảnh này làm sơ đồ kỹ thuật hoặc vị trí bấm hợp âm chính xác. Sơ đồ hợp âm được render bằng SVG trong code.
8. Không sử dụng lời bài hát có bản quyền; các màn bài hát hiện là vòng hợp âm/bài tập mẫu.

## Cấu trúc thư mục

- `index.html`: điểm vào prototype.
- `assets/css/styles.css`: design system và responsive UI.
- `assets/js/app.js`: điều hướng và tương tác prototype.
- `assets/js/catalog-data.js`: dữ liệu nội dung và mini-game gắn sẵn để mở offline.
- `data/`: file JSON/CSV gốc để AI Studio đọc và tái sử dụng.
- `assets/images/`: ảnh WebP local cho prototype.
- `android-res/drawable-nodpi/`: bản sao ảnh để tham khảo khi chuyển sang Android.
- `docs/`: PDF roadmap, content blueprint và game design spec.

## Thiết kế

- Nền charcoal #0F0F13.
- Card #1A1A20.
- Amber #F59E0B, Orange #E67E22.
- Module có tint riêng nhưng giữ cùng dark UI.
- Phone-first, có thể xem trên desktop.

## Không làm

- Không nhúng prototype vào Android bằng WebView.
- Không chuyển dự án Android sang Capacitor.
- Không coi các nút prototype là tính năng native đã hoàn thiện.

## Interactive Game Lab (bổ sung)
Mở `interactive-game-lab.html` để chơi thử 5 mini-game thao tác trực quan:
- Xếp 6 dây đàn (kéo thả/chạm)
- Săn nốt trên cần đàn (chạm vị trí)
- Đặt ngón hợp âm (chạm fretboard và kiểm tra)
- Xếp điệu đệm (chọn ký hiệu vào chuỗi)
- Phản xạ ngón (bấm pad theo tín hiệu)

Đây là prototype HTML chạy local, có điểm và phản hồi. Chưa phải tính năng Android, không nhận diện âm thanh đàn thật.


## V1.2 — Smart Practice & Music Game Modes
- Home có thẻ Smart Practice 5 phút, định hướng buổi tập ngắn đổi hoạt động.
- Màn hình game có 3 chế độ: Dễ / Thường / Thử thách; số lượt thay đổi theo chế độ.
- Giao diện được tinh chỉnh theo cảm hứng âm nhạc: nền charcoal/navy, amber-orange, điểm nhấn violet/cyan.
- Lưu ý: CTA Smart Practice trong prototype hiện mở bài học tiếp theo làm điểm bắt đầu; chuỗi tự động luân phiên micro-lesson → game → tập đàn là yêu cầu bàn giao để AI Studio triển khai hoàn chỉnh.


## V1.3 — Performance Evaluation Blueprint UX
- Bổ sung màn hình Đánh giá kỹ năng.
- Có bước bật microphone và meter kiểm tra mức tín hiệu âm thanh đầu vào.
- Có ví dụ Exercise Definition, báo cáo theo từng đoạn và bốn trạng thái năng lực.
- **Quan trọng:** microphone meter chỉ kiểm tra mức tín hiệu; prototype chưa nhận diện nốt/hợp âm và chưa chấm kỹ năng guitar. Điểm đoạn nhạc được đánh dấu Demo, không phải số đo thực.
- Quy tắc chính thức: microphone điện thoại là đầu vào mặc định; chưa đạt vẫn được học tiếp, kỹ năng yếu được lưu và giao bài bổ trợ.
- Chi tiết: `docs/PERFORMANCE_EVALUATION_BLUEPRINT_v1.0.md`.


## V1.4.1 – Content Expansion V4.1
- Giữ nguyên giao diện V1.3 theo yêu cầu Product Owner.
- Mở rộng 5 module học chính từ 12 lên 45 bài/module (225 bài).
- Tổ chức 15 Foundation + 15 Development + 15 Mastery cho từng module.
- Phân loại Core Lesson / Skill Drill / Song Project.
- Bổ sung remediation và tiêu chí đánh giá trung thực theo khả năng đo.
- Chi tiết nội dung: `docs/CONTENT_EXPANSION_V4.md`; dữ liệu chuẩn: `data/product-content.json`; runtime: `data/catalog-data.js`; chỉ mục: `data/lesson-index.csv`.
- Không thay đổi layout, màu sắc hoặc navigation.


## V1.4.1 – Content Expansion V4.1
- Giữ nguyên giao diện V1.3 theo yêu cầu Product Owner.
- Mở rộng 5 module học chính từ 12 lên 45 bài/module (225 bài).
- Tổ chức 15 Foundation + 15 Development + 15 Mastery cho từng module.
- Phân loại Core Lesson / Skill Drill / Song Project.
- Bổ sung remediation và tiêu chí đánh giá trung thực theo khả năng đo.
- Chi tiết nội dung: `docs/CONTENT_EXPANSION_V4.md`; dữ liệu chuẩn: `data/product-content.json`; runtime: `data/catalog-data.js`; chỉ mục: `data/lesson-index.csv`.
- Không thay đổi layout, màu sắc hoặc navigation.


## V4.1 – Lesson visibility hotfix
- Sửa lỗi runtime còn dùng mapping 12 bài cũ khiến phần lớn 225 bài không xuất hiện trong 8 chặng.
- Phân phối toàn bộ 45 bài/module vào 8 chặng hiện có (mỗi chặng 5–6 bài).
- Danh sách Học nhanh hiển thị toàn bộ 45 bài.
- Loại bỏ ID trùng và bổ sung bài thay thế để mỗi module có 45 ID duy nhất.
