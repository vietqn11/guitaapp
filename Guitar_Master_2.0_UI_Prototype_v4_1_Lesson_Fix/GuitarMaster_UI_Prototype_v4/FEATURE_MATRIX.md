# FEATURE MATRIX — HTML PROTOTYPE v1.0

| Khu vực | Có giao diện | Có tương tác trong prototype | Ghi chú |
|---|---|---|---|
| Home | Có | Có | Điều hướng, module, tiếp tục bài học |
| 6 module | Có | Có | 5 module học + 1 khu vực công cụ |
| Lộ trình 8 chặng | Có | Có | Dữ liệu stage_map từ game catalog |
| Bài học | Có | Có | Nội dung mục tiêu, mẹo, bước tập, lỗi thường gặp |
| Phòng thực hành | Có | Có | Timer, checklist tự xác nhận; không tự nghe đàn |
| 18 mini-game | Có | Có ở mức prototype | Dùng các game engine trong catalog; xem giới hạn từng game bên dưới |
| Tuner | Có | Có | Microphone + ước lượng pitch trong browser; chưa phải native tuner |
| Metronome | Có | Có | Web Audio click, BPM, time signature |
| Chord Library | Có | Có | SVG diagrams cho 12 hợp âm mẫu |
| Capo Helper | Có | Có | Tính chuyển hợp âm theo bán cung cho ký hiệu cơ bản |
| Practice Timer | Có | Có | Đếm thời gian luyện và mục tiêu |
| Song Practice | Có | Có | Vòng hợp âm bài tập tự biên soạn, không lời bài hát bản quyền |
| Guitar Tips | Có | Có | Danh sách mẹo và trang chi tiết |
| Progress/Profile | Có | Có | Lưu hoàn thành và game record trong localStorage; biểu đồ tuần/streak demo |

## Game engines

Các trò GM01–GM18 được nối vào Game Shell. Các trò ghi nhớ/chọn đáp án/sắp xếp chuỗi có tương tác chạm thực tế; GM09 đo độ lệch thao tác chạm theo click của prototype; GM07 yêu cầu người học tự xác nhận số lần tập. Các bài có audio dùng oscillator tone tổng hợp để kiểm tra luồng nghe, không phải file thu guitar. Không game nào tuyên bố đã nhận diện tiếng guitar thật.

## Native implementation notes

Khi chuyển sang Compose:
- Tách UI state khỏi prototype JS state.
- Chuyển localStorage progress sang nguồn dữ liệu hiện có của Android.
- Dùng asset local từ `android-res/drawable-nodpi/`.
- Tuner cần đánh giá plugin/native audio route và latency trên thiết bị thật.
- Metronome cần xử lý timing/audio thread thích hợp trong Android, không dùng timer UI làm clock chính.
- Game score chỉ ghi nhận loại bằng chứng thực sự có: đáp án, chuỗi chạm, số lượt xác nhận; không bịa audio accuracy.


| Đánh giá kỹ năng | Có UI | Có tương tác | Giới hạn |
|---|---|---|---|
| Performance Evaluation | Có (v1.3) | Có | Microphone meter chỉ kiểm tra tín hiệu; chưa chấm nốt/hợp âm/kỹ năng |
| Song section report | Có (demo) | Không chấm thật | Điểm từng đoạn là dữ liệu minh họa, ghi rõ Demo |
| Confidence / retry / remediation | Có mô tả blueprint | Chưa có engine | Phải triển khai và kiểm chứng ở Android |
