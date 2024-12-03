// import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
//
// String extractUserIdFromJWT(String jwt) {
//   try {
//     // Decode the JWT
//     final jwtDecoded = JWT.decode(jwt);
//
//     // Extract user ID (assuming it's in the "sub" claim)
//     final userId = jwtDecoded['sub'];
//
//     if (userId != null) {
//       return userId;
//     } else {
//       throw 'User ID not found in the JWT';
//     }
//   } catch (e) {
//     print('Error decoding JWT: $e');
//     return '';
//   }
// }
