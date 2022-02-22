import 'package:equatable/equatable.dart';

class Message extends Equatable {
  final String name;
  final String? email;
  final String? phoneNumber;
  final String message;
  final String? ip;

  const Message({
    required this.name,
    this.email,
    this.phoneNumber,
    required this.message,
    this.ip,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        phoneNumber,
        message,
        ip,
      ];

  Message copyWith({
    String? name,
    String? email,
    String? phoneNumber,
    String? message,
    String? ip,
  }) {
    return Message(
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      message: message ?? this.message,
      ip: ip ?? this.ip,
    );
  }
}
