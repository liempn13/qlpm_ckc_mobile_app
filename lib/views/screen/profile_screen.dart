import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quản Lý Thông Tin Cá Nhân"),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Họ và tên"),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Không được để trống';
                }
                // Kiểm tra không có khoảng trắng ở cuối tên
                if (value.trim() != value) {
                  return 'Không được có khoảng trắng thừa\nở đầu hoặc cuối';
                }
                if (value.length < 4) {
                  return 'Họ và Tên phải có ít nhất 4 ký tự';
                }

                // Regex kiểm tra ký tự đặc biệt
                if (RegExp(
                        r"^[a-zA-ZÂÃÈÉÊÙÚĂĐŨƠÀÁẠÃàáạãâầấậẤẦẪẬÂẫấậẫầãèéêìíòóôõùúăđĩũơƯĂẮẰẲẴẶẤẦẨẪẬắằẳẵặéèẻẽẹêềếểễệẾỀỆỄíìỉĩịỊÌÍĨÒÓÕỌòóỏõọôồÔỒỘỐỖÔốổỗộơờớởỡợùúủÙÚỤUŨũụưừứửỪỰỮỨữựýỳỷỹỵ\s]+$")
                    .hasMatch(value)) {
                  return 'Họ và Tên không hợp lệ. Vui lòng\nnhập đúng định dạng.';
                }
                // Kiểm tra và chuyển chữ cái đầu tiên của mỗi từ thành chữ hoa
                List<String> words = value.split(" ");
                for (int i = 0; i < words.length; i++) {
                  // Chuyển chữ cái đầu tiên của mỗi từ thành chữ hoa
                  words[i] = words[i].substring(0, 1).toUpperCase() +
                      words[i].substring(1).toLowerCase();
                }
                String capitalizedName = words.join(" ");
                // Kiểm tra xem tên có đúng định dạng hay không (chữ cái đầu tiên mỗi từ viết hoa)
                if (value != capitalizedName) {
                  return 'Chữ cái đầu tiên của mỗi từ phải\n viết hoa.';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                label: const Text("Email"),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Không được để trống';
                }
                if (RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                    .hasMatch(value)) {
                  return 'Email không hợp lệ';
                }
                // Kiểm tra độ dài phần trước @
                final localPart = value.split('@')[0];
                if (localPart.length < 6 || localPart.length > 30) {
                  return 'Phần trước @ phải từ 6-30 ký tự';
                }
                if (value.length > 254) {
                  return 'Email không được vượt quá 254 ký tự';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(label: Text("Số điện thoại")),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Không được để trống';
                }
                if (value.length > 11 && value.length < 10) {
                  return 'Số điện thoại không hợp lệ';
                }
                if (!value.startsWith('0')) {
                  return 'Số điện thoại phải bắt đầu bằng số 0';
                }
                if (RegExp(r'^[0-9]+$').hasMatch(value)) {
                  return 'Số điện thoại chỉ gồm số';
                }
                if (value.startsWith('00')) {
                  return 'Số điện thoại không được bắt đầu bằng 00';
                }
                return null;
              },
            ),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(label: Text("Quyền")),
            ),
            ElevatedButton(onPressed: () {}, child: Text(""))
          ],
        ),
      ),
    );
  }
}
