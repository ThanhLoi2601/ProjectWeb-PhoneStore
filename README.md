# ProjectWeb-PhoneStore
1.1 Mô tả sơ lược về Website 
Website bán điện thoại di động là website bán hàng về mặt hàng điện thoại với 4 thương hiệu chính là Samsung, Iphone, Realme, Xiaomi. Ngoài ra, còn có bán thêm các phụ kiện tùy vào từng hãng.
Website được chia làm 2 chế độ người dùng chính:
- Chế độ Khách hàng: dành cho khách hàng mua sắm điện thoại. Dưới đây là một vài tài khoản khách hàng đã đăng ký rồi:
Username	Password
luckyhihi	lucky123
join 	123
alenk	123456789

- Chế độ Chủ Shop (Admin): dành cho chủ Shop có thể truy cập vào web để có thể thao tác các sản phẩm và quản lý doanh số của shop mình.Tài khoản của Admin như sau:
+ Username: maser5342
+ Password: 123456789
1.2 Mô tả về chức năng bài toán
1.2.1 Chức năng chung
a) Chức năng đăng ký/ đăng nhập
Mỗi khách hàng hay Admin muốn truy cập vào trang web của mình cần đi qua chức năng đăng nhập này. Chức năng này là chức năng khởi đầu của website
Đối với khách hàng chưa có tài khoản thì cần truy cập vào chức năng đăng ký để có tài khoản đăng nhập
b) Chức năng lọc sản phẩm
Chức năng giúp người dùng tìm kiếm thông tin sản phẩm theo Loại sản phẩm, trạng thái 
1.2.2 Chức năng dành cho khách hàng
a) Chức năng lưu trữ thông tin khách hàng/ xem thông tin shop 
Khi đăng ký tài khoản, người dùng có đăng ký thông tin của bản thân, thông tin này sẽ được lưu trữ theo khách hàng. Ngoài ra, khách hàng còn có thể xem thông tin của shop như địa điểm, thông tin chủ shop, ....
b) Chức năng quản lý giỏ hàng
Chức năng này cho phép khách hàng thêm hoặc xóa sản phẩm trong giỏ hàng và giỏ hàng tồn tại vĩnh viễn 
c) Chức năng khuyến mãi
Áp dụng các khuyến mãi của shop vào hóa đơn 
d) Chức năng thanh toán sản phẩm 
Chức năng này cho phép khách hàng tiến hành thanh toán các sản phẩm có trong vỏ hàng	
e) Chức năng đánh giá sản phẩm (đã mua)
Chức năng cho phép khách hàng đánh giá sản phẩm khi đã mua và sử dụng, những đánh giá này sẽ xuất hiện trong chi tiết của sản phẩm để người mua khác có thể tham khảo
1.2.3 Chức năng dành cho chủ shop
a) Chức năng quản lý sản phẩm và mã giảm giá (thêm/xóa/sửa) 
Chức năng này cho phép chủ shop có thể điều chỉnh, thêm hoặc xóa sản phẩm. Đồng thời, chủ shop có thể điều chỉnh thời gian sử dụng các giảm giá của shop
b) Chức năng xem hóa đơn thanh toán và gửi xác nhận 
Chức năng này cho phép chủ shop xem các hóa đơn thanh toán và gửi email xác nhận thanh toán qua email khách hàng
c) Chức năng xem đánh giá sản phẩm của khách hàng 
Chức năng này cho phép chủ shop có thể xem đánh giá của khách hàng về các sản phẩm đang được bán để lên chiến lược kinh doanh
d)Chức năng thống kê doanh số bán hàng 
Chức năng này sẽ thống kê các doanh số gần đây của các sản phẩm
e) Chức năng quản trị các tài khoản khách hàng 
Chức năng này giúp chủ shop có thể quản lý các tài khoản đã đăng ký và loại bỏ các tài khoản đã lâu không được sử dụng
1.3 Công nghệ sử dụng
- Ngôn ngữ Java Web: jdk-17
- Server: Tomcat 9.0.8
- Database MySQL hosting trên AWS: mydatabase.ceorv57yblio.us-east-1.rds.amazonaws.com
- IDE: Netbeans
- Github: https://github.com/ThanhLoi2601/ProjectWeb-PhoneStore 
	- Link deploy hosting: https://phonestore-sxmr.onrender.com/PhoneStore 
