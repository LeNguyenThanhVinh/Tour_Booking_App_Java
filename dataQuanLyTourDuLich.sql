USE [QuanLyTourDuLichPhanTan]
GO
/****** Object:  Table [dbo].[DiaDanhs]    Script Date: 11/29/2021 10:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDanhs](
	[maDiaDanh] [varchar](255) NOT NULL,
	[moTa] [nvarchar](max) NULL,
	[tenDiaDanh] [nvarchar](255) NOT NULL,
	[tinhThanh] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maDiaDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HuongDanViens]    Script Date: 11/29/2021 10:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HuongDanViens](
	[maHuongDanVien] [varchar](255) NOT NULL,
	[cmnd] [varchar](255) NOT NULL,
	[diaChi] [nvarchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[ngayVaoLam] [datetime2](7) NOT NULL,
	[soDT] [varchar](255) NOT NULL,
	[tenHuongDanVien] [nvarchar](255) NOT NULL,
	[tinhTrang] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHuongDanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHangs]    Script Date: 11/29/2021 10:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHangs](
	[maKH] [varchar](255) NOT NULL,
	[cmnd] [varchar](255) NOT NULL,
	[diaChi] [nvarchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[soDT] [varchar](255) NOT NULL,
	[tenKH] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTours]    Script Date: 11/29/2021 10:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTours](
	[maLoaiTour] [varchar](255) NOT NULL,
	[tenLoaiTour] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoaiTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanViens]    Script Date: 11/29/2021 10:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanViens](
	[maNV] [varchar](255) NOT NULL,
	[cmnd] [varchar](255) NOT NULL,
	[diaChi] [nvarchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[ngayVaoLam] [datetime2](7) NOT NULL,
	[soDT] [varchar](255) NOT NULL,
	[tenNV] [nvarchar](255) NOT NULL,
	[tinhTrang] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoans]    Script Date: 11/29/2021 10:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoans](
	[maNV] [varchar](255) NOT NULL,
	[matKhau] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tours]    Script Date: 11/29/2021 10:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tours](
	[maTour] [varchar](255) NOT NULL,
	[giaTour] [float] NOT NULL,
	[hinhAnh] [nvarchar](255) NULL,
	[moTa] [nvarchar](max) NOT NULL,
	[ngayKetThuc] [date] NOT NULL,
	[ngayKhoiHanh] [date] NOT NULL,
	[soLuongNguoi] [int] NOT NULL,
	[tenTour] [nvarchar](255) NOT NULL,
	[tinhTrang] [bit] NOT NULL,
	[maDiaDanh] [varchar](255) NULL,
	[maHuongDanVien] [varchar](255) NULL,
	[maLoaiTour] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ves]    Script Date: 11/29/2021 10:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ves](
	[maVe] [varchar](255) NOT NULL,
	[ngayDatVe] [date] NOT NULL,
	[maKH] [varchar](255) NULL,
	[maNV] [varchar](255) NULL,
	[maTour] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0001', N'Vịnh Hạ Long là một vịnh nhỏ thuộc phần bờ tây vịnh Bắc Bộ tại khu vực biển Đông Bắc Việt Nam, bao gồm vùng biển đảo của thành phố Hạ Long thuộc tỉnh Quảng Ninh.', N'Vịnh Hạ Long', N'Quảng Ninh')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0002', N'Nha Trang là một thành phố ven biển và là trung tâm chính trị, kinh tế, văn hóa, khoa học kỹ thuật và du lịch của tỉnh Khánh Hòa, Việt Nam.', N'Nha Trang ', N'Khánh Hòa')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0003', N'Mũi Né là một địa danh, tên một mũi biển ở thành phố Phan Thiết, tỉnh Bình Thuận, Việt Nam. Đây là một trung tâm du lịch nổi tiếng của tỉnh Bình Thuận và là một trong số các khu du lịch quốc gia của Việt Nam.', N'Mũi Né - Phan Thiết', N'Bình Thuận')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0004', N'Phú Quốc là hòn đảo lớn nhất Việt Nam, nằm trong vịnh Thái Lan. Đảo Phú Quốc cùng với các đảo nhỏ hơn ở lân cận và quần đảo Thổ Chu nằm cách đó 55 hải lý về phía tây nam hợp thành thành phố Phú Quốc thuộc tỉnh Kiên Giang. Đây cũng là thành phố đảo đầu tiên của Việt Nam.', N'Đảo Phú Quốc', N'Kiên Giang')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0005', N'Bà Nà là khu du lich toạ lạc 1 khu vực thuộc về dãy núi Trường Sơn nằm ở xã Hòa Ninh, huyện Hòa Vang, cách Đà Nẵng 25 km về phía Tây Nam. Trung tâm du lịch của Bà Nà nằm trên đỉnh Núi Chúa có độ cao 1489 m so với mực nước biển.', N'Bà Nà Hill', N'Đà Nẵng')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0006', N'Bãi biển Sầm Sơn là một trong những bãi biển đẹp nhất Việt Nam và luôn là bãi biển đông khách nhất miền Bắc, Việt Nam. Bãi biển thuộc thành phố Sầm Sơn, tỉnh Thanh Hóa.', N'Sầm Sơn', N'Thanh Hóa')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0007', N'Mũi Kê Gà còn được gọi là mũi Khe Gà, là một mũi đất ở xã Tân Thành, huyện Hàm Thuận Nam, tỉnh Bình Thuận, Việt Nam. Mũi đất này nhô ra Biển Đông, cách thành phố Phan Thiết khoảng 40 km về phía tây nam', N'Mũi Kê Gà – Thuận Quý', N'Bình Thuận')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0008', N'Coco Beach Camp là khu cắm trại cao cấp của LaGi vùng biển Cam Bình, Bình Thuận. Với đặc điểm không có những dãy nhà sừng sững như trong các khách sạn, resort khác mà thay vào đó là những dãy lều đủ màu sắc vô cùng cuốn hút', N'Coco Beach Camp', N'Bình Thuận')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0009', N'Sa Pa là một điểm du lịch cách trung tâm thành phố Lào Cai khoảng hơn 30 km. Nằm ở độ cao trung bình 1500 – 1800 m so với mặt nước biển, Thị Trấn Sapa luôn chìm trong làn mây bồng bềnh, tạo nên một bức tranh huyền ảo đẹp đến kỳ lạ. Nơi đây, có thứ tài nguyên vô giá đó là khí hậu quanh năm trong lành mát mẻ, với nhiệt độ trung bình 15-18°C.', N'Sapa', N'Lào Cai')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0010', N'Đèo Mã Pí Lèng dài khoảng 20km vượt đỉnh Mã Pí Lèng, một đỉnh núi có độ cao khoảng 1.200m thuộc Cao nguyên Đồng Văn. Đây là vùng địa hình nằm trên vùng cao núi đá, đặc trưng cho địa hình cacxtơ, độ cao trung bình từ 1.000 – 1.600m và gồm nhiều khu vực núi đá vôi nằm sát với chí tuyến bắc có độ dốc khá lớn, thung lũng và sông suối bị chia cắt nhiều', N'Đèo Mã Pí Lèng', N'Hà Giang')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0011', N'Vườn quốc gia Phong Nha Kẻ Bàng nằm ở phía Bắc dãy núi Trường Sơn, thuộc địa tỉnh Quảng Bình được UNESCO công nhận là Di sản thiên nhiên thế giới theo tiêu chí địa chất, địa mạo năm 2003, và được UNESCO công nhận lần 2 là Di sản thiên nhiên thế giới với tiêu chí đa dạng sinh học, sinh thái vào ngày 3 tháng 7 năm 2015, là một điểm đến phong phú trong các chương trình tour du lịch Quảng Bình.', N'Phong Nha - Kẻ Bàng', N'Quảng Bình')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0012', N'Khu du lịch Tam Đảo có khí hậu ở đây rất độc đáo, bốn mùa trong ngày, khung cảnh thơ mộng vì thế từ lâu nơi đây là điểm du lịch lý tưởng cho các kỳ nghỉ ngắn ngày. Với thiên nhiên trong lành, kết hợp với khí hậu se lạnh khiến Tam Đảo rất thuận lợi để phát triển các loại hình du lịch nghỉ dưỡng, du lịch sinh thái, đây là điểm đến được du khách từ Hà Nội yêu thích cho kỳ nghỉ ngắn ngày.', N'Tam Đảo', N'Vĩnh Phúc')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0013', N'Phan Xi Păng, Fansipan, hay Phan Si Păng là ngọn núi cao nhất Việt Nam, cũng là cao nhất trong ba nước Đông Dương nên được mệnh danh là "Nóc nhà Đông Dương" thuộc dãy núi Hoàng Liên Sơn, cách trung tâm thị xã Sa Pa khoảng 9 km về phía tây nam, nằm giáp hai tỉnh Lào Cai và Lai Châu thuộc vùng Tây bắc Việt Nam', N'Đỉnh Phanxipang', N'Lào Cai')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0014', N'Hang Sơn Đoòng nằm trong vùng lõi của Vườn Quốc gia Phong Nha – Kẻ Bàng, tỉnh Quảng Bình – là một hang động mới được Hiệp hội nghiên cứu hang động Hoàng gia Anh khám phá. Hang Sơn Đoòng được công bố là hang động lớn nhất thế giới trong năm 2009 – 2010 và được đưa vào khai thác theo hình thức du lịch khám phá mạo hiểm từ năm 2013.', N'Hang động Sơn Đoòng
', N'Quảng Bình')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0015', N' Đảo Lý Sơn được gọi là Cù lao Ré, theo cách lý giải của dân gian là “cù lao có nhiều cây Ré”. Hòn đảo là vết tích còn lại của một núi lửa với 5 miệng, được hình thành cách đây khoảng 25-30 triệu năm. 5 ngọn núi là nguồn giữ các mạch nước ngầm chính cung cấp nguồn nước cho toàn bộ người dân trên đảo.', N'Đảo Lý Sơn', N'Quảng Ngãi')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0016', N'Hang Rái nằm ở phía nam vịnh Vĩnh Hy, thuộc thôn Thái An, xã Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, cách thành phố Phan Rang 35km, mang một vẻ đẹp độc đáo như cái tên của mình nơi đây được ví như một "thiên đường" hiếm có với cảnh quan thiên nhiên hùng vĩ và đẹp tuyệt vời.', N'Hang Rái', N'Ninh Thuận')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0017', N'Đà Lạt là thủ phủ của tỉnh Lâm Đồng. Với độ cao 1.500 m trên mặt nước biển, Đà Lạt tiết trời mát lạnh và là nơi nghỉ dưỡng lý tưởng ở khu vực miền Nam. ', N'Khu du lịch Đà Lạt', N'Lâm Đồng')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0018', N'Khu du lịch Thủy Châu cách trung tâm Sài Gòn 25km, khu du lịch Thủy Châu sở hữu không gian xanh lý tưởng, với thác hồ rộng hàng ngàn mét vuông. Tổ chức nhiều hoạt động tham quan, giải trí hấp dẫn, đây là địa điểm du lịch dã ngoại gần Sài Gòn đã và đang thu hút đông đảo du khách. ', N'Khu du lịch Thủy Châu', N'Bình Dương')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0019', N'Khu du lịch Đại Nam là một khu du lịch tọa lạc tại phường Hiệp An, thành phố Thủ Dầu Một, tỉnh Bình Dương, Việt Nam, cách Ủy ban nhân dân thành phố vào khoảng 7km về hướng thị xã Bến Cát. Đây là công trình du lịch thuộc loại quy mô với tổng kinh phí khoảng 6.000 tỷ đồng', N'Khu du lịch Đại Nam', N'Bình Dương')
INSERT [dbo].[DiaDanhs] ([maDiaDanh], [moTa], [tenDiaDanh], [tinhThanh]) VALUES (N'DD0020', N'Núi Bà Đen là một ngọn núi nằm trong quần thể di tích văn hóa lịch sử núi Bà Đen, được biết đến bởi phong cảnh hữu tình và nhiều huyền thoại tại Tây Ninh. Theo Gia Định thành thông chí, tên gốc của núi Bà Đen là Bà Dinh. Những bậc kỳ lão địa phương thì cho rằng tên gốc là núi Một. Đến khoảng nửa thế kỷ XVIII mới xuất hiện tên gọi núi Bà Đênh, sau gọi trại dần thành núi Bà Đen. Cũng có người gọi là núi Điện Bà.', N'Núi Bà Đen', N'Tây Ninh')
GO
INSERT [dbo].[HuongDanViens] ([maHuongDanVien], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenHuongDanVien], [tinhTrang]) VALUES (N'HDV001', N'261612390', N'123 Lê Quang Định', N'sontung@gmail.com', 1, CAST(N'2018-05-01T00:00:00.0000000' AS DateTime2), N'0123456891', N'Nguyễn Sơn Tùng', 1)
INSERT [dbo].[HuongDanViens] ([maHuongDanVien], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenHuongDanVien], [tinhTrang]) VALUES (N'HDV002', N'261612391', N'234 Lê Thị Riêng', N'phuongtuan@gmail.com', 1, CAST(N'2018-10-12T00:00:00.0000000' AS DateTime2), N'0123456892', N'Trịnh Phương Tuấn', 1)
INSERT [dbo].[HuongDanViens] ([maHuongDanVien], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenHuongDanVien], [tinhTrang]) VALUES (N'HDV003', N'261612392', N'115 Võ Văn Ngân', N'baobinh@gmail.com', 0, CAST(N'2018-07-11T00:00:00.0000000' AS DateTime2), N'0123456893', N'Lê Bảo Bình', 1)
INSERT [dbo].[HuongDanViens] ([maHuongDanVien], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenHuongDanVien], [tinhTrang]) VALUES (N'HDV004', N'261612393', N'167 Tô Vĩnh Diện', N'huongly@gmail.com', 0, CAST(N'2017-05-13T00:00:00.0000000' AS DateTime2), N'0123456894', N'Nguyễn Hương Ly', 1)
INSERT [dbo].[HuongDanViens] ([maHuongDanVien], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenHuongDanVien], [tinhTrang]) VALUES (N'HDV005', N'261612394', N'159 Trường Thọ', N'camtho@gmail.com', 0, CAST(N'2018-09-10T00:00:00.0000000' AS DateTime2), N'0123456895', N'Kiều Cẩm Thơ', 1)
INSERT [dbo].[HuongDanViens] ([maHuongDanVien], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenHuongDanVien], [tinhTrang]) VALUES (N'HDV006', N'261612395', N'338 Kha Vạn Cân', N'hamy@gmail.com', 0, CAST(N'2018-02-14T00:00:00.0000000' AS DateTime2), N'0123456896', N'Nguyễn Hà My', 1)
INSERT [dbo].[HuongDanViens] ([maHuongDanVien], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenHuongDanVien], [tinhTrang]) VALUES (N'HDV007', N'261612396', N'265 Lê Quý Đôn', N'thuychi@gmai.com', 0, CAST(N'2016-10-11T00:00:00.0000000' AS DateTime2), N'0123456897', N'Nguyễn Thùy Chi', 1)
INSERT [dbo].[HuongDanViens] ([maHuongDanVien], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenHuongDanVien], [tinhTrang]) VALUES (N'HDV008', N'261612397', N'178 Tam Châu', N'taismile@gmail.com', 1, CAST(N'2018-04-19T00:00:00.0000000' AS DateTime2), N'0123456898', N'Lưu Minh Tài', 1)
INSERT [dbo].[HuongDanViens] ([maHuongDanVien], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenHuongDanVien], [tinhTrang]) VALUES (N'HDV009', N'261612398', N'156 Hoàng Diệu', N'quanghieu@gmail.com', 1, CAST(N'2017-11-08T00:00:00.0000000' AS DateTime2), N'0123456899', N'Hồ Quang Hiếu', 1)
INSERT [dbo].[HuongDanViens] ([maHuongDanVien], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenHuongDanVien], [tinhTrang]) VALUES (N'HDV010', N'261612399', N'120 Nguyễn Công Trứ', N'baoanh@gmail.com', 0, CAST(N'2017-10-05T00:00:00.0000000' AS DateTime2), N'0123456890', N'Nguyễn Hoài Bảo Anh', 1)
INSERT [dbo].[HuongDanViens] ([maHuongDanVien], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenHuongDanVien], [tinhTrang]) VALUES (N'HDV011', N'261612388', N'113 Hà Huy Giáp', N'traxanh@gmail.com', 0, CAST(N'2020-05-15T00:00:00.0000000' AS DateTime2), N'0123456888', N'Lê Quang Hải Tú', 1)
GO
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0001', N'271711100', N'111 Trần Não', N'vannam@gmail.com', 1, N'0568255700', N'Trần Văn Nam')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0002', N'271711101', N'123 Trần Hưng Đạo', N'trandan@gmail.com', 1, N'0568255701', N'Trần Dần')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0003', N'271711102', N'234 Lê Duẩn', N'vanluan@gmail.com', 1, N'0568255702', N'Lê Văn Luân')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0004', N'271711103', N'333 Điện Biên phủ', N'hongnhung@gmail.com', 0, N'0568255703', N'Nguyễn Hồng Nhung')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0005', N'271711104', N'287 Thăng Long', N'thuvan@gmail.com', 0, N'0568255704', N'Nguyễn Thị Thu Vân')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0006', N'271711105', N'230 Tô Ngọc Vân', N'thuhieu@gmail.com', 0, N'0568255705', N'Nguyễn Thị Thu Hiếu')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0007', N'271711106', N'127 Quang Trung', N'thedat@gmail.com', 1, N'0568255706', N'Nguyễn Thế Đạt')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0008', N'271711107', N'90 Phạm Ngũ Lão', N'ngocduy@gmail.com', 1, N'0568255707', N'Phan Lê Ngọc Duy')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0009', N'271711108', N'134 Hiệp Bình', N'phuongngan@gmail.com', 0, N'0568255708', N'Nguyễn Phương Ngân')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0010', N'271711109', N'99 Lê Lợi', N'ngocbich@gmail.com', 0, N'0568255709', N'Nguyễn Ngọc Bích')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0011', N'271711110', N'57 Lê Thị Hồng', N'nhatluan@gmail.com', 1, N'0568255710', N'Nguyễn Nhật Luân')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0012', N'271711111', N'89 Lê Đức Thọ', N'thanhduy@gmail.com', 1, N'0568255711', N'Trần Thanh Duy')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0013', N'271711112', N'120 Lê Lai', N'quockhanh@gmail.com', 1, N'0568255712', N'Huỳnh Quốc Khánh')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0014', N'271711113', N'218 Huỳnh Khương An', N'nhuquynh@gmai.com', 0, N'0568255713', N'Nguyễn Thị Như Quỳnh')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0015', N'271711114', N'125 Cống Quỳnh', N'ngocduy@gmail.com', 0, N'0568255714', N'Trương Ngọc Duy')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0016', N'271711115', N'98 Quốc Lộ 13', N'thanhtien@gmail.com', 1, N'0568255715', N'Nguyễn Thành Tiến')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0017', N'271711116', N'225 Cộng Hòa', N'kieukhanh@gmail.com', 0, N'0568255716', N'Nguyễn Kiều Khanh')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0018', N'271711117', N'137 Hồng Hà', N'quanglong@gmail.com', 1, N'0568255717', N'Ngô Quang Long')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0019', N'271711118', N'26 Đồng Đen', N'dikhang@gmail.com', 1, N'0568255718', N'Lê Dĩ Khang')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0020', N'271711119', N'15 Phan Huy Ích', N'minhman@gmail.com', 1, N'0568255719', N'Nguyễn Minh Mẫn')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0021', N'271711120', N'277 Mai Chí Thọ', N'minhnhua@gmail.com', 1, N'0568255720', N'Nguyễn Minh Nhựa')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0022', N'271711121', N'158 Lê Văn Thọ', N'thanhtam@gmail.com', 0, N'0568255721', N'Nguyễn Thị Thanh Tâm')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0023', N'271711122', N'19 Nguyễn Hữu Thọ', N'ngocthuy@gmail.com', 0, N'0568255722', N'Nguyễn Thị Ngọc Thúy')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0024', N'271711123', N'112 Trường Chinh', N'thanhphuong@gmail.com', 1, N'0568255723', N'Nguyễn Thanh Phương')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0025', N'271711124', N'298 Âu Cơ', N'vanha@gmail.com', 1, N'0568255724', N'Nguyễn Văn Hà')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0026', N'271711125', N'265 Lạc Long Quân', N'vanduc@gmail.com', 1, N'0568255725', N'Nguyễn Văn Đức')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0027', N'271711126', N'128 Hoàng Văn Thụ', N'dieunhi@gmail.com', 0, N'0568255726', N'Nguyễn Diệu Nhi')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0028', N'271711127', N'256 Lê Văn Tám', N'anhtus@gmail.com', 1, N'0568255727', N'Đinh Anh Tú')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0029', N'271711128', N'145 Lương Định Của', N'hoanghau@gmail.com', 0, N'0568255728', N'Nguyễn Hoàng Hậu')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0030', N'271711129', N'119 Nguyễn Khắc Khoan', N'bichngoc@gmail.com', 0, N'0568255729', N'Lê Thị Bích Ngọc')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0031', N'271711130', N'123 Hai Bà Trưng', N'myxuan@gmail.com', 0, N'0568255730', N'Châu Nguyễn My Xuân')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0032', N'271711131', N'11 Hoàng Sa', N'thuythien@gmail.com', 0, N'0568255731', N'Huỳnh Thị Thùy Thiên')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0033', N'271711132', N'190 Nguyễn Phúc Nguyên', N'truongsung@gmail.com', 1, N'0568255732', N'Đỗ Trường Sung')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0034', N'271711133', N'77 Nguyễn Sơn Hà', N'quockhanh@gmail.com', 1, N'0568255733', N'Huỳnh Quốc Khánh')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0035', N'271711134', N'17 Nguyễn Thiện Thuật', N'minhduc@gmail.com', 1, N'0568255734', N'Nguyễn Minh Đức')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0036', N'271711135', N'33 Nguyễn Thông', N'vanan@gmail.com', 1, N'0568255735', N'Nguyễn Văn An')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0037', N'271711136', N'112 Nguyễn Tri Phương', N'vannam@gmail.com', 1, N'0568255736', N'Đỗ Văn Nam')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0038', N'271711137', N'113 Nguyễn Văn Mai', N'duyan@gmail.com', 1, N'0568255737', N'Nguyễn Duy An')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0039', N'271711138', N'12 Nguyễn Văn Trỗi', N'duyhoai@gmail.com', 1, N'0568255738', N'Nguyễn Duy Hoài')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0040', N'271711139', N'55 Phạm Đình Toái', N'khanhtrung@gmail.com', 1, N'0568255739', N'Trần Khánh Trung')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0041', N'271711140', N'37 Phạm Ngọc Thạch', N'longtruong@gmail.com', 1, N'0568255740', N'Đinh Long Trường')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0042', N'271711141', N'12 Nam Kỳ Khởi Nghĩa', N'vanhao@gmail.com', 1, N'0568255741', N'Trần Văn Hào')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0043', N'271711142', N'99 Võ Văn Tần', N'vanphuong@gmail.com', 1, N'0568255742', N'Nguyễn Văn Phương')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0044', N'271711143', N'54 Rạch Bùng Binh', N'thanhnam@gmail.com', 1, N'0568255743', N'Bùi Thành Nam')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0045', N'271711144', N'19 Sư Thiện Chiếu', N'duyanh@gmail.com', 1, N'0568255744', N'Đào Duy Anh')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0046', N'271711145', N'199 Trần Cao Vân', N'vanbao@gmail.com', 1, N'0568255745', N'Nguyễn Văn Bảo')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0047', N'271711146', N'32 Trần Quang Diệu', N'chibao@gmail.com', 0, N'0568255746', N'Ngô Chi Bảo')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0048', N'271711147', N'70 Trần Quốc Thảo', N'hongvan@gmail.com', 0, N'0568255747', N'Nguyễn Thị Hồng Vân')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0049', N'271711148', N'36 Trần Quốc Toản', N'lequyen@gmail.com', 0, N'0568255748', N'Lê Thị Lệ Quyên')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0050', N'271711149', N'22 Trần Văn Đang', N'daobich@gmail.com', 0, N'0568255749', N'Đào Thị Bích')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0051', N'271711150', N'15 Hoàng Diệu', N'gialong@gmail.com', 1, N'0568255750', N'Ngô Gia Long')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0052', N'271711151', N'17 Lê Quốc Hưng', N'baloc@gmail.com', 1, N'0568255751', N'Đào Bá Lộc')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0053', N'271711152', N'22 Lê Thạch', N'dinhninh@gmail.com', 1, N'0568255752', N'Nguyễn Đình Ninh')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0054', N'271711153', N'111 Lê Văn Linh', N'ngocy@gmail.com', 0, N'0568255753', N'Nguyễn Thị Ngọc Ý')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0055', N'271711154', N'19 Ngô Văn Sở', N'ngocnhu@gmail.com', 0, N'0568255754', N'Nguyễn Ngọc Như')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0056', N'271711155', N'123 Nguyễn Hữu Hào', N'ngocthu@gmail.com', 0, N'0568255755', N'Nguyễn Ngọc Thư')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0057', N'271711156', N'277 Nguyễn Khoái', N'myquynh@gmail.com', 0, N'0568255756', N'Châu Mỹ Quỳnh')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0058', N'271711157', N'197 Nguyễn Tất Thành', N'phuongbich@gmail.com', 0, N'0568255757', N'Nguyễn Phương Bích')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0059', N'271711158', N'99 Nguyễn Thần Hiến', N'chauluan@gmail.com', 1, N'0568255758', N'Trần Châu Luân')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0060', N'271711159', N'98 Nguyễn Trường Tộ', N'thanhtai@gmail.com', 1, N'0568255759', N'Đỗ Thành Tài')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0061', N'271711160', N'126 Trần Tướng Công', N'vanhoang@gmail.com', 1, N'0568255760', N'Mai Văn Hoàng')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0062', N'271711161', N'199 Tân Hàng', N'tuyettrang@gmail.com', 0, N'0568255761', N'Nguyễn Thị Tuyết Trang')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0063', N'271711162', N'177 Nguyễn Thị Nhỏ', N'honghan@gmail.com', 0, N'0568255762', N'Nguyễn Hồng Hân')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0064', N'271711163', N'199 Hàm Tử', N'hongha@gmail.com', 0, N'0568255763', N'Nguyễn Hồng Hạ')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0065', N'271711164', N'36 Trần Tuấn Khải', N'vanthanh@gmail.com', 1, N'0568255764', N'Châu Văn Thanh')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0066', N'271711165', N'19 Tăng Bạt Hổ', N'chaubui@gmail.com', 0, N'0568255765', N'Châu Bùi')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0067', N'271711166', N'20 Nguyễn Thi', N'vanlu@gmail.com', 1, N'0568255766', N'Nguyễn Văn Lữ')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0068', N'271711167', N'66 Nguyễn Thi', N'trieuvan@gmail.com', 1, N'0568255767', N'Nguyễn Triệu Vân')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0069', N'271711168', N'78 Hải Thượng Lãn Ông', N'tandat@gmail.com', 1, N'0568255768', N'Nguyễn Tấn Đạt')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0070', N'271711169', N'79 Trần Phú', N'hoainam@gmail.com', 1, N'0568255769', N'Nguyễn Hoài Nam')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0071', N'271711170', N'155 Tản Đà', N'hoaiphuong@gmail.com', 1, N'0568255770', N'Nguyễn Hoài Phương')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0072', N'271711171', N'95 Nguyễn Kim', N'huuthai@gmail.com', 1, N'0568255771', N'Trần Hữu Thái')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0073', N'271711172', N'70 Hà Tôn Quyền', N'tanvu@gmail.com', 1, N'0568255772', N'Võ Tấn Vũ')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0074', N'271711173', N'53 Trần Nhân Tôn', N'tantai@gmail.com', 1, N'0568255773', N'Võ Tấn Tài')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0075', N'271711174', N'222 Tạ Uyên', N'nhatminh@gmail.com', 1, N'0568255774', N'Nguyễn Nhật Minh')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0076', N'271711175', N'154 Nguyễn Duy Dương', N'nhatvuong@gmail.com', 1, N'0568255775', N'Nguyễn Nhật Vượng')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0077', N'271711176', N'146 Gò Công', N'thiphuong@gmail.com', 0, N'0568255776', N'Đào Thị Phương')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0078', N'271711177', N'92 Trần Hưng Đạo', N'huyentrinh@gmail.com', 0, N'0568255777', N'Nguyễn Đào Huyền Trinh')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0079', N'271711178', N'64 Sư Vạn Hạnh', N'huyentram@gmail.com', 0, N'0568255778', N'Nguyễn Đào Huyền Trâm')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0080', N'271711179', N'97 Nguyễn Chí Thanh', N'phuongyen@gmail.com', 0, N'0568255779', N'Hoàng Phương Yên')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0081', N'271711180', N'117 Gia Phú', N'thuphuong@gmail.com', 0, N'0568255780', N'Nguyễn Thị Thu Phượng')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0082', N'271711181', N'126 Trần Hòa', N'hoangnhat@gmail.com', 1, N'0568255781', N'Nguyễn Hoàng Nhật')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0083', N'271711182', N'69 Phước Hưng', N'tuankhang@gmail.com', 1, N'0568255782', N'Lê Tuấn Khang')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0084', N'271711183', N'72 Nguyễn Biểu', N'thanhhoai@gmail.com', 1, N'0568255783', N'Nguyễn Thanh Hoài')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0085', N'271711184', N'187 Đỗ Văn Sửu', N'nhathung@gmail.com', 1, N'0568255784', N'Nguyễn Trần Nhật Hưng')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0086', N'271711185', N'198 Trần Điện', N'nhatvinh@gmail.com', 1, N'0568255785', N'Đoàn Nhất Vinh')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0087', N'271711186', N'177 Phùng Hưng', N'vannam@gmail.com', 1, N'0568255786', N'Đoàn Văn Nam')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0088', N'271711187', N'169 Nguyễn Án', N'kimhoan@gmail.com', 0, N'0568255787', N'Lê Thị Kim Hoàn')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0089', N'271711188', N'13 Đỗ Ngọc Thạch', N'bichtram@gmail.com', 0, N'0568255788', N'Lê Thị Bích Trâm')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0090', N'271711189', N'164 Trần Chánh Chiếu', N'thenam@gmail.com', 1, N'0568255789', N'Nguyễn Thế Nam')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0091', N'271711190', N'154 Phù Đổng Thiên Vương', N'minhman@gmail.com', 1, N'0568255790', N'Văn Minh Mẫn')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0092', N'271711191', N'132 Nguyễn An Khương', N'thanhdat@gmail.com', 1, N'0568255791', N'Nguyễn Thành Đạt')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0093', N'271711192', N'75 Đăng Thái Thân', N'thitram@gmail.com', 0, N'0568255792', N'Nguyễn Thị Trâm')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0094', N'271711193', N'69 Trần Văn Kiểu', N'vanluan@gmail.com', 1, N'0568255793', N'Cao Văn Luân')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0095', N'271711194', N'96 Phú Hữu', N'thanhtai@gmail.com', 1, N'0568255794', N'Cao Thành Tài')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0096', N'271711195', N'88 Ngô Quyền', N'tantoi@gmail.com', 1, N'0568255795', N'Trần Tấn Tới')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0097', N'271711196', N'77 Đào Tấn', N'thiloi@gmail.com', 0, N'0568255796', N'Đỗ Thị Lợi')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0098', N'271711197', N'55 Tăng Bạt Hổ', N'vanba@gmail.com', 1, N'0568255797', N'Nguyễn Văn Ba')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0099', N'271711198', N'155 Phú Giáo', N'vanluan@gmail.com', 1, N'0568255798', N'Nguyễn Văn Luân')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0100', N'271711199', N'79 Ngô Nhân Tịnh', N'vanhoi@gmail.com', 1, N'0568255799', N'Cao Văn Hội')
GO
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0101', N'9517536548', N'keke', N'54f', 1, N'0235689741', N'kaka')
INSERT [dbo].[KhachHangs] ([maKH], [cmnd], [diaChi], [email], [gioiTinh], [soDT], [tenKH]) VALUES (N'KH0102', N'9638527415', N'BD', N'123D', 1, N'0359806602', N'DUC TEST')
GO
INSERT [dbo].[LoaiTours] ([maLoaiTour], [tenLoaiTour]) VALUES (N'AT', N'Ẩm thực')
INSERT [dbo].[LoaiTours] ([maLoaiTour], [tenLoaiTour]) VALUES (N'ND', N'Nghỉ dưỡng')
INSERT [dbo].[LoaiTours] ([maLoaiTour], [tenLoaiTour]) VALUES (N'TQ', N'Tham quan')
INSERT [dbo].[LoaiTours] ([maLoaiTour], [tenLoaiTour]) VALUES (N'VH', N'Văn hóa')
GO
INSERT [dbo].[NhanViens] ([maNV], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenNV], [tinhTrang]) VALUES (N'NV0001', N'261611101', N'123 Phạm Văn Đồng', N'huutho@gmail.com', 1, CAST(N'2016-10-12T00:00:00.0000000' AS DateTime2), N'0568255701', N'Trần Hữu Thọ', 1)
INSERT [dbo].[NhanViens] ([maNV], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenNV], [tinhTrang]) VALUES (N'NV0002', N'261611102', N'123 Phan Văn Trị', N'huuthai@gmail.com', 1, CAST(N'2016-12-06T00:00:00.0000000' AS DateTime2), N'0568255702', N'Lê Võ Hửu Thái', 1)
INSERT [dbo].[NhanViens] ([maNV], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenNV], [tinhTrang]) VALUES (N'NV0003', N'261611103', N'456 Phạm Văn Chiêu', N'thanhnam@gmail.com', 1, CAST(N'2016-10-05T00:00:00.0000000' AS DateTime2), N'0568255703', N'Bùi Thành Nam', 1)
INSERT [dbo].[NhanViens] ([maNV], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenNV], [tinhTrang]) VALUES (N'NV0004', N'261611104', N'135 Phạm Thế Hiển', N'thanhvinh@gmail.com', 1, CAST(N'2016-07-10T00:00:00.0000000' AS DateTime2), N'0568255704', N'Lê Nguyễn Thành Vinh', 1)
INSERT [dbo].[NhanViens] ([maNV], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenNV], [tinhTrang]) VALUES (N'NV0005', N'261611105', N'234 Quang Trung', N'nhathuy@gmail.com', 1, CAST(N'2016-08-01T00:00:00.0000000' AS DateTime2), N'0568255705', N'Lê Nhật Huy', 1)
INSERT [dbo].[NhanViens] ([maNV], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenNV], [tinhTrang]) VALUES (N'NV0006', N'261611106', N'111 Dương Quảng Hàm', N'thanhloc@gmail.com', 1, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), N'0568255706', N'Trương Thành Lộc ', 1)
INSERT [dbo].[NhanViens] ([maNV], [cmnd], [diaChi], [email], [gioiTinh], [ngayVaoLam], [soDT], [tenNV], [tinhTrang]) VALUES (N'NV0007', N'261611107', N'122 Lê Thị Riêng', N'vandat@gmail.comm', 1, CAST(N'2021-05-10T00:00:00.0000000' AS DateTime2), N'0568255707', N'Lê Văn Đạt', 1)
GO
INSERT [dbo].[TaiKhoans] ([maNV], [matKhau]) VALUES (N'NV0001', N'123456')
INSERT [dbo].[TaiKhoans] ([maNV], [matKhau]) VALUES (N'NV0002', N'123456')
INSERT [dbo].[TaiKhoans] ([maNV], [matKhau]) VALUES (N'NV0003', N'123456')
INSERT [dbo].[TaiKhoans] ([maNV], [matKhau]) VALUES (N'NV0004', N'123456')
INSERT [dbo].[TaiKhoans] ([maNV], [matKhau]) VALUES (N'NV0005', N'123456')
INSERT [dbo].[TaiKhoans] ([maNV], [matKhau]) VALUES (N'NV0006', N'123456')
INSERT [dbo].[TaiKhoans] ([maNV], [matKhau]) VALUES (N'NV0007', N'123456')
GO
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND001', 3000000, N'HinhAnhTour\\01.Tour Nghỉ dưỡng Vịnh Hạ Long.jpg', N'Ở đây, du khách trên du thuyền sẽ có lịch trình tham quan riêng, khám phá và chiêm ngưỡng vẻ đẹp của vịnh Hạ Long. Bên cạnh đó, du khách cũng sẽ có cơ hội trải nghiệm nhiều hoạt động vô cùng thú vị như: chèo thuyền kayak, tắm biển trên vịnh, tập thái cực quyền, tham gia các lớp học nấu ăn,... Lịch trình tour được chia thành nhiều loại như: 3 ngày 2 đêm, 2 ngày 1 đêm, du thuyền đi trong ngày giúp du khách có thể lựa chọn tùy theo nhu cầu cá nhân. ', CAST(N'2019-12-13' AS Date), CAST(N'2019-12-10' AS Date), 12, N'Tour Nghỉ dưỡng Vịnh Hạ Long 001', 1, N'DD0001', N'HDV003', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND002', 2500000, N'HinhAnhTour\\01.Tour Nghỉ dưỡng Vịnh Hạ Long.jpg', N'Ở đây, du khách trên du thuyền sẽ có lịch trình tham quan riêng, khám phá và chiêm ngưỡng vẻ đẹp của vịnh Hạ Long. Bên cạnh đó, du khách cũng sẽ có cơ hội trải nghiệm nhiều hoạt động vô cùng thú vị như: chèo thuyền kayak, tắm biển trên vịnh, tập thái cực quyền, tham gia các lớp học nấu ăn,... Lịch trình tour được chia thành nhiều loại như: 3 ngày 2 đêm, 2 ngày 1 đêm, du thuyền đi trong ngày giúp du khách có thể lựa chọn tùy theo nhu cầu cá nhân. ', CAST(N'2019-10-05' AS Date), CAST(N'2019-10-01' AS Date), 15, N'Tour Nghỉ dưỡng Vịnh Hạ Long 002', 1, N'DD0001', N'HDV004', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND003', 3000000, N'HinhAnhTour\\01.Tour Nghỉ dưỡng Vịnh Hạ Long.jpg', N'Ở đây, du khách trên du thuyền sẽ có lịch trình tham quan riêng, khám phá và chiêm ngưỡng vẻ đẹp của vịnh Hạ Long. Bên cạnh đó, du khách cũng sẽ có cơ hội trải nghiệm nhiều hoạt động vô cùng thú vị như: chèo thuyền kayak, tắm biển trên vịnh, tập thái cực quyền, tham gia các lớp học nấu ăn,... Lịch trình tour được chia thành nhiều loại như: 3 ngày 2 đêm, 2 ngày 1 đêm, du thuyền đi trong ngày giúp du khách có thể lựa chọn tùy theo nhu cầu cá nhân. ', CAST(N'2019-08-15' AS Date), CAST(N'2019-08-10' AS Date), 11, N'Tour Nghỉ dưỡng Vịnh Hạ Long 003', 1, N'DD0001', N'HDV005', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND004', 2500000, N'HinhAnhTour\\02.Tour Nghỉ dưỡng Nha Trang.jpg', N'Đến với Nha Trang, những loại hải sản tươi sống là không thể bỏ qua. Du khách có thể thưởng thức sự tươi ngon của tôm, ghẹ, mực, sò… ở những nhà hàng sang trọng hoặc có thể “đánh chén” khô mực, khô cá… thơm nức ngay trên bãi biển qua những gánh hàng buôn nhỏ lẻ.', CAST(N'2019-05-17' AS Date), CAST(N'2019-05-15' AS Date), 13, N'Tour Nghỉ dưỡng Nha Trang 004', 1, N'DD0002', N'HDV006', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND005', 3500000, N'HinhAnhTour\\02.Tour Nghỉ dưỡng Nha Trang.jpg', N'Đến với Nha Trang, những loại hải sản tươi sống là không thể bỏ qua. Du khách có thể thưởng thức sự tươi ngon của tôm, ghẹ, mực, sò… ở những nhà hàng sang trọng hoặc có thể “đánh chén” khô mực, khô cá… thơm nức ngay trên bãi biển qua những gánh hàng buôn nhỏ lẻ.', CAST(N'2019-08-16' AS Date), CAST(N'2019-08-10' AS Date), 12, N'Tour Nghỉ dưỡng Nha Trang 005', 1, N'DD0002', N'HDV007', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND006', 2000000, N'HinhAnhTour\\03.Tour Nghỉ dưỡng Mũi Né - Phan Thiết.jpg', N'Mũi Né là một trong những điểm du lịch sinh thái biển đẹp và thơ mộng nhất của tỉnh Bình Thuận. Du khách đến Mũi Né không chỉ bị hấp dẫn bởi vẻ đẹp hoang sơ của tự nhiên mà còn bị thu hút bởi những hoạt động thể thao hiện đại, những chuyến du lịch dã ngoại và thậm chí bởi cuộc sống của người dân nơi đây. Lâu đài rượu vang RD, Trung tâm bùn khoáng Mũi Né, bánh quai vạt, gỏi cá là những điều không nên bỏ qua trong hành trình tham quan phố biển xinh đẹp này.', CAST(N'2021-06-15' AS Date), CAST(N'2021-06-10' AS Date), 10, N'Tour Nghỉ dưỡng Mũi Né - Phan Thiết 006', 1, N'DD0003', N'HDV008', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND007', 2500000, N'HinhAnhTour\\03.Tour Nghỉ dưỡng Mũi Né - Phan Thiết.jpg', N'Mũi Né là một trong những điểm du lịch sinh thái biển đẹp và thơ mộng nhất của tỉnh Bình Thuận. Du khách đến Mũi Né không chỉ bị hấp dẫn bởi vẻ đẹp hoang sơ của tự nhiên mà còn bị thu hút bởi những hoạt động thể thao hiện đại, những chuyến du lịch dã ngoại và thậm chí bởi cuộc sống của người dân nơi đây. Lâu đài rượu vang RD, Trung tâm bùn khoáng Mũi Né, bánh quai vạt, gỏi cá là những điều không nên bỏ qua trong hành trình tham quan phố biển xinh đẹp này.', CAST(N'2019-07-15' AS Date), CAST(N'2019-07-10' AS Date), 10, N'Tour Nghỉ dưỡng Mũi Né - Phan Thiết 007', 1, N'DD0003', N'HDV009', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND008', 3000000, N'HinhAnhTour\\04.Tour Nghỉ dưỡng Đảo Phú Quốc.jpg', N'Trong chuyến hành trình du lịch khám phá biển đảo Phú Quốc của Du lịch Intour du khách sẽ được nghỉ dưỡng tại khu resort cao cấp. Tất cả các phòng đều được trang bị đầy đủ tiện nghi, có ban công nhìn ra biển đảo xinh đẹp cùng thái độ phục vụ nhiệt tình, chuyên nghiệp.', CAST(N'2019-04-17' AS Date), CAST(N'2019-04-10' AS Date), 12, N'Tour Nghỉ dưỡng Đảo Phú Quốc 008', 1, N'DD0004', N'HDV011', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND009', 2500000, N'HinhAnhTour\\04.Tour Nghỉ dưỡng Đảo Phú Quốc.jpg', N'Trong chuyến hành trình du lịch khám phá biển đảo Phú Quốc của Du lịch Intour du khách sẽ được nghỉ dưỡng tại khu resort cao cấp. Tất cả các phòng đều được trang bị đầy đủ tiện nghi, có ban công nhìn ra biển đảo xinh đẹp cùng thái độ phục vụ nhiệt tình, chuyên nghiệp.', CAST(N'2019-09-15' AS Date), CAST(N'2019-09-10' AS Date), 11, N'Tour Nghỉ dưỡng Đảo Phú Quốc 009', 1, N'DD0004', N'HDV001', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND010', 1500000, N'HinhAnhTour\\05.Tour Nghỉ dưỡng Bà Nà Hill.jpg', N'Với cảnh sắc thiên nhiên tươi đẹp và khí hậu mát mẻ, du khách có thể đi du lịch Ba Na Hills vào bất cứ mùa nào trong năm.', CAST(N'2019-05-15' AS Date), CAST(N'2019-05-10' AS Date), 10, N'Tour Nghỉ dưỡng Bà Nà Hill 010', 1, N'DD0005', N'HDV002', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND011', 1500000, N'HinhAnhTour\\05.Tour Nghỉ dưỡng Bà Nà Hill.jpg', N'Với cảnh sắc thiên nhiên tươi đẹp và khí hậu mát mẻ, du khách có thể đi du lịch Ba Na Hills vào bất cứ mùa nào trong năm.', CAST(N'2019-08-18' AS Date), CAST(N'2019-08-15' AS Date), 10, N'Tour Nghỉ dưỡng Bà Nà Hill 011', 1, N'DD0005', N'HDV003', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND012', 2000000, N'HinhAnhTour\\05.Tour Nghỉ dưỡng Bà Nà Hill.jpg', N'Với cảnh sắc thiên nhiên tươi đẹp và khí hậu mát mẻ, du khách có thể đi du lịch Ba Na Hills vào bất cứ mùa nào trong năm.', CAST(N'2019-12-15' AS Date), CAST(N'2019-12-10' AS Date), 10, N'Tour Nghỉ dưỡng Bà Nà Hill 012', 1, N'DD0005', N'HDV004', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND013', 1500000, N'HinhAnhTour\\06.Tour Nghỉ dưỡng Sầm Sơn.jpg', N'Sầm Sơn là khu nghỉ dưỡng cao cấp 5 sao theo tiêu chuẩn quốc tế đầu tiên tại miền Bắc và Bắc Trung Bộ. Được thiết kế đơn giản nhưng chăm chút đến từng chi tiết, nơi đây đáp ứng đầy đủ các tiêu chuẩn 5 sao, từ dịch vụ khách sạn, nhà hàng, spa, biệt thự nghỉ dưỡng, trung tâm hội nghị quốc tế, nhà đa năng đến các dịch vụ đi kèm.', CAST(N'2019-04-18' AS Date), CAST(N'2019-04-14' AS Date), 11, N'Tour Nghỉ dưỡng Sầm Sơn 013', 1, N'DD0006', N'HDV005', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND014', 3000000, N'HinhAnhTour\\07.Tour Nghỉ dưỡng Mũi Kê Gà – Thuận Quý.jpg', N'Nét đặc biệt của Mũi Kê Gà là có những phiến đá độc đáo nằm nhấp nhô ra phía biển. Người dân bản địa từ lâu đã ví von những bãi đá này như một vườn đá. Cái tên Mũi Kê Gà ra đời cũng bởi những phiến đá ấy lấn dần ra biển, rồi không biết bàn tay ma thuật nào đã vô tình xếp dặt chúng thành hình dáng trông gần như cái đầu gà.', CAST(N'2020-01-15' AS Date), CAST(N'2020-01-10' AS Date), 13, N'Tour Nghỉ dưỡng Mũi Kê Gà – Thuận Quý 014', 1, N'DD0007', N'HDV006', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND015', 4000000, N'HinhAnhTour\\07.Tour Nghỉ dưỡng Mũi Kê Gà – Thuận Quý.jpg', N'Nét đặc biệt của Mũi Kê Gà là có những phiến đá độc đáo nằm nhấp nhô ra phía biển. Người dân bản địa từ lâu đã ví von những bãi đá này như một vườn đá. Cái tên Mũi Kê Gà ra đời cũng bởi những phiến đá ấy lấn dần ra biển, rồi không biết bàn tay ma thuật nào đã vô tình xếp dặt chúng thành hình dáng trông gần như cái đầu gà.', CAST(N'2020-09-20' AS Date), CAST(N'2020-09-18' AS Date), 12, N'Tour Nghỉ dưỡng Mũi Kê Gà – Thuận Quý 015', 1, N'DD0007', N'HDV007', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND016', 2500000, N'HinhAnhTour\\08.Tour Nghỉ dưỡng Coco Beach Camp .jpg', N'Đến với Tour CocoBeach Camp có 2 sự lựa chọn qua đêm đó là ngủ lều, phòng tập thể hoặc phòng Bungalow hạng sang. Không gian ở đây gợi nhớ cho bạn một hình ảnh trên biển đâu đó ở Hawaii', CAST(N'2020-11-24' AS Date), CAST(N'2020-11-20' AS Date), 10, N'Tour Nghỉ dưỡng Coco Beach Camp 016', 1, N'DD0008', N'HDV008', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND017', 2000000, N'HinhAnhTour\\08.Tour Nghỉ dưỡng Coco Beach Camp .jpg', N'Đến với Tour CocoBeach Camp có 2 sự lựa chọn qua đêm đó là ngủ lều, phòng tập thể hoặc phòng Bungalow hạng sang. Không gian ở đây gợi nhớ cho bạn một hình ảnh trên biển đâu đó ở Hawaii', CAST(N'2021-06-19' AS Date), CAST(N'2021-06-16' AS Date), 10, N'Tour Nghỉ dưỡng Coco Beach Camp 017', 1, N'DD0008', N'HDV009', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND039', 1000000, N'HinhAnhTour\\04.Tour Nghỉ dưỡng Đảo Phú Quốc.jpg', N'Chưa có mô tả !', CAST(N'2021-06-10' AS Date), CAST(N'2021-06-05' AS Date), 10, N'Tour Nghỉ dưỡng Đảo Phú Quốc 039', 0, N'DD0004', N'HDV005', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TND040', 2000000, N'HinhAnhTour\\everycowboy_dribbbleready_shot.jpg', N'Chưa có mô tả !', CAST(N'2021-12-29' AS Date), CAST(N'2021-12-15' AS Date), 56, N'Tour Nghỉ dưỡng Núi Bà Đen 040', 1, N'DD0020', N'HDV005', N'ND')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ018', 4000000, N'HinhAnhTour\\09.Tour Tham quan SaPa.jpg', N'Cảnh đẹp Du Lich Sapa mùa hè thơ mộng, núi rừng nguyên sơ như tranh vẽ, thời tiết đặc trưng mùa đông trên ngọn núi fansipang kỳ vĩ hứa hẹn một Tour du lịch khám phá.Phong cảnh thiên nhiên của Sa Pa được kết hợp với sức sáng tạo của con người cùng với địa hình của núi đồi, màu xanh của rừng, như bức tranh có sự sắp xếp theo một bố cục hài hoà tạo nên một vùng có nhiều cảnh sắc thơ mộng hấp dẫn. ', CAST(N'2021-05-21' AS Date), CAST(N'2021-05-17' AS Date), 15, N'Tour Tham quan Sapa 018', 1, N'DD0009', N'HDV010', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ019', 2000000, N'HinhAnhTour\\09.Tour Tham quan SaPa.jpg', N'Cảnh đẹp Du Lich Sapa mùa hè thơ mộng, núi rừng nguyên sơ như tranh vẽ, thời tiết đặc trưng mùa đông trên ngọn núi fansipang kỳ vĩ hứa hẹn một Tour du lịch khám phá.Phong cảnh thiên nhiên của Sa Pa được kết hợp với sức sáng tạo của con người cùng với địa hình của núi đồi, màu xanh của rừng, như bức tranh có sự sắp xếp theo một bố cục hài hoà tạo nên một vùng có nhiều cảnh sắc thơ mộng hấp dẫn. ', CAST(N'2021-11-23' AS Date), CAST(N'2021-11-19' AS Date), 12, N'Tour Tham quan Sapa 019', 0, N'DD0009', N'HDV011', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ020', 2500000, N'HinhAnhTour\\10.Tour Tham quan Đèo Mã Pí Lèng.jpg', N'Đèo Mã Pì Lèng – nơi được mệnh danh là đệ nhất hùng quan của Việt Nam – một trong “Tứ Đại Đỉnh Đèo” nổi tiếng của Việt Nam, ngắm dòng sông Nho Quế như dải lụa vắt ngang bầu trời bên dưới & hẻm vực Tu Sản – hẻm vực hiểm trở nhưng ẩn chứa vẻ đẹp bất tận giữa mây trời.', CAST(N'2019-10-31' AS Date), CAST(N'2019-10-24' AS Date), 11, N'Tour Tham quan Đèo Mã Pí Lèng 020', 1, N'DD0010', N'HDV002', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ021', 4000000, N'HinhAnhTour\\10.Tour Tham quan Đèo Mã Pí Lèng.jpg', N'Đèo Mã Pì Lèng – nơi được mệnh danh là đệ nhất hùng quan của Việt Nam – một trong “Tứ Đại Đỉnh Đèo” nổi tiếng của Việt Nam, ngắm dòng sông Nho Quế như dải lụa vắt ngang bầu trời bên dưới & hẻm vực Tu Sản – hẻm vực hiểm trở nhưng ẩn chứa vẻ đẹp bất tận giữa mây trời.', CAST(N'2019-11-25' AS Date), CAST(N'2019-11-23' AS Date), 12, N'Tour Tham quan Đèo Mã Pí Lèng 021', 1, N'DD0010', N'HDV003', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ022', 2000000, N'HinhAnhTour\\11.Tour Tham quan Phong Nha - Kẻ Bàng.jpg', N'Hang động này được bình chọn là một trong những hang động đẹp nhất thế giới với các tiêu chí: Sông ngầm dài nhất, hồ nước ngầm đẹp nhất, cửa hang cao và rộng nhất, các bãi cát và bãi đá ngầm đẹp nhất, hang khô rộng và đẹp nhất, hệ thống thạch nhũ kỳ ảo và tráng lệ nhất.', CAST(N'2021-07-17' AS Date), CAST(N'2021-07-12' AS Date), 13, N'Tour Tham quan Phong Nha - Kẻ Bàng 022', 1, N'DD0011', N'HDV004', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ023', 2000000, N'HinhAnhTour\\11.Tour Tham quan Phong Nha - Kẻ Bàng.jpg', N'Hang động này được bình chọn là một trong những hang động đẹp nhất thế giới với các tiêu chí: Sông ngầm dài nhất, hồ nước ngầm đẹp nhất, cửa hang cao và rộng nhất, các bãi cát và bãi đá ngầm đẹp nhất, hang khô rộng và đẹp nhất, hệ thống thạch nhũ kỳ ảo và tráng lệ nhất.', CAST(N'2021-08-19' AS Date), CAST(N'2021-08-15' AS Date), 10, N'Tour Tham quan Phong Nha - Kẻ Bàng 023', 1, N'DD0011', N'HDV005', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ024', 2500000, N'HinhAnhTour\\12.Tour Tham quan Tam Đảo .jpg', N'Tam Đảo còn là nơi nghỉ mát lý tưởng với sự luân chuyển rõ rệt 4 mùa trong một ngày. Đến đây Quý khách sẽ cảm nhận được buổi sáng se se gió xuân, buổi trưa nóng ấm mùa hạ, buổi chiều lãng đãng heo may mùa thu, buổi tối lạnh giá của mùa đông. Khu du lịch nhỏ bé, xinh xắn với những con đường lên xuống ngoằn ngoèo, quanh co nho nhỏ, một dòng suối như vệt nước cắt ngang chảy suốt bốn mùa.', CAST(N'2021-09-16' AS Date), CAST(N'2021-09-11' AS Date), 11, N'Tour Tham quan Tam Đảo 024', 1, N'DD0012', N'HDV006', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ025', 2500000, N'HinhAnhTour\\12.Tour Tham quan Tam Đảo .jpg', N'Tam Đảo còn là nơi nghỉ mát lý tưởng với sự luân chuyển rõ rệt 4 mùa trong một ngày. Đến đây Quý khách sẽ cảm nhận được buổi sáng se se gió xuân, buổi trưa nóng ấm mùa hạ, buổi chiều lãng đãng heo may mùa thu, buổi tối lạnh giá của mùa đông. Khu du lịch nhỏ bé, xinh xắn với những con đường lên xuống ngoằn ngoèo, quanh co nho nhỏ, một dòng suối như vệt nước cắt ngang chảy suốt bốn mùa.', CAST(N'2021-10-23' AS Date), CAST(N'2021-10-18' AS Date), 12, N'Tour Tham quan Tam Đảo 025', 1, N'DD0012', N'HDV007', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ026', 3000000, N'HinhAnhTour\\13.Tour Tham quan Đỉnh Phanxipang.jpg', N'Đỉnh Fansipan là khao khát chinh phục của những trái tim nồng nhiệt muốn vươn tới đỉnh cao. Với độ cao 3143m, hành trình chinh phục 2 ngày 1 đêm, đỉnh Fansipan còn là nơi để những người trẻ thể hiện sự quyết tâm, sức bền của ý chí và thể lực trước thử thách gian nan.', CAST(N'2021-11-12' AS Date), CAST(N'2021-11-05' AS Date), 13, N'Tour Tham quan Đỉnh Phanxipang 026', 1, N'DD0013', N'HDV008', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ027', 3000000, N'HinhAnhTour\\13.Tour Tham quan Đỉnh Phanxipang.jpg', N'Đỉnh Fansipan là khao khát chinh phục của những trái tim nồng nhiệt muốn vươn tới đỉnh cao. Với độ cao 3143m, hành trình chinh phục 2 ngày 1 đêm, đỉnh Fansipan còn là nơi để những người trẻ thể hiện sự quyết tâm, sức bền của ý chí và thể lực trước thử thách gian nan.', CAST(N'2021-12-10' AS Date), CAST(N'2021-12-04' AS Date), 17, N'Tour Tham quan Đỉnh Phanxipang 027', 0, N'DD0013', N'HDV009', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ028', 3000000, N'HinhAnhTour\\14.Tour Tham quan Hang động Sơn Đoòng.jpg', N'Chuyến du hành trong lòng đất khám phá hang Sơn Đoòng với những tuyệt tác thạch nhũ kỳ vĩ, sông ngầm, Hố Sụt hay thậm chí là cả một khu rừng phát triển ngay trong lòng Hang Sơn Đoòng cùng những sinh vật độc đáo; cơ hội chiêm ngưỡng tia nắng chiếu xuyên hang động và chinh phục Bức tường Việt Nam cao 90m.', CAST(N'2021-05-25' AS Date), CAST(N'2021-05-20' AS Date), 10, N'Tour Tham quan Hang động Sơn Đoòng
 028', 1, N'DD0014', N'HDV011', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ029', 2000000, N'HinhAnhTour\\15.Tour Tham quan Đảo Lý Sơn.jpg', N'Cũng giống như những bãi biển ở Miền Trung, bãi biển ở Lý Sơn rất đẹp theo đúng nghĩa: Biển xanh – cát trắng – nắng vàng…. Ngoài ra với những dụng cụ nặn biển du khách còn có cơ hội ngắm đàn cá tung tăng bơi lội, san hô màu sắc sặc sở, bắt ốc…. Ven bờ biển từ chùa Hang đến hang Câu là một cảnh tượng hùng vĩ; một bên là vách núi sừng sững, một bên là trời biển mênh mông….. ', CAST(N'2021-07-26' AS Date), CAST(N'2021-07-22' AS Date), 10, N'Tour Tham quan Đảo Lý Sơn 029', 1, N'DD0015', N'HDV001', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ030', 2000000, N'HinhAnhTour\\15.Tour Tham quan Đảo Lý Sơn.jpg', N'Cũng giống như những bãi biển ở Miền Trung, bãi biển ở Lý Sơn rất đẹp theo đúng nghĩa: Biển xanh – cát trắng – nắng vàng…. Ngoài ra với những dụng cụ nặn biển du khách còn có cơ hội ngắm đàn cá tung tăng bơi lội, san hô màu sắc sặc sở, bắt ốc…. Ven bờ biển từ chùa Hang đến hang Câu là một cảnh tượng hùng vĩ; một bên là vách núi sừng sững, một bên là trời biển mênh mông….. ', CAST(N'2021-10-02' AS Date), CAST(N'2021-09-27' AS Date), 13, N'Tour Tham quan Đảo Lý Sơn 030', 1, N'DD0015', N'HDV002', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ031', 3000000, N'HinhAnhTour\\16.Tour Tham quan Hang Rái.jpg', N'Tour Hang Rái - Vĩnh Hy - Vườn Nho - Đồng Cừu khởi hành từ Nha Trang là hành trình để bạn khám phá không chỉ có thác nước trên biển độc nhất vô nhị, những bãi biển còn giữ nguyên vẹn vẻ đẹp hoang sơ, tham quan Đồng cừu Suối Tiên chụp hình với những chú cừu xinh xắn và đáng yêu hay vườn nho truyền thống nổi tiếng, mà còn là dịp để thưởng thức đặc sản ẩm thực của nơi này và gặp gỡ những con người Phan Rang hiền lành, thân thiện.', CAST(N'2020-03-19' AS Date), CAST(N'2020-03-15' AS Date), 12, N'Tour Tham quan Hang Rái 031', 1, N'DD0016', N'HDV003', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ032', 3000000, N'HinhAnhTour\\17.Tour Tham quan Đà Lạt.jpg', N'thành phố Đà Lạt mộng mơ, nơi đây trở thành sự lựa chọn lý tưởng khi thu hút du khách trong nước và quốc tế đến đây. Chắc chắn du khách sẽ không tìm được một nơi nào thứ 2 giống như ở Đà Lạt. Đi nơi khác có thể cần mùa, nhưng riêng đi Đà Lạt bạn có thể đi quanh năm. Sẽ thật tuyệt vời nếu bạn có thể khám phá hết được những địa điểm du lịch Đà Lạt hấp dẫn dưới đây. ', CAST(N'2020-04-22' AS Date), CAST(N'2020-04-16' AS Date), 11, N'Tour Tham quan Khu du lịch Đà Lạt 032', 1, N'DD0017', N'HDV004', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ033', 2000000, N'HinhAnhTour\\17.Tour Tham quan Đà Lạt.jpg', N'thành phố Đà Lạt mộng mơ, nơi đây trở thành sự lựa chọn lý tưởng khi thu hút du khách trong nước và quốc tế đến đây. Chắc chắn du khách sẽ không tìm được một nơi nào thứ 2 giống như ở Đà Lạt. Đi nơi khác có thể cần mùa, nhưng riêng đi Đà Lạt bạn có thể đi quanh năm. Sẽ thật tuyệt vời nếu bạn có thể khám phá hết được những địa điểm du lịch Đà Lạt hấp dẫn dưới đây. ', CAST(N'2020-05-26' AS Date), CAST(N'2020-05-20' AS Date), 10, N'Tour Tham quan Khu du lịch Đà Lạt 033', 1, N'DD0017', N'HDV005', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ034', 3000000, N'HinhAnhTour\\18.Tour Tham quan Khu du lịch Thủy Châu.jpg', N'Sở hữu diện tích "khủng" lên đến 18 héc-ta, Khu du lịch Thuỷ Châu là không gian xanh nhân tạo nhưng cũng cực kỳ chân thật với với thảm cây xanh, rừng, sông suối, cầu đá, thác nhân tạo.... Khi đến đây, du khách sẽ được hoà mình vào thiên nhiên, tận hưởng những phút giây thư giãn và tạm thời "bái bai" nhịp sống thành thị xô bồ.', CAST(N'2020-09-15' AS Date), CAST(N'2020-09-11' AS Date), 11, N'Tour Tham quan Khu du lịch Thủy Châu 034', 1, N'DD0018', N'HDV007', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ035', 3000000, N'HinhAnhTour\\18.Tour Tham quan Khu du lịch Thủy Châu.jpg', N'Sở hữu diện tích "khủng" lên đến 18 héc-ta, Khu du lịch Thuỷ Châu là không gian xanh nhân tạo nhưng cũng cực kỳ chân thật với với thảm cây xanh, rừng, sông suối, cầu đá, thác nhân tạo.... Khi đến đây, du khách sẽ được hoà mình vào thiên nhiên, tận hưởng những phút giây thư giãn và tạm thời "bái bai" nhịp sống thành thị xô bồ.', CAST(N'2020-12-12' AS Date), CAST(N'2020-12-09' AS Date), 10, N'Tour Tham quan Khu du lịch Thủy Châu 035', 1, N'DD0018', N'HDV008', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ036', 2000000, N'HinhAnhTour\\19.Tour Tham quan Khu du lịch Đại Nam.jpg', N'Nếu quý khách đã quá quen với những cảnh đẹp thiên nhiên của núi non, sông nước thì sự hùng vĩ và tráng lệ của những công trình kiến trúc sẽ là những trải nghiệm mới vô cùng thú vị cho quý khách đấy. Đứng trước những quần thể kiến trúc lớn về cả qui mô và “lớn” cả về bề dày lịch sử, tâm hồn quý khách không những được thư thái và thoải mái mà còn là cơ hội để quý khách hiểu hơn về ý nghĩa của những “tài sản” quí giá của dân tộc.', CAST(N'2020-04-20' AS Date), CAST(N'2020-04-15' AS Date), 12, N'Tour Tham quan Khu du lịch Đại Nam 036', 1, N'DD0019', N'HDV009', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ037', 2000000, N'HinhAnhTour\\19.Tour Tham quan Khu du lịch Đại Nam.jpg', N'Nếu quý khách đã quá quen với những cảnh đẹp thiên nhiên của núi non, sông nước thì sự hùng vĩ và tráng lệ của những công trình kiến trúc sẽ là những trải nghiệm mới vô cùng thú vị cho quý khách đấy. Đứng trước những quần thể kiến trúc lớn về cả qui mô và “lớn” cả về bề dày lịch sử, tâm hồn quý khách không những được thư thái và thoải mái mà còn là cơ hội để quý khách hiểu hơn về ý nghĩa của những “tài sản” quí giá của dân tộc.', CAST(N'2020-07-12' AS Date), CAST(N'2020-07-08' AS Date), 10, N'Tour Tham quan Khu du lịch Đại Nam 037', 1, N'DD0019', N'HDV010', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ038', 2500000, N'HinhAnhTour\\20.Tour Tham quan Núi Bà Đen .jpg', N'Núi Bà Đen - ngon núi cao nhất Đông Nam Bộ 986m bằng hệ thống cáp treo hiện đại, với nhà Ga Bà Đen được chứng nhận kỷ lục Guinness là nhà Ga lớn nhất thế giới. Tại đây quý khách có thể lựa chọn một trong hai tuyến cáp treo là: Tuyến cáp treo Chùa Hang và Tuyến cáp treo Vân Sơn ', CAST(N'2020-08-13' AS Date), CAST(N'2020-08-09' AS Date), 14, N'Tour Tham quan Núi Bà Đen 038', 1, N'DD0020', N'HDV011', N'TQ')
INSERT [dbo].[Tours] ([maTour], [giaTour], [hinhAnh], [moTa], [ngayKetThuc], [ngayKhoiHanh], [soLuongNguoi], [tenTour], [tinhTrang], [maDiaDanh], [maHuongDanVien], [maLoaiTour]) VALUES (N'TTQ041', 2000000, N'HinhAnhTour\\ithinkican_01.jpg', N'ĐI DU LỊCH HONGGGGGGG. K', CAST(N'2021-12-31' AS Date), CAST(N'2021-12-29' AS Date), 70, N'Tour Tham quan Bà Nà Hill 041', 1, N'DD0005', N'HDV008', N'TQ')
GO
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND001-01', CAST(N'2019-12-02' AS Date), N'KH0092', N'NV0002', N'TND001')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND001-02', CAST(N'2019-12-02' AS Date), N'KH0093', N'NV0002', N'TND001')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND001-03', CAST(N'2019-12-02' AS Date), N'KH0094', N'NV0002', N'TND001')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND001-04', CAST(N'2019-12-02' AS Date), N'KH0095', N'NV0002', N'TND001')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND001-05', CAST(N'2019-12-02' AS Date), N'KH0096', N'NV0002', N'TND001')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND001-06', CAST(N'2019-12-02' AS Date), N'KH0097', N'NV0002', N'TND001')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND001-07', CAST(N'2019-12-02' AS Date), N'KH0098', N'NV0002', N'TND001')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND001-08', CAST(N'2019-12-02' AS Date), N'KH0099', N'NV0002', N'TND001')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND001-09', CAST(N'2019-12-02' AS Date), N'KH0100', N'NV0002', N'TND001')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND001-11', CAST(N'2019-12-02' AS Date), N'KH0002', N'NV0002', N'TND001')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND001-12', CAST(N'2019-12-02' AS Date), N'KH0003', N'NV0002', N'TND001')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-01', CAST(N'2019-09-21' AS Date), N'KH0001', N'NV0002', N'TND001')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-02', CAST(N'2019-09-21' AS Date), N'KH0004', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-03', CAST(N'2019-09-21' AS Date), N'KH0005', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-04', CAST(N'2019-09-21' AS Date), N'KH0006', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-05', CAST(N'2019-09-21' AS Date), N'KH0007', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-06', CAST(N'2019-09-21' AS Date), N'KH0008', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-07', CAST(N'2019-09-21' AS Date), N'KH0009', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-08', CAST(N'2019-09-21' AS Date), N'KH0010', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-09', CAST(N'2019-09-21' AS Date), N'KH0011', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-10', CAST(N'2019-09-21' AS Date), N'KH0012', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-11', CAST(N'2019-09-21' AS Date), N'KH0013', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-12', CAST(N'2019-09-21' AS Date), N'KH0014', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-13', CAST(N'2019-09-21' AS Date), N'KH0015', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-14', CAST(N'2019-09-21' AS Date), N'KH0016', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND002-15', CAST(N'2019-09-21' AS Date), N'KH0017', N'NV0003', N'TND002')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND003-01', CAST(N'2019-08-01' AS Date), N'KH0018', N'NV0004', N'TND003')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND003-02', CAST(N'2019-08-01' AS Date), N'KH0019', N'NV0004', N'TND003')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND003-03', CAST(N'2019-08-01' AS Date), N'KH0020', N'NV0004', N'TND003')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND003-04', CAST(N'2019-08-01' AS Date), N'KH0021', N'NV0004', N'TND003')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND003-05', CAST(N'2019-08-01' AS Date), N'KH0022', N'NV0004', N'TND003')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND003-06', CAST(N'2019-08-01' AS Date), N'KH0023', N'NV0004', N'TND003')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND003-07', CAST(N'2019-08-01' AS Date), N'KH0024', N'NV0004', N'TND003')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND003-08', CAST(N'2019-08-01' AS Date), N'KH0025', N'NV0004', N'TND003')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND003-09', CAST(N'2019-08-01' AS Date), N'KH0026', N'NV0004', N'TND003')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND003-10', CAST(N'2019-08-01' AS Date), N'KH0027', N'NV0004', N'TND003')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND003-11', CAST(N'2019-08-01' AS Date), N'KH0028', N'NV0004', N'TND003')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND004-01', CAST(N'2019-05-05' AS Date), N'KH0029', N'NV0005', N'TND004')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND004-02', CAST(N'2019-05-05' AS Date), N'KH0030', N'NV0005', N'TND004')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND004-03', CAST(N'2019-05-05' AS Date), N'KH0031', N'NV0005', N'TND004')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND004-04', CAST(N'2019-05-05' AS Date), N'KH0032', N'NV0005', N'TND004')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND004-05', CAST(N'2019-05-05' AS Date), N'KH0033', N'NV0005', N'TND004')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND004-06', CAST(N'2019-05-05' AS Date), N'KH0034', N'NV0005', N'TND004')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND004-07', CAST(N'2019-05-05' AS Date), N'KH0035', N'NV0005', N'TND004')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND004-08', CAST(N'2019-05-05' AS Date), N'KH0036', N'NV0005', N'TND004')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND004-09', CAST(N'2019-05-05' AS Date), N'KH0037', N'NV0005', N'TND004')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND004-10', CAST(N'2019-05-05' AS Date), N'KH0038', N'NV0005', N'TND004')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND004-11', CAST(N'2019-05-05' AS Date), N'KH0039', N'NV0005', N'TND004')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND004-12', CAST(N'2019-05-05' AS Date), N'KH0040', N'NV0005', N'TND004')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND004-13', CAST(N'2019-05-05' AS Date), N'KH0041', N'NV0005', N'TND004')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND005-01', CAST(N'2019-08-02' AS Date), N'KH0042', N'NV0006', N'TND005')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND005-02', CAST(N'2019-08-02' AS Date), N'KH0043', N'NV0006', N'TND005')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND005-03', CAST(N'2019-08-02' AS Date), N'KH0044', N'NV0006', N'TND005')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND005-04', CAST(N'2019-08-02' AS Date), N'KH0045', N'NV0006', N'TND005')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND005-05', CAST(N'2019-08-02' AS Date), N'KH0046', N'NV0006', N'TND005')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND005-06', CAST(N'2019-08-02' AS Date), N'KH0047', N'NV0006', N'TND005')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND005-07', CAST(N'2019-08-02' AS Date), N'KH0048', N'NV0006', N'TND005')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND005-08', CAST(N'2019-08-02' AS Date), N'KH0049', N'NV0006', N'TND005')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND005-09', CAST(N'2019-08-02' AS Date), N'KH0050', N'NV0006', N'TND005')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND005-10', CAST(N'2019-08-02' AS Date), N'KH0051', N'NV0006', N'TND005')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND005-11', CAST(N'2019-08-02' AS Date), N'KH0052', N'NV0006', N'TND005')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND005-12', CAST(N'2019-08-02' AS Date), N'KH0053', N'NV0006', N'TND005')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND006-01', CAST(N'2021-06-01' AS Date), N'KH0054', N'NV0001', N'TND006')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND006-02', CAST(N'2021-06-01' AS Date), N'KH0002', N'NV0001', N'TND006')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND006-03', CAST(N'2021-06-01' AS Date), N'KH0003', N'NV0001', N'TND006')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND006-04', CAST(N'2021-06-01' AS Date), N'KH0004', N'NV0001', N'TND006')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND006-05', CAST(N'2021-06-01' AS Date), N'KH0005', N'NV0001', N'TND006')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND006-06', CAST(N'2021-06-01' AS Date), N'KH0006', N'NV0001', N'TND006')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND006-07', CAST(N'2021-06-01' AS Date), N'KH0007', N'NV0001', N'TND006')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND006-08', CAST(N'2021-06-01' AS Date), N'KH0008', N'NV0001', N'TND006')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND006-09', CAST(N'2021-06-01' AS Date), N'KH0009', N'NV0001', N'TND006')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND006-10', CAST(N'2021-06-01' AS Date), N'KH0010', N'NV0001', N'TND006')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND007-01', CAST(N'2019-07-03' AS Date), N'KH0011', N'NV0002', N'TND007')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND007-02', CAST(N'2019-07-03' AS Date), N'KH0012', N'NV0002', N'TND007')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND007-03', CAST(N'2019-07-03' AS Date), N'KH0013', N'NV0002', N'TND007')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND007-04', CAST(N'2019-07-03' AS Date), N'KH0014', N'NV0002', N'TND007')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND007-05', CAST(N'2019-07-03' AS Date), N'KH0015', N'NV0002', N'TND007')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND007-06', CAST(N'2019-07-03' AS Date), N'KH0016', N'NV0002', N'TND007')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND007-07', CAST(N'2019-07-03' AS Date), N'KH0017', N'NV0002', N'TND007')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND007-08', CAST(N'2019-07-03' AS Date), N'KH0018', N'NV0002', N'TND007')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND007-09', CAST(N'2019-07-03' AS Date), N'KH0019', N'NV0002', N'TND007')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND007-10', CAST(N'2019-07-03' AS Date), N'KH0020', N'NV0002', N'TND007')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND008-01', CAST(N'2019-03-28' AS Date), N'KH0021', N'NV0003', N'TND008')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND008-02', CAST(N'2019-03-28' AS Date), N'KH0022', N'NV0003', N'TND008')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND008-03', CAST(N'2019-03-28' AS Date), N'KH0023', N'NV0003', N'TND008')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND008-04', CAST(N'2019-03-28' AS Date), N'KH0024', N'NV0003', N'TND008')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND008-05', CAST(N'2019-03-28' AS Date), N'KH0025', N'NV0003', N'TND008')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND008-06', CAST(N'2019-03-28' AS Date), N'KH0026', N'NV0003', N'TND008')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND008-07', CAST(N'2019-03-28' AS Date), N'KH0027', N'NV0003', N'TND008')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND008-08', CAST(N'2019-03-28' AS Date), N'KH0028', N'NV0003', N'TND008')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND008-09', CAST(N'2019-03-28' AS Date), N'KH0029', N'NV0003', N'TND008')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND008-10', CAST(N'2019-03-28' AS Date), N'KH0030', N'NV0003', N'TND008')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND008-11', CAST(N'2019-03-28' AS Date), N'KH0031', N'NV0003', N'TND008')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND008-12', CAST(N'2019-03-28' AS Date), N'KH0032', N'NV0003', N'TND008')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND009-01', CAST(N'2019-09-02' AS Date), N'KH0033', N'NV0004', N'TND009')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND009-02', CAST(N'2019-09-02' AS Date), N'KH0034', N'NV0004', N'TND009')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND009-03', CAST(N'2019-09-02' AS Date), N'KH0035', N'NV0004', N'TND009')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND009-04', CAST(N'2019-09-02' AS Date), N'KH0036', N'NV0004', N'TND009')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND009-05', CAST(N'2019-09-02' AS Date), N'KH0037', N'NV0004', N'TND009')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND009-06', CAST(N'2019-09-02' AS Date), N'KH0038', N'NV0004', N'TND009')
GO
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND009-07', CAST(N'2019-09-02' AS Date), N'KH0039', N'NV0004', N'TND009')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND009-08', CAST(N'2019-09-02' AS Date), N'KH0040', N'NV0004', N'TND009')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND009-09', CAST(N'2019-09-02' AS Date), N'KH0041', N'NV0004', N'TND009')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND009-10', CAST(N'2019-09-02' AS Date), N'KH0042', N'NV0004', N'TND009')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND009-11', CAST(N'2019-09-02' AS Date), N'KH0043', N'NV0004', N'TND009')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND010-01', CAST(N'2019-04-27' AS Date), N'KH0044', N'NV0005', N'TND010')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND010-02', CAST(N'2019-04-27' AS Date), N'KH0045', N'NV0005', N'TND010')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND010-03', CAST(N'2019-04-27' AS Date), N'KH0046', N'NV0005', N'TND010')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND010-04', CAST(N'2019-04-27' AS Date), N'KH0047', N'NV0005', N'TND010')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND010-05', CAST(N'2019-04-27' AS Date), N'KH0048', N'NV0005', N'TND010')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND010-06', CAST(N'2019-04-27' AS Date), N'KH0049', N'NV0005', N'TND010')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND010-07', CAST(N'2019-04-27' AS Date), N'KH0050', N'NV0005', N'TND010')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND010-08', CAST(N'2019-04-27' AS Date), N'KH0051', N'NV0005', N'TND010')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND010-09', CAST(N'2019-04-27' AS Date), N'KH0052', N'NV0005', N'TND010')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND010-10', CAST(N'2019-04-27' AS Date), N'KH0053', N'NV0005', N'TND010')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND011-01', CAST(N'2019-08-01' AS Date), N'KH0054', N'NV0006', N'TND011')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND011-02', CAST(N'2019-08-01' AS Date), N'KH0055', N'NV0006', N'TND011')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND011-03', CAST(N'2019-08-01' AS Date), N'KH0056', N'NV0006', N'TND011')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND011-04', CAST(N'2019-08-01' AS Date), N'KH0057', N'NV0006', N'TND011')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND011-05', CAST(N'2019-08-01' AS Date), N'KH0058', N'NV0006', N'TND011')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND011-06', CAST(N'2019-08-01' AS Date), N'KH0059', N'NV0006', N'TND011')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND011-07', CAST(N'2019-08-01' AS Date), N'KH0060', N'NV0006', N'TND011')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND011-08', CAST(N'2019-08-01' AS Date), N'KH0061', N'NV0006', N'TND011')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND011-09', CAST(N'2019-08-01' AS Date), N'KH0062', N'NV0006', N'TND011')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND011-10', CAST(N'2019-08-01' AS Date), N'KH0063', N'NV0006', N'TND011')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND012-01', CAST(N'2019-12-01' AS Date), N'KH0064', N'NV0007', N'TND012')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND012-02', CAST(N'2019-12-01' AS Date), N'KH0065', N'NV0007', N'TND012')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND012-03', CAST(N'2019-12-01' AS Date), N'KH0066', N'NV0007', N'TND012')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND012-04', CAST(N'2019-12-01' AS Date), N'KH0067', N'NV0007', N'TND012')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND012-05', CAST(N'2019-12-01' AS Date), N'KH0068', N'NV0007', N'TND012')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND012-06', CAST(N'2019-12-01' AS Date), N'KH0069', N'NV0007', N'TND012')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND012-07', CAST(N'2019-12-01' AS Date), N'KH0070', N'NV0007', N'TND012')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND012-08', CAST(N'2019-12-01' AS Date), N'KH0071', N'NV0007', N'TND012')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND012-09', CAST(N'2019-12-01' AS Date), N'KH0072', N'NV0007', N'TND012')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND012-10', CAST(N'2019-12-01' AS Date), N'KH0073', N'NV0007', N'TND012')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND013-01', CAST(N'2019-04-05' AS Date), N'KH0074', N'NV0001', N'TND013')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND013-02', CAST(N'2019-04-05' AS Date), N'KH0075', N'NV0001', N'TND013')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND013-03', CAST(N'2019-04-05' AS Date), N'KH0076', N'NV0001', N'TND013')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND013-04', CAST(N'2019-04-05' AS Date), N'KH0077', N'NV0001', N'TND013')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND013-05', CAST(N'2019-04-05' AS Date), N'KH0078', N'NV0001', N'TND013')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND013-06', CAST(N'2019-04-05' AS Date), N'KH0079', N'NV0001', N'TND013')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND013-07', CAST(N'2019-04-05' AS Date), N'KH0080', N'NV0001', N'TND013')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND013-08', CAST(N'2019-04-05' AS Date), N'KH0081', N'NV0001', N'TND013')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND013-09', CAST(N'2019-04-05' AS Date), N'KH0082', N'NV0001', N'TND013')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND013-10', CAST(N'2019-04-05' AS Date), N'KH0083', N'NV0001', N'TND013')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND013-11', CAST(N'2019-04-05' AS Date), N'KH0084', N'NV0001', N'TND013')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND014-01', CAST(N'2020-01-02' AS Date), N'KH0085', N'NV0002', N'TND014')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND014-02', CAST(N'2020-01-02' AS Date), N'KH0086', N'NV0002', N'TND014')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND014-03', CAST(N'2020-01-02' AS Date), N'KH0087', N'NV0002', N'TND014')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND014-04', CAST(N'2020-01-02' AS Date), N'KH0088', N'NV0002', N'TND014')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND014-05', CAST(N'2020-01-02' AS Date), N'KH0089', N'NV0002', N'TND014')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND014-06', CAST(N'2020-01-02' AS Date), N'KH0090', N'NV0002', N'TND014')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND014-07', CAST(N'2020-01-02' AS Date), N'KH0091', N'NV0002', N'TND014')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND014-08', CAST(N'2020-01-02' AS Date), N'KH0092', N'NV0002', N'TND014')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND014-09', CAST(N'2020-01-02' AS Date), N'KH0093', N'NV0002', N'TND014')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND014-10', CAST(N'2020-01-02' AS Date), N'KH0094', N'NV0002', N'TND014')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND014-11', CAST(N'2020-01-02' AS Date), N'KH0095', N'NV0002', N'TND014')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND014-12', CAST(N'2020-01-02' AS Date), N'KH0096', N'NV0002', N'TND014')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND014-13', CAST(N'2020-01-02' AS Date), N'KH0097', N'NV0002', N'TND014')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND015-01', CAST(N'2020-09-10' AS Date), N'KH0098', N'NV0003', N'TND015')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND015-02', CAST(N'2020-09-10' AS Date), N'KH0099', N'NV0003', N'TND015')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND015-03', CAST(N'2020-09-10' AS Date), N'KH0100', N'NV0003', N'TND015')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND015-04', CAST(N'2020-09-10' AS Date), N'KH0001', N'NV0003', N'TND015')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND015-05', CAST(N'2020-09-10' AS Date), N'KH0002', N'NV0003', N'TND015')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND015-06', CAST(N'2020-09-10' AS Date), N'KH0003', N'NV0003', N'TND015')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND015-07', CAST(N'2020-09-10' AS Date), N'KH0004', N'NV0003', N'TND015')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND015-08', CAST(N'2020-09-10' AS Date), N'KH0005', N'NV0003', N'TND015')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND015-09', CAST(N'2020-09-10' AS Date), N'KH0006', N'NV0003', N'TND015')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND015-10', CAST(N'2020-09-10' AS Date), N'KH0007', N'NV0003', N'TND015')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND015-11', CAST(N'2020-09-10' AS Date), N'KH0008', N'NV0003', N'TND015')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND015-12', CAST(N'2020-09-10' AS Date), N'KH0009', N'NV0003', N'TND015')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND016-01', CAST(N'2020-11-02' AS Date), N'KH0010', N'NV0004', N'TND016')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND016-02', CAST(N'2020-11-02' AS Date), N'KH0011', N'NV0004', N'TND016')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND016-03', CAST(N'2020-11-02' AS Date), N'KH0012', N'NV0004', N'TND016')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND016-04', CAST(N'2020-11-02' AS Date), N'KH0013', N'NV0004', N'TND016')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND016-05', CAST(N'2020-11-02' AS Date), N'KH0014', N'NV0004', N'TND016')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND016-06', CAST(N'2020-11-02' AS Date), N'KH0015', N'NV0004', N'TND016')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND016-07', CAST(N'2020-11-02' AS Date), N'KH0016', N'NV0004', N'TND016')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND016-08', CAST(N'2020-11-02' AS Date), N'KH0017', N'NV0004', N'TND016')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND016-09', CAST(N'2020-11-02' AS Date), N'KH0018', N'NV0004', N'TND016')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND016-10', CAST(N'2020-11-02' AS Date), N'KH0019', N'NV0004', N'TND016')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND017-01', CAST(N'2021-06-09' AS Date), N'KH0020', N'NV0005', N'TND017')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND017-02', CAST(N'2021-06-09' AS Date), N'KH0021', N'NV0005', N'TND017')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND017-03', CAST(N'2021-06-09' AS Date), N'KH0022', N'NV0005', N'TND017')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND017-04', CAST(N'2021-06-09' AS Date), N'KH0023', N'NV0005', N'TND017')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND017-05', CAST(N'2021-06-09' AS Date), N'KH0024', N'NV0005', N'TND017')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND017-06', CAST(N'2021-06-09' AS Date), N'KH0025', N'NV0005', N'TND017')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND017-07', CAST(N'2021-06-09' AS Date), N'KH0026', N'NV0005', N'TND017')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND017-08', CAST(N'2021-06-09' AS Date), N'KH0027', N'NV0005', N'TND017')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND017-09', CAST(N'2021-06-09' AS Date), N'KH0028', N'NV0005', N'TND017')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND017-10', CAST(N'2021-06-09' AS Date), N'KH0029', N'NV0005', N'TND017')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND039-01', CAST(N'2021-06-03' AS Date), N'KH0001', N'NV0001', N'TND039')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND040-01', CAST(N'2021-11-25' AS Date), N'KH0101', N'NV0003', N'TND040')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TND040-02', CAST(N'2021-11-25' AS Date), N'KH0102', N'NV0003', N'TND040')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-01', CAST(N'2021-05-06' AS Date), N'KH0030', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-02', CAST(N'2021-05-06' AS Date), N'KH0031', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-03', CAST(N'2021-05-06' AS Date), N'KH0032', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-04', CAST(N'2021-05-06' AS Date), N'KH0033', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-05', CAST(N'2021-05-06' AS Date), N'KH0034', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-06', CAST(N'2021-05-06' AS Date), N'KH0035', N'NV0006', N'TTQ018')
GO
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-07', CAST(N'2021-05-06' AS Date), N'KH0036', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-08', CAST(N'2021-05-06' AS Date), N'KH0037', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-09', CAST(N'2021-05-06' AS Date), N'KH0038', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-10', CAST(N'2021-05-06' AS Date), N'KH0039', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-11', CAST(N'2021-05-06' AS Date), N'KH0040', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-12', CAST(N'2021-05-06' AS Date), N'KH0041', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-13', CAST(N'2021-05-06' AS Date), N'KH0042', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-14', CAST(N'2021-05-06' AS Date), N'KH0043', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ018-15', CAST(N'2021-05-06' AS Date), N'KH0044', N'NV0006', N'TTQ018')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ019-01', CAST(N'2021-11-07' AS Date), N'KH0045', N'NV0007', N'TTQ019')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ019-02', CAST(N'2021-11-07' AS Date), N'KH0046', N'NV0007', N'TTQ019')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ019-03', CAST(N'2021-11-07' AS Date), N'KH0047', N'NV0007', N'TTQ019')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ019-04', CAST(N'2021-11-07' AS Date), N'KH0048', N'NV0007', N'TTQ019')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ019-05', CAST(N'2021-11-07' AS Date), N'KH0049', N'NV0007', N'TTQ019')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ019-06', CAST(N'2021-11-07' AS Date), N'KH0050', N'NV0007', N'TTQ019')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ019-07', CAST(N'2021-11-07' AS Date), N'KH0051', N'NV0007', N'TTQ019')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ019-08', CAST(N'2021-11-07' AS Date), N'KH0052', N'NV0007', N'TTQ019')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ019-09', CAST(N'2021-11-07' AS Date), N'KH0053', N'NV0007', N'TTQ019')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ019-10', CAST(N'2021-11-07' AS Date), N'KH0054', N'NV0007', N'TTQ019')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ019-11', CAST(N'2021-11-07' AS Date), N'KH0055', N'NV0007', N'TTQ020')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ019-12', CAST(N'2021-11-07' AS Date), N'KH0056', N'NV0007', N'TTQ020')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ020-01', CAST(N'2019-10-12' AS Date), N'KH0057', N'NV0001', N'TTQ020')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ020-02', CAST(N'2019-10-12' AS Date), N'KH0058', N'NV0001', N'TTQ020')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ020-03', CAST(N'2019-10-12' AS Date), N'KH0059', N'NV0001', N'TTQ020')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ020-04', CAST(N'2019-10-12' AS Date), N'KH0060', N'NV0001', N'TTQ020')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ020-05', CAST(N'2019-10-12' AS Date), N'KH0061', N'NV0001', N'TTQ020')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ020-06', CAST(N'2019-10-12' AS Date), N'KH0062', N'NV0001', N'TTQ020')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ020-07', CAST(N'2019-10-12' AS Date), N'KH0063', N'NV0001', N'TTQ020')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ020-08', CAST(N'2019-10-12' AS Date), N'KH0064', N'NV0001', N'TTQ020')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ020-09', CAST(N'2019-10-12' AS Date), N'KH0065', N'NV0001', N'TTQ020')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ020-10', CAST(N'2019-10-12' AS Date), N'KH0066', N'NV0001', N'TTQ020')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ020-11', CAST(N'2019-10-12' AS Date), N'KH0067', N'NV0001', N'TTQ020')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ021-01', CAST(N'2019-11-13' AS Date), N'KH0068', N'NV0002', N'TTQ021')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ021-02', CAST(N'2019-11-13' AS Date), N'KH0069', N'NV0002', N'TTQ021')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ021-03', CAST(N'2019-11-13' AS Date), N'KH0070', N'NV0002', N'TTQ021')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ021-04', CAST(N'2019-11-13' AS Date), N'KH0071', N'NV0002', N'TTQ021')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ021-05', CAST(N'2019-11-13' AS Date), N'KH0072', N'NV0002', N'TTQ021')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ021-06', CAST(N'2019-11-13' AS Date), N'KH0073', N'NV0002', N'TTQ021')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ021-07', CAST(N'2019-11-13' AS Date), N'KH0074', N'NV0002', N'TTQ021')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ021-08', CAST(N'2019-11-13' AS Date), N'KH0075', N'NV0002', N'TTQ021')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ021-09', CAST(N'2019-11-13' AS Date), N'KH0076', N'NV0002', N'TTQ021')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ021-10', CAST(N'2019-11-13' AS Date), N'KH0077', N'NV0002', N'TTQ021')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ021-11', CAST(N'2019-11-13' AS Date), N'KH0078', N'NV0002', N'TTQ021')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ021-12', CAST(N'2019-11-13' AS Date), N'KH0079', N'NV0002', N'TTQ021')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ022-01', CAST(N'2021-07-05' AS Date), N'KH0080', N'NV0003', N'TTQ022')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ022-02', CAST(N'2021-07-05' AS Date), N'KH0081', N'NV0003', N'TTQ022')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ022-03', CAST(N'2021-07-05' AS Date), N'KH0082', N'NV0003', N'TTQ022')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ022-04', CAST(N'2021-07-05' AS Date), N'KH0083', N'NV0003', N'TTQ022')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ022-05', CAST(N'2021-07-05' AS Date), N'KH0084', N'NV0003', N'TTQ022')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ022-06', CAST(N'2021-07-05' AS Date), N'KH0085', N'NV0003', N'TTQ022')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ022-07', CAST(N'2021-07-05' AS Date), N'KH0086', N'NV0003', N'TTQ022')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ022-08', CAST(N'2021-07-05' AS Date), N'KH0087', N'NV0003', N'TTQ022')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ022-09', CAST(N'2021-07-05' AS Date), N'KH0088', N'NV0003', N'TTQ022')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ022-10', CAST(N'2021-07-05' AS Date), N'KH0089', N'NV0003', N'TTQ022')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ022-11', CAST(N'2021-07-05' AS Date), N'KH0090', N'NV0003', N'TTQ022')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ022-12', CAST(N'2021-07-05' AS Date), N'KH0091', N'NV0003', N'TTQ022')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ022-13', CAST(N'2021-07-05' AS Date), N'KH0092', N'NV0003', N'TTQ022')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ023-01', CAST(N'2021-08-07' AS Date), N'KH0093', N'NV0004', N'TTQ023')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ023-02', CAST(N'2021-08-07' AS Date), N'KH0094', N'NV0004', N'TTQ023')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ023-03', CAST(N'2021-08-07' AS Date), N'KH0095', N'NV0004', N'TTQ023')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ023-04', CAST(N'2021-08-07' AS Date), N'KH0096', N'NV0004', N'TTQ023')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ023-05', CAST(N'2021-08-07' AS Date), N'KH0097', N'NV0004', N'TTQ023')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ023-06', CAST(N'2021-08-07' AS Date), N'KH0098', N'NV0004', N'TTQ023')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ023-07', CAST(N'2021-08-07' AS Date), N'KH0099', N'NV0004', N'TTQ023')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ023-08', CAST(N'2021-08-07' AS Date), N'KH0100', N'NV0004', N'TTQ023')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ023-09', CAST(N'2021-08-07' AS Date), N'KH0001', N'NV0004', N'TTQ023')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ023-10', CAST(N'2021-08-07' AS Date), N'KH0002', N'NV0004', N'TTQ023')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ024-01', CAST(N'2021-09-03' AS Date), N'KH0003', N'NV0005', N'TTQ024')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ024-02', CAST(N'2021-09-03' AS Date), N'KH0004', N'NV0005', N'TTQ024')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ024-03', CAST(N'2021-09-03' AS Date), N'KH0005', N'NV0005', N'TTQ024')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ024-04', CAST(N'2021-09-03' AS Date), N'KH0006', N'NV0005', N'TTQ024')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ024-05', CAST(N'2021-09-03' AS Date), N'KH0007', N'NV0005', N'TTQ024')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ024-06', CAST(N'2021-09-03' AS Date), N'KH0008', N'NV0005', N'TTQ024')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ024-07', CAST(N'2021-09-03' AS Date), N'KH0009', N'NV0005', N'TTQ024')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ024-08', CAST(N'2021-09-03' AS Date), N'KH0010', N'NV0005', N'TTQ024')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ024-09', CAST(N'2021-09-03' AS Date), N'KH0011', N'NV0005', N'TTQ024')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ024-10', CAST(N'2021-09-03' AS Date), N'KH0012', N'NV0005', N'TTQ024')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ024-11', CAST(N'2021-09-03' AS Date), N'KH0013', N'NV0005', N'TTQ024')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ025-01', CAST(N'2021-10-09' AS Date), N'KH0014', N'NV0006', N'TTQ025')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ025-02', CAST(N'2021-10-09' AS Date), N'KH0015', N'NV0006', N'TTQ025')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ025-03', CAST(N'2021-10-09' AS Date), N'KH0016', N'NV0006', N'TTQ025')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ025-04', CAST(N'2021-10-09' AS Date), N'KH0017', N'NV0006', N'TTQ025')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ025-05', CAST(N'2021-10-09' AS Date), N'KH0018', N'NV0006', N'TTQ025')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ025-06', CAST(N'2021-10-09' AS Date), N'KH0019', N'NV0006', N'TTQ025')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ025-07', CAST(N'2021-10-09' AS Date), N'KH0020', N'NV0006', N'TTQ025')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ025-08', CAST(N'2021-10-09' AS Date), N'KH0021', N'NV0006', N'TTQ025')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ025-09', CAST(N'2021-10-09' AS Date), N'KH0022', N'NV0006', N'TTQ025')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ025-10', CAST(N'2021-10-09' AS Date), N'KH0023', N'NV0006', N'TTQ025')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ025-11', CAST(N'2021-10-09' AS Date), N'KH0024', N'NV0006', N'TTQ025')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ025-12', CAST(N'2021-10-28' AS Date), N'KH0025', N'NV0006', N'TTQ025')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ026-01', CAST(N'2021-10-28' AS Date), N'KH0026', N'NV0007', N'TTQ026')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ026-02', CAST(N'2021-10-28' AS Date), N'KH0027', N'NV0007', N'TTQ026')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ026-03', CAST(N'2021-10-28' AS Date), N'KH0028', N'NV0007', N'TTQ026')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ026-04', CAST(N'2021-10-28' AS Date), N'KH0029', N'NV0007', N'TTQ026')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ026-05', CAST(N'2021-10-28' AS Date), N'KH0030', N'NV0007', N'TTQ026')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ026-06', CAST(N'2021-10-28' AS Date), N'KH0031', N'NV0007', N'TTQ026')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ026-07', CAST(N'2021-10-28' AS Date), N'KH0032', N'NV0007', N'TTQ026')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ026-08', CAST(N'2021-10-28' AS Date), N'KH0033', N'NV0007', N'TTQ026')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ026-09', CAST(N'2021-10-28' AS Date), N'KH0034', N'NV0007', N'TTQ026')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ026-10', CAST(N'2021-10-28' AS Date), N'KH0035', N'NV0007', N'TTQ026')
GO
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ026-11', CAST(N'2021-10-28' AS Date), N'KH0036', N'NV0007', N'TTQ026')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ026-12', CAST(N'2021-10-28' AS Date), N'KH0037', N'NV0007', N'TTQ026')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ026-13', CAST(N'2021-10-28' AS Date), N'KH0038', N'NV0007', N'TTQ026')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-01', CAST(N'2021-11-22' AS Date), N'KH0039', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-02', CAST(N'2021-11-22' AS Date), N'KH0040', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-03', CAST(N'2021-11-22' AS Date), N'KH0041', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-04', CAST(N'2021-11-22' AS Date), N'KH0042', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-05', CAST(N'2021-11-22' AS Date), N'KH0043', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-06', CAST(N'2021-11-22' AS Date), N'KH0044', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-07', CAST(N'2021-11-22' AS Date), N'KH0045', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-08', CAST(N'2021-11-22' AS Date), N'KH0046', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-09', CAST(N'2021-11-22' AS Date), N'KH0047', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-10', CAST(N'2021-11-22' AS Date), N'KH0048', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-11', CAST(N'2021-11-22' AS Date), N'KH0049', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-12', CAST(N'2021-11-22' AS Date), N'KH0050', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-13', CAST(N'2021-11-22' AS Date), N'KH0051', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-14', CAST(N'2021-11-22' AS Date), N'KH0052', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ027-15', CAST(N'2021-05-29' AS Date), N'KH0100', N'NV0001', N'TTQ027')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ028-01', CAST(N'2021-05-13' AS Date), N'KH0053', N'NV0002', N'TTQ028')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ028-02', CAST(N'2021-05-13' AS Date), N'KH0054', N'NV0002', N'TTQ028')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ028-03', CAST(N'2021-05-13' AS Date), N'KH0055', N'NV0002', N'TTQ028')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ028-04', CAST(N'2021-05-13' AS Date), N'KH0056', N'NV0002', N'TTQ028')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ028-05', CAST(N'2021-05-13' AS Date), N'KH0057', N'NV0002', N'TTQ028')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ028-06', CAST(N'2021-05-13' AS Date), N'KH0058', N'NV0002', N'TTQ028')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ028-07', CAST(N'2021-05-13' AS Date), N'KH0059', N'NV0002', N'TTQ028')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ028-08', CAST(N'2021-05-13' AS Date), N'KH0060', N'NV0002', N'TTQ028')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ028-09', CAST(N'2021-05-13' AS Date), N'KH0061', N'NV0002', N'TTQ028')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ028-10', CAST(N'2021-05-13' AS Date), N'KH0062', N'NV0002', N'TTQ028')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ029-01', CAST(N'2021-07-15' AS Date), N'KH0063', N'NV0003', N'TTQ029')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ029-02', CAST(N'2021-07-15' AS Date), N'KH0064', N'NV0003', N'TTQ029')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ029-03', CAST(N'2021-07-15' AS Date), N'KH0065', N'NV0003', N'TTQ029')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ029-04', CAST(N'2021-07-15' AS Date), N'KH0066', N'NV0003', N'TTQ029')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ029-05', CAST(N'2021-07-15' AS Date), N'KH0067', N'NV0003', N'TTQ029')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ029-06', CAST(N'2021-07-15' AS Date), N'KH0068', N'NV0003', N'TTQ029')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ029-07', CAST(N'2021-07-15' AS Date), N'KH0069', N'NV0003', N'TTQ029')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ029-08', CAST(N'2021-07-15' AS Date), N'KH0070', N'NV0003', N'TTQ029')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ029-09', CAST(N'2021-07-15' AS Date), N'KH0071', N'NV0003', N'TTQ029')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ029-10', CAST(N'2021-07-15' AS Date), N'KH0072', N'NV0003', N'TTQ029')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ030-01', CAST(N'2021-09-18' AS Date), N'KH0073', N'NV0004', N'TTQ030')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ030-02', CAST(N'2021-09-18' AS Date), N'KH0074', N'NV0004', N'TTQ030')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ030-03', CAST(N'2021-09-18' AS Date), N'KH0075', N'NV0004', N'TTQ030')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ030-04', CAST(N'2021-09-18' AS Date), N'KH0076', N'NV0004', N'TTQ030')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ030-05', CAST(N'2021-09-18' AS Date), N'KH0077', N'NV0004', N'TTQ030')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ030-06', CAST(N'2021-09-18' AS Date), N'KH0078', N'NV0004', N'TTQ030')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ030-07', CAST(N'2021-09-18' AS Date), N'KH0079', N'NV0004', N'TTQ030')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ030-08', CAST(N'2021-09-18' AS Date), N'KH0080', N'NV0004', N'TTQ030')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ030-09', CAST(N'2021-09-18' AS Date), N'KH0081', N'NV0004', N'TTQ030')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ030-10', CAST(N'2021-09-18' AS Date), N'KH0082', N'NV0004', N'TTQ030')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ030-11', CAST(N'2021-09-18' AS Date), N'KH0083', N'NV0004', N'TTQ030')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ030-12', CAST(N'2021-09-18' AS Date), N'KH0084', N'NV0004', N'TTQ030')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ030-13', CAST(N'2021-09-18' AS Date), N'KH0085', N'NV0004', N'TTQ030')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ031-01', CAST(N'2020-03-04' AS Date), N'KH0086', N'NV0005', N'TTQ031')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ031-02', CAST(N'2020-03-04' AS Date), N'KH0087', N'NV0005', N'TTQ031')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ031-03', CAST(N'2020-03-04' AS Date), N'KH0088', N'NV0005', N'TTQ031')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ031-04', CAST(N'2020-03-04' AS Date), N'KH0089', N'NV0005', N'TTQ031')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ031-05', CAST(N'2020-03-04' AS Date), N'KH0090', N'NV0005', N'TTQ031')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ031-06', CAST(N'2020-03-04' AS Date), N'KH0091', N'NV0005', N'TTQ031')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ031-07', CAST(N'2020-03-04' AS Date), N'KH0092', N'NV0005', N'TTQ031')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ031-08', CAST(N'2020-03-04' AS Date), N'KH0093', N'NV0005', N'TTQ031')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ031-09', CAST(N'2020-03-04' AS Date), N'KH0094', N'NV0005', N'TTQ031')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ031-10', CAST(N'2020-03-04' AS Date), N'KH0095', N'NV0005', N'TTQ031')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ031-11', CAST(N'2020-03-04' AS Date), N'KH0096', N'NV0005', N'TTQ031')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ031-12', CAST(N'2020-03-04' AS Date), N'KH0097', N'NV0005', N'TTQ031')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ032-01', CAST(N'2020-04-08' AS Date), N'KH0098', N'NV0006', N'TTQ032')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ032-02', CAST(N'2020-04-08' AS Date), N'KH0099', N'NV0006', N'TTQ032')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ032-03', CAST(N'2020-04-08' AS Date), N'KH0100', N'NV0006', N'TTQ032')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ032-04', CAST(N'2020-04-08' AS Date), N'KH0001', N'NV0006', N'TTQ032')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ032-05', CAST(N'2020-04-08' AS Date), N'KH0002', N'NV0006', N'TTQ032')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ032-06', CAST(N'2020-04-08' AS Date), N'KH0003', N'NV0006', N'TTQ032')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ032-07', CAST(N'2020-04-08' AS Date), N'KH0004', N'NV0006', N'TTQ032')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ032-08', CAST(N'2020-04-08' AS Date), N'KH0005', N'NV0006', N'TTQ032')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ032-09', CAST(N'2020-04-08' AS Date), N'KH0006', N'NV0006', N'TTQ032')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ032-10', CAST(N'2020-04-08' AS Date), N'KH0007', N'NV0006', N'TTQ032')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ032-11', CAST(N'2020-04-08' AS Date), N'KH0008', N'NV0006', N'TTQ032')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ033-01', CAST(N'2020-05-09' AS Date), N'KH0009', N'NV0007', N'TTQ033')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ033-02', CAST(N'2020-05-09' AS Date), N'KH0010', N'NV0007', N'TTQ033')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ033-03', CAST(N'2020-05-09' AS Date), N'KH0011', N'NV0007', N'TTQ033')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ033-04', CAST(N'2020-05-09' AS Date), N'KH0012', N'NV0007', N'TTQ033')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ033-05', CAST(N'2020-05-09' AS Date), N'KH0013', N'NV0007', N'TTQ033')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ033-06', CAST(N'2020-05-09' AS Date), N'KH0014', N'NV0007', N'TTQ033')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ033-07', CAST(N'2020-05-09' AS Date), N'KH0015', N'NV0007', N'TTQ033')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ033-08', CAST(N'2020-05-09' AS Date), N'KH0016', N'NV0007', N'TTQ033')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ033-09', CAST(N'2020-05-09' AS Date), N'KH0017', N'NV0007', N'TTQ033')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ033-10', CAST(N'2020-05-09' AS Date), N'KH0018', N'NV0007', N'TTQ033')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ034-01', CAST(N'2020-09-04' AS Date), N'KH0019', N'NV0001', N'TTQ034')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ034-02', CAST(N'2020-09-04' AS Date), N'KH0020', N'NV0001', N'TTQ034')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ034-03', CAST(N'2020-09-04' AS Date), N'KH0021', N'NV0001', N'TTQ034')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ034-04', CAST(N'2020-09-04' AS Date), N'KH0022', N'NV0001', N'TTQ034')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ034-05', CAST(N'2020-09-04' AS Date), N'KH0023', N'NV0001', N'TTQ034')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ034-06', CAST(N'2020-09-04' AS Date), N'KH0024', N'NV0001', N'TTQ034')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ034-07', CAST(N'2020-09-04' AS Date), N'KH0025', N'NV0001', N'TTQ034')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ034-08', CAST(N'2020-09-04' AS Date), N'KH0026', N'NV0001', N'TTQ034')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ034-09', CAST(N'2020-09-04' AS Date), N'KH0027', N'NV0001', N'TTQ034')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ034-10', CAST(N'2020-09-04' AS Date), N'KH0028', N'NV0001', N'TTQ034')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ034-11', CAST(N'2020-09-04' AS Date), N'KH0029', N'NV0001', N'TTQ034')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ035-01', CAST(N'2020-12-01' AS Date), N'KH0030', N'NV0002', N'TTQ035')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ035-02', CAST(N'2020-12-01' AS Date), N'KH0031', N'NV0002', N'TTQ035')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ035-03', CAST(N'2020-12-01' AS Date), N'KH0032', N'NV0002', N'TTQ035')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ035-04', CAST(N'2020-12-01' AS Date), N'KH0033', N'NV0002', N'TTQ035')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ035-05', CAST(N'2020-12-01' AS Date), N'KH0034', N'NV0002', N'TTQ035')
GO
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ035-06', CAST(N'2020-12-01' AS Date), N'KH0035', N'NV0002', N'TTQ035')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ035-07', CAST(N'2020-12-01' AS Date), N'KH0036', N'NV0002', N'TTQ035')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ035-08', CAST(N'2020-12-01' AS Date), N'KH0037', N'NV0002', N'TTQ035')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ035-09', CAST(N'2020-12-01' AS Date), N'KH0038', N'NV0002', N'TTQ035')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ035-10', CAST(N'2020-12-01' AS Date), N'KH0039', N'NV0002', N'TTQ035')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ036-01', CAST(N'2020-04-04' AS Date), N'KH0040', N'NV0003', N'TTQ036')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ036-02', CAST(N'2020-04-04' AS Date), N'KH0041', N'NV0003', N'TTQ036')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ036-03', CAST(N'2020-04-04' AS Date), N'KH0042', N'NV0003', N'TTQ036')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ036-04', CAST(N'2020-04-04' AS Date), N'KH0043', N'NV0003', N'TTQ036')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ036-05', CAST(N'2020-04-04' AS Date), N'KH0044', N'NV0003', N'TTQ036')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ036-06', CAST(N'2020-04-04' AS Date), N'KH0045', N'NV0003', N'TTQ036')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ036-07', CAST(N'2020-04-04' AS Date), N'KH0046', N'NV0003', N'TTQ036')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ036-08', CAST(N'2020-04-04' AS Date), N'KH0047', N'NV0003', N'TTQ036')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ036-09', CAST(N'2020-04-04' AS Date), N'KH0048', N'NV0003', N'TTQ036')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ036-10', CAST(N'2020-04-04' AS Date), N'KH0049', N'NV0003', N'TTQ036')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ036-11', CAST(N'2020-04-04' AS Date), N'KH0050', N'NV0003', N'TTQ036')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ036-12', CAST(N'2020-04-04' AS Date), N'KH0051', N'NV0003', N'TTQ036')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ037-01', CAST(N'2020-06-28' AS Date), N'KH0052', N'NV0004', N'TTQ037')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ037-02', CAST(N'2020-06-28' AS Date), N'KH0053', N'NV0004', N'TTQ037')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ037-03', CAST(N'2020-06-28' AS Date), N'KH0054', N'NV0004', N'TTQ037')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ037-04', CAST(N'2020-06-28' AS Date), N'KH0055', N'NV0004', N'TTQ037')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ037-05', CAST(N'2020-06-28' AS Date), N'KH0056', N'NV0004', N'TTQ037')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ037-06', CAST(N'2020-06-28' AS Date), N'KH0057', N'NV0004', N'TTQ037')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ037-07', CAST(N'2020-06-28' AS Date), N'KH0058', N'NV0004', N'TTQ037')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ037-08', CAST(N'2020-06-28' AS Date), N'KH0059', N'NV0004', N'TTQ037')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ037-09', CAST(N'2020-06-28' AS Date), N'KH0060', N'NV0004', N'TTQ037')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ037-10', CAST(N'2020-06-28' AS Date), N'KH0061', N'NV0004', N'TTQ037')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-01', CAST(N'2020-08-02' AS Date), N'KH0062', N'NV0005', N'TTQ038')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-02', CAST(N'2020-08-02' AS Date), N'KH0063', N'NV0005', N'TTQ038')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-03', CAST(N'2020-08-02' AS Date), N'KH0064', N'NV0005', N'TTQ038')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-04', CAST(N'2020-08-02' AS Date), N'KH0065', N'NV0005', N'TTQ038')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-05', CAST(N'2020-08-02' AS Date), N'KH0066', N'NV0005', N'TTQ038')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-06', CAST(N'2020-08-02' AS Date), N'KH0067', N'NV0005', N'TTQ038')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-07', CAST(N'2020-08-02' AS Date), N'KH0068', N'NV0005', N'TTQ038')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-08', CAST(N'2020-08-02' AS Date), N'KH0069', N'NV0005', N'TTQ038')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-09', CAST(N'2020-08-02' AS Date), N'KH0070', N'NV0005', N'TTQ038')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-10', CAST(N'2020-08-02' AS Date), N'KH0071', N'NV0005', N'TTQ038')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-11', CAST(N'2020-08-02' AS Date), N'KH0072', N'NV0005', N'TTQ038')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-12', CAST(N'2020-08-02' AS Date), N'KH0073', N'NV0005', N'TTQ038')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-13', CAST(N'2020-08-02' AS Date), N'KH0074', N'NV0005', N'TTQ038')
INSERT [dbo].[Ves] ([maVe], [ngayDatVe], [maKH], [maNV], [maTour]) VALUES (N'TTQ038-14', CAST(N'2020-08-02' AS Date), N'KH0075', N'NV0005', N'TTQ038')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_morbp25pqpoo0t8sw93oamdja]    Script Date: 11/29/2021 10:59:19 PM ******/
ALTER TABLE [dbo].[NhanViens] ADD  CONSTRAINT [UK_morbp25pqpoo0t8sw93oamdja] UNIQUE NONCLUSTERED 
(
	[cmnd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaiKhoans]  WITH CHECK ADD  CONSTRAINT [FK2l7sslheujxq9icmg7iqpgtg0] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanViens] ([maNV])
GO
ALTER TABLE [dbo].[TaiKhoans] CHECK CONSTRAINT [FK2l7sslheujxq9icmg7iqpgtg0]
GO
ALTER TABLE [dbo].[Tours]  WITH CHECK ADD  CONSTRAINT [FK47erv5ntsqq27ydsqgoyd1v43] FOREIGN KEY([maDiaDanh])
REFERENCES [dbo].[DiaDanhs] ([maDiaDanh])
GO
ALTER TABLE [dbo].[Tours] CHECK CONSTRAINT [FK47erv5ntsqq27ydsqgoyd1v43]
GO
ALTER TABLE [dbo].[Tours]  WITH CHECK ADD  CONSTRAINT [FKe1krglhx63o6bupryqwq1nptb] FOREIGN KEY([maHuongDanVien])
REFERENCES [dbo].[HuongDanViens] ([maHuongDanVien])
GO
ALTER TABLE [dbo].[Tours] CHECK CONSTRAINT [FKe1krglhx63o6bupryqwq1nptb]
GO
ALTER TABLE [dbo].[Tours]  WITH CHECK ADD  CONSTRAINT [FKkjjiwtf83hpwmi8esy5yfj6il] FOREIGN KEY([maLoaiTour])
REFERENCES [dbo].[LoaiTours] ([maLoaiTour])
GO
ALTER TABLE [dbo].[Tours] CHECK CONSTRAINT [FKkjjiwtf83hpwmi8esy5yfj6il]
GO
ALTER TABLE [dbo].[Ves]  WITH CHECK ADD  CONSTRAINT [FK5uae9v7choi71q5py84phhnh5] FOREIGN KEY([maTour])
REFERENCES [dbo].[Tours] ([maTour])
GO
ALTER TABLE [dbo].[Ves] CHECK CONSTRAINT [FK5uae9v7choi71q5py84phhnh5]
GO
ALTER TABLE [dbo].[Ves]  WITH CHECK ADD  CONSTRAINT [FK8uy352g77edrdch28kqnpiyu1] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanViens] ([maNV])
GO
ALTER TABLE [dbo].[Ves] CHECK CONSTRAINT [FK8uy352g77edrdch28kqnpiyu1]
GO
ALTER TABLE [dbo].[Ves]  WITH CHECK ADD  CONSTRAINT [FKb3bejulleixcnewirswdmw1wj] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHangs] ([maKH])
GO
ALTER TABLE [dbo].[Ves] CHECK CONSTRAINT [FKb3bejulleixcnewirswdmw1wj]
GO
