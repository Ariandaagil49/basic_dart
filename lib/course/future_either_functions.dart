import 'package:dartz/dartz.dart';

// =================================
// 15. DEMO FUTURE + EITHER
// =================================
void demoFutureEither(Function(String) updateOutput) async {
  String result = "=== FUTURE + EITHER ===\n\n";
  result += "Menjalankan operasi async dengan Either...\n";
  updateOutput(result); // tampilkan progres awal

  // 1) Contoh sukses & gagal: pembagian
  final resBagiOk = await _bagiEither(10, 2);
  result += resBagiOk.fold(
    (err) => "bagi(10, 2) → Error: $err\n",
    (val) => "bagi(10, 2) = $val\n",
  );

  final resBagiErr = await _bagiEither(7, 0);
  result += resBagiErr.fold(
    (err) => "bagi(7, 0) → Error: $err\n",
    (val) => "bagi(7, 0) = $val\n",
  );

  // 2) Contoh proses lain: login
  final resLogin = await _loginEither("admin", "1234");
  result += resLogin.fold(
    (err) => "login(admin, ***) → $err\n",
    (msg) => "login(admin, ***) → $msg\n",
  );
  updateOutput(result);
}

// ====== IMPLEMENTASI FUNCTION EITHER ======

Future<Either<String, int>> _bagiEither(int a, int b) async {
  await Future.delayed(const Duration(milliseconds: 400));
  if (b == 0) return Left("Tidak bisa bagi dengan 0");
  return Right(a ~/ b);
}

Future<Either<String, String>> _loginEither(
  String username,
  String password,
) async {
  await Future.delayed(const Duration(milliseconds: 500));
  if (username == "admin" && password == "1234") {
    return const Right("Login sukses!");
  }
  return const Left("Username atau password salah");
}
