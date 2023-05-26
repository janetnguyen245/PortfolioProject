#1.Lập danh sách nhân viên vào làm việc tại công ty từ ngày 8/3/2021

SELECT *
FROM NHANVIEN
WHERE NgayVao >= '2021-03-08';


#2. Danh sách thông tin nhân viên kí hợp đồng chính thức sau ngày 01/03/2018
SELECT *
FROM NHANVIEN nv, HOPDONGLAODONG hd
WHERE nv.MaNV = hd.MaNV AND hd.TUNGAY > '2018-03-01';



#3. Ai là trưởng phòng của phòng Hành chính?
SELECT pb.TenPB, nv.HoTen
FROM NHANVIEN nv, PHONGBAN pb
WHERE nv.MaPB = pb.MaPB AND pb.TenPB = 'Hành chính'


#4. Tính tổng số nhân viên hiện nay của phòng Kế hoạch
SELECT pb.TenPB, COUNT(nv.MANV)
FROM NHANVIEN nv, PHONGBAN pb
WHERE nv.MaPB = pb.MaPB AND nv.ChucVu = 'Nhân Viên'
GROUP BY pb.TenPB
HAVING pb.TenPB = 'Phòng Kế Hoạch'


#5. Liệt kê danh sách nhân viên đã làm việc trên 4 năm
SELECT *
FROM NHANVIEN
WHERE YEAR(CURRENT_DATE) - YEAR(NgayVao) > 4


#6. Sửa thông tin ngày sinh của nhân viên có mã nhân viên là 31019  thành 15/3/1988
UPDATE NHANVIEN
SET NgaySinh = '1988-03-15'
WHERE MaNV = 31019