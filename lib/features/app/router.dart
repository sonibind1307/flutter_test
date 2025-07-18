import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../booking/presentation/create_booking_screen.dart';
import '../booking/presentation/bookings_page.dart';
import '../common/presentation/widgets/dashboard_layout.dart';
import '../register_patient/presentation/pages/register_patient_page.dart';
import '../report/presentation/report_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/reports',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return DashboardLayout(location: state.matchedLocation, child: child);
      },
      routes: [
        GoRoute(
          path: '/bookings',
          builder: (context, state) => const BookingsPage(),
        ),
        GoRoute(
          path: '/reports',
          builder: (context, state) => const ReportsPage(),
        ),
        GoRoute(
          path: '/create-booking',
          builder: (context, state) => const CreateBookingPage(),
        ),
        GoRoute(
          path: '/register-patient',
          builder: (context, state) => const RegisterPatientPage(),
        ),
      ],
    ),
  ],
);
