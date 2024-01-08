// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:yellow_squash/app/app_router.dart' as _i3;
import 'package:yellow_squash/modules/router_di.dart' as _i27;
import 'package:yellow_squash/screens/auth_screen/cubit/login_cubit.dart'
    as _i25;
import 'package:yellow_squash/screens/auth_screen/repository/login_repository.dart'
    as _i12;
import 'package:yellow_squash/screens/description_screen/repository/program_description_repository.dart'
    as _i15;
import 'package:yellow_squash/screens/expert_description_screen%20/repository/expert_description_repository.dart'
    as _i6;
import 'package:yellow_squash/screens/expert_screen/repository/expert_repository.dart'
    as _i7;
import 'package:yellow_squash/screens/favourite_screen/repository/favourite_repository.dart'
    as _i22;
import 'package:yellow_squash/screens/health_pedia/cubit/health_pedia_cubit.dart'
    as _i23;
import 'package:yellow_squash/screens/health_pedia/repository/health_pedia_repository.dart'
    as _i9;
import 'package:yellow_squash/screens/health_pedia_description_screen/repository/health_pedia_description_repository.dart'
    as _i8;
import 'package:yellow_squash/screens/health_pedia_videos/repository/heallth_pedia_videos_repository.dart'
    as _i10;
import 'package:yellow_squash/screens/home_screen/cubit/home_cubit.dart'
    as _i24;
import 'package:yellow_squash/screens/home_screen/repository/home_repository.dart'
    as _i11;
import 'package:yellow_squash/screens/my_program/repository/myprogram_repository.dart'
    as _i13;
import 'package:yellow_squash/screens/my_webinar_screen/repository/my_webinar_repository.dart'
    as _i14;
import 'package:yellow_squash/screens/payment_Screen/repository/payment_repository.dart'
    as _i16;
import 'package:yellow_squash/screens/program_screen/cubit/program_cubit_cubit.dart'
    as _i26;
import 'package:yellow_squash/screens/program_screen/repository/program_repository.dart'
    as _i17;
import 'package:yellow_squash/screens/upcoming_progam_screen/repository/upcoming_program_repository.dart'
    as _i18;
import 'package:yellow_squash/screens/UserProfile/repository/user_profile_repository.dart'
    as _i19;
import 'package:yellow_squash/screens/webinar_description_screen/repository/webinar_description_repository.dart'
    as _i20;
import 'package:yellow_squash/screens/webinars_screen/repository/webinar_repository.dart'
    as _i21;
import 'package:yellow_squash/utils/networking/dio_client.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final routerInjection = _$RouterInjection();
    gh.lazySingleton<_i3.AppRouter>(() => routerInjection.router());
    gh.lazySingleton<_i4.DioClient>(() => _i4.DioClient(
          gh<String>(),
          gh<_i5.Dio>(),
          interceptors: gh<List<_i5.Interceptor>>(),
        ));
    gh.lazySingleton<_i6.ExpertDescriptionRepository>(
        () => _i6.ExpertDescriptionRepository());
    gh.lazySingleton<_i7.ExpertRepository>(() => _i7.ExpertRepository());
    gh.lazySingleton<_i8.HealthDescriptionRespository>(
        () => _i8.HealthDescriptionRespository());
    gh.lazySingleton<_i9.HealthPediaRepository>(
        () => _i9.HealthPediaRepository());
    gh.lazySingleton<_i10.HealthPediaVideoRepository>(
        () => _i10.HealthPediaVideoRepository());
    gh.lazySingleton<_i11.HomeRepository>(() => _i11.HomeRepository());
    gh.lazySingleton<_i12.LoginRepository>(() => _i12.LoginRepository());
    gh.lazySingleton<_i13.MyProgramRepository>(
        () => _i13.MyProgramRepository());
    gh.lazySingleton<_i14.MywebinarRepository>(
        () => _i14.MywebinarRepository());
    gh.lazySingleton<_i15.ProgramDescriptionRepository>(
        () => _i15.ProgramDescriptionRepository());
    gh.lazySingleton<_i16.ProgramPaymentOrderRepository>(
        () => _i16.ProgramPaymentOrderRepository());
    gh.lazySingleton<_i17.ProgramRepository>(() => _i17.ProgramRepository());
    gh.lazySingleton<_i18.UpcomingProgramRepository>(
        () => _i18.UpcomingProgramRepository());
    gh.lazySingleton<_i19.UserProfileRepository>(
        () => _i19.UserProfileRepository());
    gh.lazySingleton<_i20.WebinarDescriptionRepository>(
        () => _i20.WebinarDescriptionRepository());
    gh.lazySingleton<_i21.WebinarRepository>(() => _i21.WebinarRepository());
    gh.lazySingleton<_i22.favouriteRepository>(
        () => _i22.favouriteRepository());
    gh.lazySingleton<_i23.HealthPediaCubit>(
        () => _i23.HealthPediaCubit(gh<_i9.HealthPediaRepository>()));
    gh.lazySingleton<_i24.HomeCubit>(
        () => _i24.HomeCubit(gh<_i11.HomeRepository>()));
    gh.lazySingleton<_i25.LoginCubit>(
        () => _i25.LoginCubit(gh<_i12.LoginRepository>()));
    gh.lazySingleton<_i26.ProgramCubit>(
        () => _i26.ProgramCubit(gh<_i17.ProgramRepository>()));
    return this;
  }
}

class _$RouterInjection extends _i27.RouterInjection {}
