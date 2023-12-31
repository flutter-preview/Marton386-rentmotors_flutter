// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "app_name": "Рентмоторс",
  "stations": "Станции",
  "booking": "Бронирование",
  "chat": "Чат",
  "org": "Организации",
  "profile": "Профиль",
  "car_pickup_location": "Место получения автомобиля",
  "return_in_the_same_place": "Возврат в том же месте",
  "next": "Далее",
  "cancel": "Отмена",
  "enter_city_name": "Укажите город",
  "enter_organisation": "Организация",
  "enter_organisation_name": "Введите ИНН или название организации",
  "car_dropOff_location": "Место возврата автомобиля",
  "pickup_date": "Дата получения",
  "dropOff_date": "Дата возврата",
  "per_day": "в сутки",
  "electric": "Electric⚡",
  "rub": "руб",
  "deposit": "депозит",
  "or_similar": "или аналогичный",
  "cost_in_rub": "{currentSum} руб",
  "type_at": "АКПП",
  "type_mt": "МКПП",
  "conditioner": "кондиционер",
  "daily_tariff": "Суточный тариф:",
  "limited_mileage": "Ограниченный пробег:",
  "deposit_caps": "Депозит:",
  "pickup_and_dropoff": "Получение и возврат",
  "enter_address": "Укажите адрес",
  "km": "{currentKm} км",
  "additional_options": "Дополнительные опции",
  "fees": "Сборы",
  "continue_booking": "Продолжить оформление",
  "total": "Итого",
  "for_days": {
    "zero": "за {currentDays} дней",
    "one": "за {currentDays} день",
    "two": "за {currentDays} дня",
    "few": "за {currentDays} дня",
    "many": "за {currentDays} дней",
    "other": "за {currentDays} дней"
  },
  "personal_information": "Персональная информация",
  "last_name": "Фамилия",
  "first_name": "Имя",
  "patronymic": "Отчество",
  "date_format": "дд/мм/гггг",
  "date_of_birth": "Дата рождения",
  "passport_data": "Данные паспорта",
  "series_and_number": "Серия и номер",
  "date_of_issue": "Дата выдачи",
  "citizenship_rf": "Гражданство РФ",
  "issued_by": "Кем выдан",
  "registration_address": "Адрес регистрации",
  "driver_license_data": "Данные водительского удостоверения",
  "contact_data": "Контактные данные",
  "phone": "Телефон",
  "email": "Эл. почта",
  "flight_number": "Номер рейса",
  "special_wishes": "Особые пожелания",
  "save_my_data": "Сохранить мои данные",
  "if_you_flight_delayed": "Если ваш рейс задержится - мы будем знать.",
  "optional": "Если есть",
  "complete_booking": "Завершить бронирование",
  "city_ot_airport": "Город или аэропорт",
  "address": "Адрес",
  "work_hours": "Часы работы",
  "daily_work_hours": "Ежедневно с {firstTime}:00 до {secondTime}:00",
  "return_keybox": "Есть возможность вернуть автомобиль в нерабочее время самостоятоятельно.",
  "booking_finished": "Бронирование успешно завершено, приятной поездки!",
  "we_are_waiting_you": "Мы будем ждать вас",
  "booking_almost_finished": "Ваше бронирование почти завершено.\n\nМы получили вашу заявку и уже обрабатываем полученные от вас данные.\nПожалуйста, ожидайте подтверждения брони на вашу электронную почту.",
  "you_booking_number": "Ваш номер бронирования",
  "pick_up_car": "Получение автомобиля",
  "pick_up_info": "Назовите его нашему менеджеру, когда прибудете получать автомобиль.\n\nБлагодарим за обращение в Рентмоторс!",
  "voucher": "Ваучер отправлен на вашу почту.",
  "required_field": "Обязательное поле",
  "wrong_phone_format": "Телефон указан неверно",
  "wrong_email_format": "Эл. почта указана неверно",
  "not_all_fields_filled": "Не все поля заполнены корректно",
  "error_label": "Ошибка",
  "finish": "Готово",
  "add_to_wallet": "Добавить\nв кошелек",
  "wrong_date_format": "Дата указана неверно",
  "russia": "Россия",
  "passport_issued_by_country": "Страна, выдавшая паспорт",
  "on_map": "На карте",
  "date_too_early": "Нельзя выбрать более раннюю дату",
  "no_available_cars": "Нет доступных автомобилей. Пожалуйста, попробойте выбрать другие даты.",
  "car_on_request": "Под запрос.\nНаличие автомобиля будет подтверждено в течении 24 часов.",
  "choose_car": "Выберите автомобиль",
  "choose_new_car": "Выберите новый автомобиль",
  "personal_data": "Личные данные",
  "your_booking": "Ваше бронирование",
  "rental_stations": "Станции проката",
  "choose_station": "Выберите станцию",
  "choose_org": "Выберите организацию",
  "ok": "Ок",
  "failure_get_pay": "Ошибка получения ссылки для платежа",
  "failure": "Ошибка загрузки данных",
  "failure_get_data": "Не удалось получить данные. Пожалуйста, проверьте подключение к интернету",
  "already_booked": "Бронирование уже завершено",
  "introdused_and_accept": "Ознакомлен(а) и принимаю",
  "org_payment": "Безналичная оплата от Юридического лица",
  "rent_terms": "Условия аренды",
  "privacy_policy": "Политику конфиденциальности",
  "and": "и",
  "yes": "Да",
  "no": "Нет",
  "set_dates_correct": "Установите даты корректно",
  "save_changes": "Сохранить изменения",
  "booking_number": "Номер бронирования",
  "save_email": "Сохранить мою эл. почту",
  "save_new_email": "Ввести и сохранить новую эл. почту",
  "findRes": "Найти",
  "menu": "Меню",
  "time": "Время:",
  "place": "Место:",
  "terms": "Условия:",
  "payment": "Оплата",
  "payment_p": "Оплата:",
  "total_pay": "Итого к оплате:",
  "promotion": "Акция:",
  "client": "Клиент:",
  "email_p": "Эл. почта:",
  "phone_p": "Телефон:",
  "flight": "Рейс:",
  "comment": "Пожелания:",
  "settings": "Настройки",
  "receipt_car": "При получении автомобиля",
  "dropOff_place": "Возврат:",
  "pick_up_place": "Получение:",
  "voucher_conf": "Ваучер",
  "change": "Изменить",
  "mod_res": "Изменить бронь",
  "can_res": "Отменить бронь",
  "cancel_res_title": "Отмена брони",
  "cancel_res_message": "Вы точно хотите отменить бронирование?",
  "car_class": "Класс автомобиля",
  "forgot_email": "Забыть мою эл. почту",
  "tariff_features": "Особенности тарифа",
  "cancel_res_error": "Отмена не удалась",
  "res_been_cancel": "Ваша бронь была отменена",
  "change_res": "Изменение брони",
  "add_inform": "Дополнительная информация",
  "your_res_no_found": "Ваша бронь не найдена",
  "res_was_mod": "Ваше бронирование было изменено",
  "res_mod_error": "Изменение брони не удалось",
  "pleaseEnterToModifyOrCancelReserv": "Пожалуйста, введите email и номер бронирования, чтобы просмотреть, изменить или отменить Ваше бронирование.",
  "pleaseToModifyOrCancelReserv": "Пожалуйста, введите номер бронирования, чтобы просмотреть, изменить или отменить Ваше бронирование.",
  "rent_terms_link": "https://rentmotors.ru/offer/ooorentmotors.pdf",
  "privacy_policy_link": "https://rentmotors.ru/offer/ooorentmotorspp.pdf",
  "could_not_open_file": "Не удалось открыть файл",
  "open_file_with": "Открыть файл с помощью",
  "permission_not_granted": "Разрешение не предоставлено",
  "required_permission": "Необходимо разрешение",
  "to_write_external_storage_rationale": "Для сохранения ваучера в кошелек необходим доступ к хранилищу.",
  "to_write_pdf_external_storage_rationale": "Для сохранения ваучера в формате PDF необходим доступ к хранилищу.",
  "remember_on_this_device": "Запомнить на этом устройстве",
  "save_pdf": "PDF",
  "try_again": "Попробовать снова",
  "book": "Забронировать",
  "rent_terms_error": "Вы не можете продолжить без согласия с политикой конфиденциальности и условиями аренды",
  "place_of_birth": "Место рождения",
  "completion_booking": "Завершение бронирования"
};
static const Map<String,dynamic> en = {
  "app_name": "Rentmotors",
  "stations": "Stations",
  "booking": "Booking",
  "chat": "Chat",
  "org": "Organizations",
  "profile": "Profile",
  "car_pickup_location": "Car pick up location",
  "return_in_the_same_place": "Return in the same place",
  "next": "Next",
  "cancel": "Cancel",
  "enter_city_name": "Enter city name",
  "enter_organisation": "Organization",
  "enter_organisation_name": "Enter TIN or organization name",
  "car_dropOff_location": "Car drop off location",
  "pickup_date": "Pick up date",
  "dropOff_date": "Drop off date",
  "per_day": "per day",
  "electric": "Electric⚡",
  "rub": "RUB",
  "deposit": "deposit",
  "or_similar": "or similar",
  "cost_in_rub": "{currentSum} rub",
  "type_at": "AT",
  "type_mt": "MT",
  "conditioner": "conditioner",
  "daily_tariff": "Daily tariff:",
  "limited_mileage": "Limited mileage:",
  "deposit_caps": "Deposit:",
  "pickup_and_dropoff": "Receipt and return",
  "enter_address": "Enter the address",
  "km": "{currentKm} km",
  "additional_options": "Additional options",
  "fees": "Fees",
  "continue_booking": "Continue booking",
  "total": "Total",
  "for_days": {
    "zero": "for {currentDays} days",
    "one": "for {currentDays} day",
    "two": "for {currentDays} days",
    "few": "for {currentDays} days",
    "many": "for {currentDays} days",
    "other": "for {currentDays} days"
  },
  "personal_information": "Personal information",
  "last_name": "Last name",
  "first_name": "First name",
  "patronymic": "Patronymic",
  "date_format": "dd/mm/yyyy",
  "date_of_birth": "Date of birth",
  "passport_data": "Date of birth",
  "series_and_number": "Series and number",
  "date_of_issue": "Date of issue",
  "citizenship_rf": "Citizenship RF",
  "issued_by": "Issued by",
  "registration_address": "Registration address",
  "driver_license_data": "Driver's license data",
  "contact_data": "Contact data",
  "phone": "Phone",
  "email": "Email",
  "flight_number": "Flight number",
  "special_wishes": "Special wishes",
  "save_my_data": "Save my data",
  "if_you_flight_delayed": "If your flight is delayed, we will know.",
  "optional": "Optional",
  "complete_booking": "Complete booking",
  "city_ot_airport": "City or airport",
  "address": "Address",
  "work_hours": "Work hours",
  "daily_work_hours": "Daily from {firstTime}:00 to {secondTime}:00",
  "return_keybox": "You can return the car at off hours by yourself.",
  "booking_finished": "Your booking is successfully completed, enjoy your trip!",
  "we_are_waiting_you": "We are waiting you",
  "booking_almost_finished": "Your booking is almost completed.\n\nWe have received your application and are already processing the data received from you.\nPlease await confirmation of your reservation by email.",
  "you_booking_number": "Your booking number",
  "pick_up_car": "Pick up the car",
  "pick_up_info": "Give this number to our manager when you come to pick up the car.\n\nThank you for choosing Rentmotors!",
  "voucher": "The voucher has been sent to your email.",
  "required_field": "Required field",
  "wrong_phone_format": "Wrong phone format",
  "wrong_email_format": "Wrong email format",
  "not_all_fields_filled": "Not all fields are filled in correctly",
  "error_label": "Error",
  "finish": "Finish",
  "add_to_wallet": "Add\nto wallet",
  "wrong_date_format": "Wrong date format",
  "russia": "Russia",
  "passport_issued_by_country": "Country that issued the passport",
  "on_map": "On map",
  "date_too_early": "No earlier date available",
  "no_available_cars": "No available cars. Please try set another dates.",
  "car_on_request": "On request.\nVehicle availability will be confirmed within 24 hours.",
  "choose_car": "Choose a car",
  "choose_new_car": "Choose a new car",
  "personal_data": "Personal data",
  "your_booking": "Your booking",
  "rental_stations": "Rental stations",
  "choose_station": "Choose a station",
  "choose_org": "Choose a organization",
  "ok": "Ok",
  "failure_get_pay": "Error getting payment link",
  "failure": "Data load error",
  "failure_get_data": "Failed to get data. Please check your Internet connection",
  "already_booked": "Booking has already been completed",
  "introdused_and_accept": "Introduced and accept",
  "org_payment": "Non-cash payment from a legal entity",
  "rent_terms": "Rent terms",
  "privacy_policy": "Privacy policy",
  "and": "and",
  "yes": "Yes",
  "no": "No",
  "set_dates_correct": "Set dates correctly",
  "save_changes": "Save changes",
  "booking_number": "Reservation ID",
  "save_email": "Save email",
  "save_new_email": "Save new email",
  "findRes": "Find reservation",
  "menu": "Menu",
  "time": "Time:",
  "place": "Place:",
  "terms": "Terms:",
  "payment": "Payment",
  "payment_p": "Payment:",
  "total_pay": "Total payable:",
  "promotion": "Promotion:",
  "client": "Client:",
  "email_p": "Email:",
  "phone_p": "Phone number:",
  "flight": "Flight:",
  "comment": "Comments:",
  "settings": "Settings",
  "receipt_car": "Upon receipt of the car",
  "dropOff_place": "Drop off:",
  "pick_up_place": "Pick up:",
  "voucher_conf": "Confirmation",
  "change": "Change",
  "mod_res": "Modify reservation",
  "can_res": "Cancel reservation",
  "cancel_res_title": "Cancel reservation",
  "cancel_res_message": "Are you sure you want to cancel your reservation?",
  "car_class": "Car group",
  "forgot_email": "Forgot email",
  "tariff_features": "Tariff features",
  "cancel_res_error": "Cancel failed",
  "res_been_cancel": "Your reservation has been canceled",
  "change_res": "Change reservation",
  "add_inform": "Additional information",
  "your_res_no_found": "Your reservation no found",
  "res_was_mod": "Your reservation was modified",
  "res_mod_error": "Reservation modification failed",
  "pleaseEnterToModifyOrCancelReserv": "Please enter your email and reservation ID for view, modify or cancel your reservation.",
  "pleaseToModifyOrCancelReserv": "Please enter your reservation ID for view, modify or cancel your reservation.",
  "rent_terms_link": "https://rentmotors.ru/offer/ooorentmotors.pdf",
  "privacy_policy_link": "https://rentmotors.ru/offer/ooorentmotorspp.pdf",
  "could_not_open_file": "Could not open file",
  "open_file_with": "Open file with",
  "permission_not_granted": "Permission is not granted",
  "required_permission": "Required permission",
  "to_write_external_storage_rationale": "To save voucher in wallet it's required access to external storage.",
  "to_write_pdf_external_storage_rationale": "To save voucher in PDF it's required access to external storage.",
  "remember_on_this_device": "Remember on this device",
  "save_pdf": "PDF",
  "try_again": "Try again",
  "book": "Забронировать",
  "rent_terms_error": "You cannot continue without agreeing to the privacy policy and rental terms",
  "place_of_birth": "Place of birth",
  "completion_booking": "Completion of the booking"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru, "en": en};
}
