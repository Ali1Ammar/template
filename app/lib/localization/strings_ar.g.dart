///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsAr = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get appTitle => 'التطبيق';
	late final TranslationsValidatorAr validator = TranslationsValidatorAr._(_root);
	late final TranslationsAlertAr alert = TranslationsAlertAr._(_root);
	late final TranslationsLoginPageAr loginPage = TranslationsLoginPageAr._(_root);
	late final TranslationsRequestOTPPageAr requestOTPPage = TranslationsRequestOTPPageAr._(_root);
	late final TranslationsOtpPageAr otpPage = TranslationsOtpPageAr._(_root);
	late final TranslationsChangePasswordOTPPageAr changePasswordOTPPage = TranslationsChangePasswordOTPPageAr._(_root);
	late final TranslationsResetPasswordPageAr resetPasswordPage = TranslationsResetPasswordPageAr._(_root);
	late final TranslationsChangeEmailPageAr changeEmailPage = TranslationsChangeEmailPageAr._(_root);
	late final TranslationsChangeEmailOTPPageAr changeEmailOTPPage = TranslationsChangeEmailOTPPageAr._(_root);
	late final TranslationsRegisterPageAr registerPage = TranslationsRegisterPageAr._(_root);
	late final TranslationsAboutUsPageAr aboutUsPage = TranslationsAboutUsPageAr._(_root);
	late final TranslationsFaqPageAr faqPage = TranslationsFaqPageAr._(_root);
	late final TranslationsAccountPageAr accountPage = TranslationsAccountPageAr._(_root);
	late final TranslationsAccountInformationPageAr accountInformationPage = TranslationsAccountInformationPageAr._(_root);
	late final TranslationsChangePasswordPageAr changePasswordPage = TranslationsChangePasswordPageAr._(_root);
	late final TranslationsHomePageAr homePage = TranslationsHomePageAr._(_root);
	late final TranslationsOrderPageAr orderPage = TranslationsOrderPageAr._(_root);
	late final TranslationsSpecificOrderPageAr specificOrderPage = TranslationsSpecificOrderPageAr._(_root);
	late final TranslationsSpecificorderAr specificorder = TranslationsSpecificorderAr._(_root);
	late final TranslationsOrderdetailsPageAr orderdetailsPage = TranslationsOrderdetailsPageAr._(_root);
	late final TranslationsProductPageAr productPage = TranslationsProductPageAr._(_root);
	late final TranslationsCartPageAr cartPage = TranslationsCartPageAr._(_root);
	late final TranslationsPaymentPageAr paymentPage = TranslationsPaymentPageAr._(_root);
	late final TranslationsSearchPageAr searchPage = TranslationsSearchPageAr._(_root);
	late final TranslationsSortAr sort = TranslationsSortAr._(_root);
	late final TranslationsFilterAr filter = TranslationsFilterAr._(_root);
	late final TranslationsErrorAr error = TranslationsErrorAr._(_root);
	late final TranslationsEmptyAr empty = TranslationsEmptyAr._(_root);
	late final TranslationsConfirmdDialogAr confirmdDialog = TranslationsConfirmdDialogAr._(_root);
	late final TranslationsFixOrderConfirmDialogAr fixOrderConfirmDialog = TranslationsFixOrderConfirmDialogAr._(_root);
	late final TranslationsAddressPageAr addressPage = TranslationsAddressPageAr._(_root);
}

// Path: validator
class TranslationsValidatorAr {
	TranslationsValidatorAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalidEmail => 'البريد الالكتروني غير صحيح , تأكد من بريدك الالكتروني المستخدم';
	String get invalidPhoneNumber => 'رقم الهاتف غير صالح';
	String get requiredField => 'الحقل مطلوب';
	String get unknownError => 'خطأ غير معروف';
	String get invalidCredentials => 'اسم المستخدم او كلمة المرور غير صحيحة';
	String get connectionError => 'خطأ في الاتصال بالسيرفر';
	String get passwordError => 'استخدم ما لا يقل عن 6 احرف مع رقم او حرف خاص';
	String get weakPassword => 'كلمة المرور ضعيفة';
	String get usernameError => 'استخدم ما لا يقل عن 3 احرف';
	String get usedEmail => 'البريد الألكتروني مستخدم مسبقاً';
	String get passwordCorrect => 'كلمة المرور مقبولة';
	String get confirmPasswordError => 'كلمة المرور خطأ , تأكد من تطابق كلمة المرور';
	String get passwordRules => '. استخدم ما لا يقل عن 6 احرف مع رقم او حرف خاص';
	String get invalidExpirationDate => 'تاديخ انتهاء خاطء';
	String get invalidMonth => 'شهر غير صالح';
	String get cardValidation => '\'يجب أن يكون النص بين 13 و 20 حرفًا\'';
	String get invalidTokenRefreshing => 'تحديث معلومات المصادقة غير مكتمل';
	String get invalidTokenRefreshingContent => 'حدث خطأ أثناء تحديث معلومات المصادقة, يرجى تسجيل الخروج.';
	String get logOut => 'تسجيل الخروج';
}

// Path: alert
class TranslationsAlertAr {
	TranslationsAlertAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get errorTitle => 'خطأ';
	String get close => 'اغلاق';
	String get continueGo => 'متابعة';
	String get successTitle => 'نجاح';
	String get successDescription => 'تمت العملية بنجاح';
	String get retry => 'حاول مرة اخرى';
	String get refresh => 'اعادة تحميل الصفحة';
}

// Path: loginPage
class TranslationsLoginPageAr {
	TranslationsLoginPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'تسجيل الدخول';
	String get welcomeTitle => 'أهلاً بك من جديد';
	String get welcomeContent => 'قم بتسجيل الدخول واستمتع بتجربة تسوق مميزة';
	String get emailFieldTitle => 'البريد الالكتروني';
	String get emailFieldHint => 'ادخل بريدك الالكتروني';
	String get passwordFieldTitle => 'كلمة المرور';
	String get passwordFieldHint => 'ادخل كلمة المرور لحسابك';
	String get sendButtonTitle => 'تسجيل الدخول';
	String get doNotHaveAnAccountQuestion => 'ليس لديك حساب؟';
	String get doNotHaveAnAccountCTA => 'انشأ حساب جديد';
	String get forgotPassword => 'نسيت كلمة المرور؟';
	String get checkYourEmail => 'تحقق من بريدك الإلكتروني';
	String get checkYourEmailDescription => 'تحقق من بريدك الالكتروني , لقد ارسلنا اليك رمز التحقق OTP , لاعادة تعيين كلمة المرور';
	String get continueCTA => 'استمرار';
}

// Path: requestOTPPage
class TranslationsRequestOTPPageAr {
	TranslationsRequestOTPPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'إعادة تعيين كلمة المرور';
	String get descriptionTitle => 'نسيت كلمة المرور؟';
	String get descriptionContent => 'ادخل البريد الالكتروني الخاص بك لأعادة تعيين كلمة مرور جديدة';
	String get continueCTA => 'استمرار';
}

// Path: otpPage
class TranslationsOtpPageAr {
	TranslationsOtpPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'ادخال رمز التحقق';
	String get descriptionTitle => 'رمز التحقق OTP';
	String get enterOTP => 'ادخل رمز التأكيد';
	String get expiresIn => 'تنتهي صلاحية الرمز خلال :';
	String get sendAgain => 'اعادة الارسال';
	String get check => 'تحقق';
}

// Path: changePasswordOTPPage
class TranslationsChangePasswordOTPPageAr {
	TranslationsChangePasswordOTPPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get descriptionContentPart1 => 'لقد ارسلنا رمز التحقق لـــــ';
	String get descriptionContentPart2 => ' بريد الالكتروني';
	String get descriptionContentPart3 => 'الخاص بك , يرجى ادخاله لاعادة تعيين كلمة المرور';
}

// Path: resetPasswordPage
class TranslationsResetPasswordPageAr {
	TranslationsResetPasswordPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'إعادة تعيين كلمة المرور';
	String get descriptionTitle => 'انشاء كلمة مرور جديدة';
	String get descriptionContent => 'يرجى اضافة كلمة مرور جديدة لتستطيع تسجيل الدخول مرة اخرى';
	String get newPasswordField => 'كلمة المرور الجديدة';
	String get passwordStrengthHint => '• استخدم ما لا يقل عن 6 احرف مع رقم او حرف خاص';
	String get confirmPasswordField => 'تكرار كلمة المرور';
	String get sendButton => 'إعادة تعيين كلمة المرور';
	String get enterNewPassword => 'ادخل كلمة المرور الجديدة';
	String get repeatPassword => 'كرر كلمة المرور';
}

// Path: changeEmailPage
class TranslationsChangeEmailPageAr {
	TranslationsChangeEmailPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'تغيير البريد الالكتروني';
	String get descriptionTitle => 'تغيير البريد الالكتروني';
	String get descriptionContent => 'اكتب البريد الالكتروني الجديد وكلمة المرور الحالية';
	String get newEmailField => 'البريد الالكتروني الجديد';
	String get newEmailFieldHint => 'ادخل بريدك الالكتروني الجديد';
	String get passwordField => 'كلمة المرور الحالية';
	String get passwordFieldHint => 'ادخل كلمة المرور الحالية';
	String get forgotPasswordQuestion => 'هل نسيت كلمة المرور؟';
	String get cTAButton => 'اعادة التعيين';
	String get checkNewEmail => 'تحقق من بريدك الإلكتروني الجديد';
	String get checkNewEmailDescription => 'تم ارسال رمز التحقق على بريدك الالكتروني الجديد , يرجى التحقق والادخال';
	String get next => 'التالي';
	String get signOutQuestion => 'هل تريد تسجيل الخروج؟';
	String get signOutQuestionDescription => 'سيتم تسجيل الخروج من الحساب لاعادة تعيين كلمة المرور';
	String get signOut => 'تسجيل الخروج';
	String get successTitle => 'تم تحديث البريد الألكتروني بنجاح';
	String get successDescription => 'تم تغيير بريدك الألكتروني بنجاح. يمكنك الآن استخدامه لتسجيل الدخول و التسوق';
	String get returnToPage => 'الرجوع الى الصفحة';
}

// Path: changeEmailOTPPage
class TranslationsChangeEmailOTPPageAr {
	TranslationsChangeEmailOTPPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get descriptionContentPart1 => 'لقد ارسلنا رمز التحقق لبريدك الالكتروني الجديد';
	String get descriptionContentPart2 => ' , يرجى ادخال الرمز لإنجاح العملية';
}

// Path: registerPage
class TranslationsRegisterPageAr {
	TranslationsRegisterPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'انشاء حساب جديد';
	String get welcomeTitle => 'انشئ حسابك';
	String get welcomeContent => 'سجل حساباً جديداً واستمتع بتجربة تسوق مميزة';
	String get usernameFieldTitle => 'اسم المستخدم';
	String get usernameFieldHint => 'على سبيل المثال احمد سالم';
	String get emailFieldTitle => 'البريد الالكتروني';
	String get emailFieldHint => 'ادخل بريدك الالكتروني';
	String get passwordFieldTitle => 'كلمة المرور';
	String get passwordFieldHint => 'ادخل كلمة المرور لحسابك';
	String get confirmPasswordFieldTitle => 'تكرار كلمة المرور';
	String get confirmPasswordFieldHint => 'كرر كلمة المرور';
	String get sendButtonTitle => 'المواصلة';
	String get doNotHaveAnAccountQuestion => 'لديك حساب بالفعل؟';
	String get doNotHaveAnAccountCTA => 'تسجيل الدخول';
}

// Path: aboutUsPage
class TranslationsAboutUsPageAr {
	TranslationsAboutUsPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'من نحن';
	String get appDescriptionTitle => 'ماهو تطبيق حَمام:';
	String get appDescription => 'حَمام تطبيق تسوق إلكتروني مصمم لتقديم تجربة تسوق مميزة ومريحة للمستخدمين في العالم العربي. نسعى إلى تلبية احتياجات عملائنا من خلال تقديم مجموعة واسعة من المنتجات بأسعار تنافسية، يتم شحنها مباشرة من مورد صيني موثوق إلى باب منزلك.';
	String get offeringsDescriptionTitle => 'ماذا نقدم:';
	String get offeringsDescription => 'نقدم في حَمام مجموعة متنوعة من المنتجات التي تشمل الإلكترونيات، الملابس، المستلزمات المنزلية، الإكسسوارات، وأكثر من ذلك بكثير. نحن ملتزمون بتقديم أفضل الأسعار وأقل تكلفة شحن، مما يتيح لك الوصول إلى منتجات عالية الجودة بأسعار مناسبة وخيارات شحن تناسب احتياجاتك.';
	String get contactUs => 'تواصل معنا';
	String get facebook => 'فيسبوك';
	String get whatsapp => 'الواتساب';
	String get twitter => 'تويتر';
}

// Path: faqPage
class TranslationsFaqPageAr {
	TranslationsFaqPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'الاسئلة الشائعة';
	String get questionsListTitle => 'اكثر الاسئلة على دراغون والاجابة عليها';
	String get exampleQuestion => 'نص السؤال يكون هنا في تلك المساحة؟';
	String get exampleAnswer => 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف  هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف ';
	String get contactInCaseOfProblem => 'في حال لديك اي مشكلة تواصل معنا';
	String get availability => 'على مدار الساعة موجودين';
}

// Path: accountPage
class TranslationsAccountPageAr {
	TranslationsAccountPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get settingsTitle => 'الاعدادات';
	String get notifications => 'الاشعارات';
	String get help => 'المساعدة';
	String get aboutUs => 'من نحن';
	String get faq => 'الاسئلة الشائعة';
	String get logout => 'تسجيل خروج';
	String get editAccount => 'معلومات الحساب';
	String get accountSettings => 'اعدادات الحساب';
	String get personalLocation => 'موقعك الشخصي';
	String get changePassword => 'تغيير كلمة المرور';
	String get notLoggedIn => 'لم تسجل الدخول';
	String get loginCTA => 'تسجيل الدخول';
	String get needA => 'تحتاج الى';
	String get helpQuestion => 'مساعدة؟';
	String get contactUs => 'تواصل معنا';
	String get directSupportMessaging => 'مراسلة مباشرة بالدعم';
	String get viaWhatsapp => 'عبر الواتساب';
}

// Path: accountInformationPage
class TranslationsAccountInformationPageAr {
	TranslationsAccountInformationPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get editInfo => 'تعديل المعلومات';
	String get username => 'اسم المستخدم';
	String get exampleUsername => 'ثامر حسين علي';
	String get email => 'البريد الالكتروني';
	String get exampleEmail => 'e_thahussain@earthlink.iq';
	String get saveChanges => 'حفظ التغييرات';
	String get cancel => 'الغاء';
}

// Path: changePasswordPage
class TranslationsChangePasswordPageAr {
	TranslationsChangePasswordPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get changePassword => 'تغيير كلمة المرور';
	String get updatePassword => 'تحديث كلمة المرور';
	String get updatePasswordInstruction => 'اعد كتابة كلمة المرور الحالية ثم كلمة المرور الجديدة.';
	String get currentPassword => 'كلمة المرور الحالية';
	String get enterCurrentPassword => 'ادخل كلمة المرور الحالية';
	String get newPassword => 'كلمة المرور الجديدة';
	String get enterNewPassword => 'ادخل كلمة المرور الجديدة';
	String get repeatPassword => 'كرر كلمة المرور';
	String get newPasswordConfirmation => 'تكرار كلمة المرور الجديدة';
	String get editInfo => 'تعديل المعلومات';
	String get confirm => 'تاكيد';
	String get cancel => 'الغاء';
}

// Path: homePage
class TranslationsHomePageAr {
	TranslationsHomePageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get searchProductHint => 'بحث في كل المنتجات';
	String get more => 'المزيد';
	String get less => 'اقل';
	String get all => 'الكل';
	String get newOffers => 'العروض الجديدة';
	String get allProducts => 'جميع المنتجات';
}

// Path: orderPage
class TranslationsOrderPageAr {
	TranslationsOrderPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get currentordertitle => 'سلة المشتريات';
	String get fixedOrder => 'الطلبات المثبتة';
	String get previousOrder => 'الطلبات السابقة';
	String get orderNumber => 'طلب رقم';
	String get totalOrder => 'اجمالي الطلب:';
	String get exploreProducts => 'استكشف مجموعة واسعة من المنتجات التي تناسب احتياجاتك';
	String get browseNewProducts => 'تصفح المنتجات الجديدة';
}

// Path: specificOrderPage
class TranslationsSpecificOrderPageAr {
	TranslationsSpecificOrderPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get specificorder => 'الطلب المحدد ';
	String get orderstatus1 => 'يتم التجهيز';
	String get shippingtype => 'نوع الشحن:';
	String get airshipping => 'شحن جوي';
	String get seashipping => 'شحن بحري';
	String get orderdetails => 'تفاصيل الطلب';
	String get ordertracking => 'تتبع الطلب';
}

// Path: specificorder
class TranslationsSpecificorderAr {
	TranslationsSpecificorderAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get specificOrderTitle => 'تتبع الطلب';
	String get orderstatustitle => 'نشاط الطلب';
	String get orderstatusfixed => 'لقد تم تثبيت طلبك';
	String get orderstatuspreparing => 'تجهيز الطلب';
	String get orderstatusshipping => 'شحن الطلب';
	String get orderstatusdelevery => 'تسليم الطلب';
}

// Path: orderdetailsPage
class TranslationsOrderdetailsPageAr {
	TranslationsOrderdetailsPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get OrderdetailsTitle => 'تفاصيل الطلب';
	String get packagedetails => 'تفاصيل الشحنة';
	String get packagevalue => 'قيمة الطلب: ';
	String get orderlocation => 'عنوان الشحن:';
	String get paymentmethod => 'طريقة الدفع:';
	String get orderdelivarymethod => 'طريقة الشحن:';
	String get Orderelements => 'عناصر الطلب';
	String get totalorderelement => 'الاجمالي:';
	String get number => 'العدد:';
	String get currency => 'د.ع';
}

// Path: productPage
class TranslationsProductPageAr {
	TranslationsProductPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get generalView => 'نظرة عامة';
	String get properties => 'الخصائص';
	String get instruction => 'التعليمات';
	String get description => 'الوصف';
	String get seeMore => 'رؤية المزيد';
	String get seeLess => 'رؤية أقل';
	String get shippingInfo => 'معلومات الشحن';
	String get delivery => 'التسليم';
	String get shippingFrom => 'الشحن من ';
	String get theShipping => 'الشحن';
	String get shipping => 'شحن ';
	String get arrival => 'الوصول';
	String get expectedToArriveOn => 'من المتوقع الوصول في ';
	String get productRating => 'تقييم المنتج';
	String get reviews => 'مراجعات';
	String get theReviews => 'المراجعات';
	String get theComments => 'التعليقات';
	String get yourReaction => 'تفاعلك';
	String get clientsComments => 'تعليقات العملاء';
	String get showMore => 'عرض المزيد';
	String get reviewSendButton => 'إرسال';
	String get productSimilar => 'المشابه لنفس المنتج';
	String get totalPriceWithShipping => 'السعر الكلي مع الشحن';
	String get addToCart => 'الاضافة الى السلة';
	String get writeYourExperience => 'اكتب تجربتك مع هذا المنتج';
	String get onlyRemaining => 'تبقى فقط ';
	String get onePiece => 'قطعة واحدة';
	String get twoPieces => 'قطعتين';
	String get pieces => ' قطع';
	String get inInventory => ' في المخزون';
	String get noItemsInInventory => 'لم يتبقى أيُّ قطع في المخزون';
}

// Path: cartPage
class TranslationsCartPageAr {
	TranslationsCartPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get addDiscountCoupon => 'اضافة كوبون خصم';
	String get confirmOrder => 'تثبيت الطلب';
	String get shippingInformation => 'معلومات الشحن';
	String get paymentOptions => 'خيارات الدفع';
	String get shoppingCart => 'عربة التسوق';
	String get application => 'تطبيق';
	String get priceDetails => 'تفاصيل السعر';
	String get total => 'الاجمالي';
	String get completePurchase => 'استكمال عملية الشراء';
	String get chooseSuitablePaymentMethod => 'اختر طريقة الدفع المناسبة';
	String get payWithWallet => 'الدفع بأستخدام المحفظة';
	String get priceWithShipping => 'السعر مع الشحن';
	String get shipping => 'شحن';
	String get tax => 'الضريبة';
	String get payBill => 'دفع الحساب';
	String get shippingTo => 'الشحن الى';
	String get noAddress => 'لا يوجد عنوان , اضف عنوانك الخاص';
	String get changeAddress => 'تغيير العنوان';
	String get addToFavorites => 'اضافة\nللمفضلة';
	String get delete => 'حذف';
	String get requestExpressShipping => 'طلب الشحن السريع';
	String get add => 'اضافة';
	String get iqd => 'د.ع';
	String get productShipping => 'شحن المنتجات';
	String get seaFreightShipment => 'شحنة النقل البحري';
	String get airFreightShipment => 'شحنة النقل الجوي';
	String estimatedArrivalTimeRange({required Object from, required Object to}) => 'مدة الوصول تتراوح بين ${from}-${to} يوم';
	String get expressShippingNote => 'بعض المنتجات يمكنك ارفاقها مع الشحن السريع لتسريع التوصيل، لكن سوف يترتب عليها دفع مبلغ إضافي على كل منتج';
	String get orderSplitShipping => 'تُقسَم طلباتك تلقائيًا إلى عدة طرق شحن مختلفة اعتماداً على وزن وحجم كل منتج.';
	String get agreeAndContinue => 'الموافقة والاستمرار';
	String get expressShipping => 'الشحن السريع';
	String get after => 'بعد';
	String get before => 'قبل';
	String get all => 'الكل';
	String get totalPrice => 'السعر الكلي';
	String get shippingCost => 'تكلفة الشحن';
	String get totalAmount => 'السعر الاجمالي';
	String get requiredLocation => 'يجب اختيار الموقع';
	String get productPriceHasChanged => 'تم تغيير سعر بعض المنتجات المثبتة في سلة التسوق';
}

// Path: paymentPage
class TranslationsPaymentPageAr {
	TranslationsPaymentPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cardholderName => 'اسم حامل البطاقة';
	String get enterCardholderName => 'اكتب الاسم الموجود على البطاقة';
	String get cardNumber => 'رقم البطاقة (10-12 رقم)';
	String get cardNumberPlaceholder => 'xxxx xxxx xxxx 1234';
	String get cardExpirationDate => 'تاريخ انتهاء البطاقة';
	String get year => 'السنة';
	String get month => 'الشهر';
	String get cvvCvc => 'CVV2 / CVC2';
	String get emailOptional => 'البريد الالكتروني (اختياري)';
	String get enterEmail => 'ادخل بريدك الالكتروني';
	String get cardDetailsEncrypted => 'تفاصيل البطاقة مشفرة ب الكامل من اجل الحماية والخصوصية';
	String get saveCardInfo => 'حفظ معلومات البطاقة';
	String completePayment({required Object price}) => 'اتمام الدفع ${price} د.ع';
}

// Path: searchPage
class TranslationsSearchPageAr {
	TranslationsSearchPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get searchHistory => 'سجل البحث';
	String get browsePopular => 'تصفح المشهور';
	String didYouMean({required Object name}) => 'هل تقصد:${name}';
}

// Path: sort
class TranslationsSortAr {
	TranslationsSortAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get recommended => 'الموصى به';
	String get asc => 'الاقدم';
	String get desc => 'الاحدث';
}

// Path: filter
class TranslationsFilterAr {
	TranslationsFilterAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cheapest => 'الأرخص';
	String get popular => 'الأكثر شهرة';
	String get discounted => 'المخفض';
	String get bestSelling => 'الأكثر مبيعًا';
	String get highestRating => 'الأعلى تقييمًا';
}

// Path: error
class TranslationsErrorAr {
	TranslationsErrorAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get noItemsFoundError => 'لم يتم العثور على أي عناصر';
	String get defaultErrorMessage => 'حدث خطأ. يرجى المحاولة مرة أخرى.';
}

// Path: empty
class TranslationsEmptyAr {
	TranslationsEmptyAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get noPoductsInCart => 'لا توجد منتجات في السلة';
	String get noOrders => 'لا توجد طلبات';
	String get noPoducts => 'لا توجد منتجات';
}

// Path: confirmdDialog
class TranslationsConfirmdDialogAr {
	TranslationsConfirmdDialogAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get confirmdDialogTitle => 'هل انت متأكد من تسجيل الخروج!!';
	String get confirmDialogbackDescription => 'عند تسجيل الخروج من التطبيق ستفقد ميزة شراء المنتجات وطلبها';
	String get confirmDialogBackLabel => 'العودة';
	String get confirmDialogActionLabel => 'تسجيل خروج';
}

// Path: fixOrderConfirmDialog
class TranslationsFixOrderConfirmDialogAr {
	TranslationsFixOrderConfirmDialogAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get fixOrderConfirmDialogTitle => 'رائع! لقد تم تثبيت طلبك';
	String get fixOrderConfirmDialogDescription => 'يمكنك تتبع طلبك الان ورؤية حالة الشحنة';
	String get fixOrderConfirmDialogBackLabel => 'العودة';
	String get fixOrderConfirmdialogActionLabel => 'الذهاب الى صفحة الطلبات';
}

// Path: addressPage
class TranslationsAddressPageAr {
	TranslationsAddressPageAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get addAddress => 'اضافة عنوان';
	String get phoneNumber => 'رقم الهاتف';
	String get firstName => 'الاسم الاول';
	String get middleName => 'الاسم الاوسط';
	String get city => 'المحافظة';
	String get addressDetails => 'معلومات العنوان';
	String get neariestPoint => 'اقرب نقطة دالة';
	String get moreNotes => 'اكتب المزيد من الملاحظات';
	String get pleaseSelectCity => 'الرجاء تحديد المحافظة';
	String get saveAddress => 'حفظ العنوان';
	String get phoneNumberPlaceholder => '07812345678';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appTitle': return 'التطبيق';
			case 'validator.invalidEmail': return 'البريد الالكتروني غير صحيح , تأكد من بريدك الالكتروني المستخدم';
			case 'validator.invalidPhoneNumber': return 'رقم الهاتف غير صالح';
			case 'validator.requiredField': return 'الحقل مطلوب';
			case 'validator.unknownError': return 'خطأ غير معروف';
			case 'validator.invalidCredentials': return 'اسم المستخدم او كلمة المرور غير صحيحة';
			case 'validator.connectionError': return 'خطأ في الاتصال بالسيرفر';
			case 'validator.passwordError': return 'استخدم ما لا يقل عن 6 احرف مع رقم او حرف خاص';
			case 'validator.weakPassword': return 'كلمة المرور ضعيفة';
			case 'validator.usernameError': return 'استخدم ما لا يقل عن 3 احرف';
			case 'validator.usedEmail': return 'البريد الألكتروني مستخدم مسبقاً';
			case 'validator.passwordCorrect': return 'كلمة المرور مقبولة';
			case 'validator.confirmPasswordError': return 'كلمة المرور خطأ , تأكد من تطابق كلمة المرور';
			case 'validator.passwordRules': return '. استخدم ما لا يقل عن 6 احرف مع رقم او حرف خاص';
			case 'validator.invalidExpirationDate': return 'تاديخ انتهاء خاطء';
			case 'validator.invalidMonth': return 'شهر غير صالح';
			case 'validator.cardValidation': return '\'يجب أن يكون النص بين 13 و 20 حرفًا\'';
			case 'validator.invalidTokenRefreshing': return 'تحديث معلومات المصادقة غير مكتمل';
			case 'validator.invalidTokenRefreshingContent': return 'حدث خطأ أثناء تحديث معلومات المصادقة, يرجى تسجيل الخروج.';
			case 'validator.logOut': return 'تسجيل الخروج';
			case 'alert.errorTitle': return 'خطأ';
			case 'alert.close': return 'اغلاق';
			case 'alert.continueGo': return 'متابعة';
			case 'alert.successTitle': return 'نجاح';
			case 'alert.successDescription': return 'تمت العملية بنجاح';
			case 'alert.retry': return 'حاول مرة اخرى';
			case 'alert.refresh': return 'اعادة تحميل الصفحة';
			case 'loginPage.pageTitle': return 'تسجيل الدخول';
			case 'loginPage.welcomeTitle': return 'أهلاً بك من جديد';
			case 'loginPage.welcomeContent': return 'قم بتسجيل الدخول واستمتع بتجربة تسوق مميزة';
			case 'loginPage.emailFieldTitle': return 'البريد الالكتروني';
			case 'loginPage.emailFieldHint': return 'ادخل بريدك الالكتروني';
			case 'loginPage.passwordFieldTitle': return 'كلمة المرور';
			case 'loginPage.passwordFieldHint': return 'ادخل كلمة المرور لحسابك';
			case 'loginPage.sendButtonTitle': return 'تسجيل الدخول';
			case 'loginPage.doNotHaveAnAccountQuestion': return 'ليس لديك حساب؟';
			case 'loginPage.doNotHaveAnAccountCTA': return 'انشأ حساب جديد';
			case 'loginPage.forgotPassword': return 'نسيت كلمة المرور؟';
			case 'loginPage.checkYourEmail': return 'تحقق من بريدك الإلكتروني';
			case 'loginPage.checkYourEmailDescription': return 'تحقق من بريدك الالكتروني , لقد ارسلنا اليك رمز التحقق OTP , لاعادة تعيين كلمة المرور';
			case 'loginPage.continueCTA': return 'استمرار';
			case 'requestOTPPage.pageTitle': return 'إعادة تعيين كلمة المرور';
			case 'requestOTPPage.descriptionTitle': return 'نسيت كلمة المرور؟';
			case 'requestOTPPage.descriptionContent': return 'ادخل البريد الالكتروني الخاص بك لأعادة تعيين كلمة مرور جديدة';
			case 'requestOTPPage.continueCTA': return 'استمرار';
			case 'otpPage.pageTitle': return 'ادخال رمز التحقق';
			case 'otpPage.descriptionTitle': return 'رمز التحقق OTP';
			case 'otpPage.enterOTP': return 'ادخل رمز التأكيد';
			case 'otpPage.expiresIn': return 'تنتهي صلاحية الرمز خلال :';
			case 'otpPage.sendAgain': return 'اعادة الارسال';
			case 'otpPage.check': return 'تحقق';
			case 'changePasswordOTPPage.descriptionContentPart1': return 'لقد ارسلنا رمز التحقق لـــــ';
			case 'changePasswordOTPPage.descriptionContentPart2': return ' بريد الالكتروني';
			case 'changePasswordOTPPage.descriptionContentPart3': return 'الخاص بك , يرجى ادخاله لاعادة تعيين كلمة المرور';
			case 'resetPasswordPage.pageTitle': return 'إعادة تعيين كلمة المرور';
			case 'resetPasswordPage.descriptionTitle': return 'انشاء كلمة مرور جديدة';
			case 'resetPasswordPage.descriptionContent': return 'يرجى اضافة كلمة مرور جديدة لتستطيع تسجيل الدخول مرة اخرى';
			case 'resetPasswordPage.newPasswordField': return 'كلمة المرور الجديدة';
			case 'resetPasswordPage.passwordStrengthHint': return '• استخدم ما لا يقل عن 6 احرف مع رقم او حرف خاص';
			case 'resetPasswordPage.confirmPasswordField': return 'تكرار كلمة المرور';
			case 'resetPasswordPage.sendButton': return 'إعادة تعيين كلمة المرور';
			case 'resetPasswordPage.enterNewPassword': return 'ادخل كلمة المرور الجديدة';
			case 'resetPasswordPage.repeatPassword': return 'كرر كلمة المرور';
			case 'changeEmailPage.pageTitle': return 'تغيير البريد الالكتروني';
			case 'changeEmailPage.descriptionTitle': return 'تغيير البريد الالكتروني';
			case 'changeEmailPage.descriptionContent': return 'اكتب البريد الالكتروني الجديد وكلمة المرور الحالية';
			case 'changeEmailPage.newEmailField': return 'البريد الالكتروني الجديد';
			case 'changeEmailPage.newEmailFieldHint': return 'ادخل بريدك الالكتروني الجديد';
			case 'changeEmailPage.passwordField': return 'كلمة المرور الحالية';
			case 'changeEmailPage.passwordFieldHint': return 'ادخل كلمة المرور الحالية';
			case 'changeEmailPage.forgotPasswordQuestion': return 'هل نسيت كلمة المرور؟';
			case 'changeEmailPage.cTAButton': return 'اعادة التعيين';
			case 'changeEmailPage.checkNewEmail': return 'تحقق من بريدك الإلكتروني الجديد';
			case 'changeEmailPage.checkNewEmailDescription': return 'تم ارسال رمز التحقق على بريدك الالكتروني الجديد , يرجى التحقق والادخال';
			case 'changeEmailPage.next': return 'التالي';
			case 'changeEmailPage.signOutQuestion': return 'هل تريد تسجيل الخروج؟';
			case 'changeEmailPage.signOutQuestionDescription': return 'سيتم تسجيل الخروج من الحساب لاعادة تعيين كلمة المرور';
			case 'changeEmailPage.signOut': return 'تسجيل الخروج';
			case 'changeEmailPage.successTitle': return 'تم تحديث البريد الألكتروني بنجاح';
			case 'changeEmailPage.successDescription': return 'تم تغيير بريدك الألكتروني بنجاح. يمكنك الآن استخدامه لتسجيل الدخول و التسوق';
			case 'changeEmailPage.returnToPage': return 'الرجوع الى الصفحة';
			case 'changeEmailOTPPage.descriptionContentPart1': return 'لقد ارسلنا رمز التحقق لبريدك الالكتروني الجديد';
			case 'changeEmailOTPPage.descriptionContentPart2': return ' , يرجى ادخال الرمز لإنجاح العملية';
			case 'registerPage.pageTitle': return 'انشاء حساب جديد';
			case 'registerPage.welcomeTitle': return 'انشئ حسابك';
			case 'registerPage.welcomeContent': return 'سجل حساباً جديداً واستمتع بتجربة تسوق مميزة';
			case 'registerPage.usernameFieldTitle': return 'اسم المستخدم';
			case 'registerPage.usernameFieldHint': return 'على سبيل المثال احمد سالم';
			case 'registerPage.emailFieldTitle': return 'البريد الالكتروني';
			case 'registerPage.emailFieldHint': return 'ادخل بريدك الالكتروني';
			case 'registerPage.passwordFieldTitle': return 'كلمة المرور';
			case 'registerPage.passwordFieldHint': return 'ادخل كلمة المرور لحسابك';
			case 'registerPage.confirmPasswordFieldTitle': return 'تكرار كلمة المرور';
			case 'registerPage.confirmPasswordFieldHint': return 'كرر كلمة المرور';
			case 'registerPage.sendButtonTitle': return 'المواصلة';
			case 'registerPage.doNotHaveAnAccountQuestion': return 'لديك حساب بالفعل؟';
			case 'registerPage.doNotHaveAnAccountCTA': return 'تسجيل الدخول';
			case 'aboutUsPage.pageTitle': return 'من نحن';
			case 'aboutUsPage.appDescriptionTitle': return 'ماهو تطبيق حَمام:';
			case 'aboutUsPage.appDescription': return 'حَمام تطبيق تسوق إلكتروني مصمم لتقديم تجربة تسوق مميزة ومريحة للمستخدمين في العالم العربي. نسعى إلى تلبية احتياجات عملائنا من خلال تقديم مجموعة واسعة من المنتجات بأسعار تنافسية، يتم شحنها مباشرة من مورد صيني موثوق إلى باب منزلك.';
			case 'aboutUsPage.offeringsDescriptionTitle': return 'ماذا نقدم:';
			case 'aboutUsPage.offeringsDescription': return 'نقدم في حَمام مجموعة متنوعة من المنتجات التي تشمل الإلكترونيات، الملابس، المستلزمات المنزلية، الإكسسوارات، وأكثر من ذلك بكثير. نحن ملتزمون بتقديم أفضل الأسعار وأقل تكلفة شحن، مما يتيح لك الوصول إلى منتجات عالية الجودة بأسعار مناسبة وخيارات شحن تناسب احتياجاتك.';
			case 'aboutUsPage.contactUs': return 'تواصل معنا';
			case 'aboutUsPage.facebook': return 'فيسبوك';
			case 'aboutUsPage.whatsapp': return 'الواتساب';
			case 'aboutUsPage.twitter': return 'تويتر';
			case 'faqPage.pageTitle': return 'الاسئلة الشائعة';
			case 'faqPage.questionsListTitle': return 'اكثر الاسئلة على دراغون والاجابة عليها';
			case 'faqPage.exampleQuestion': return 'نص السؤال يكون هنا في تلك المساحة؟';
			case 'faqPage.exampleAnswer': return 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف  هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف ';
			case 'faqPage.contactInCaseOfProblem': return 'في حال لديك اي مشكلة تواصل معنا';
			case 'faqPage.availability': return 'على مدار الساعة موجودين';
			case 'accountPage.settingsTitle': return 'الاعدادات';
			case 'accountPage.notifications': return 'الاشعارات';
			case 'accountPage.help': return 'المساعدة';
			case 'accountPage.aboutUs': return 'من نحن';
			case 'accountPage.faq': return 'الاسئلة الشائعة';
			case 'accountPage.logout': return 'تسجيل خروج';
			case 'accountPage.editAccount': return 'معلومات الحساب';
			case 'accountPage.accountSettings': return 'اعدادات الحساب';
			case 'accountPage.personalLocation': return 'موقعك الشخصي';
			case 'accountPage.changePassword': return 'تغيير كلمة المرور';
			case 'accountPage.notLoggedIn': return 'لم تسجل الدخول';
			case 'accountPage.loginCTA': return 'تسجيل الدخول';
			case 'accountPage.needA': return 'تحتاج الى';
			case 'accountPage.helpQuestion': return 'مساعدة؟';
			case 'accountPage.contactUs': return 'تواصل معنا';
			case 'accountPage.directSupportMessaging': return 'مراسلة مباشرة بالدعم';
			case 'accountPage.viaWhatsapp': return 'عبر الواتساب';
			case 'accountInformationPage.editInfo': return 'تعديل المعلومات';
			case 'accountInformationPage.username': return 'اسم المستخدم';
			case 'accountInformationPage.exampleUsername': return 'ثامر حسين علي';
			case 'accountInformationPage.email': return 'البريد الالكتروني';
			case 'accountInformationPage.exampleEmail': return 'e_thahussain@earthlink.iq';
			case 'accountInformationPage.saveChanges': return 'حفظ التغييرات';
			case 'accountInformationPage.cancel': return 'الغاء';
			case 'changePasswordPage.changePassword': return 'تغيير كلمة المرور';
			case 'changePasswordPage.updatePassword': return 'تحديث كلمة المرور';
			case 'changePasswordPage.updatePasswordInstruction': return 'اعد كتابة كلمة المرور الحالية ثم كلمة المرور الجديدة.';
			case 'changePasswordPage.currentPassword': return 'كلمة المرور الحالية';
			case 'changePasswordPage.enterCurrentPassword': return 'ادخل كلمة المرور الحالية';
			case 'changePasswordPage.newPassword': return 'كلمة المرور الجديدة';
			case 'changePasswordPage.enterNewPassword': return 'ادخل كلمة المرور الجديدة';
			case 'changePasswordPage.repeatPassword': return 'كرر كلمة المرور';
			case 'changePasswordPage.newPasswordConfirmation': return 'تكرار كلمة المرور الجديدة';
			case 'changePasswordPage.editInfo': return 'تعديل المعلومات';
			case 'changePasswordPage.confirm': return 'تاكيد';
			case 'changePasswordPage.cancel': return 'الغاء';
			case 'homePage.searchProductHint': return 'بحث في كل المنتجات';
			case 'homePage.more': return 'المزيد';
			case 'homePage.less': return 'اقل';
			case 'homePage.all': return 'الكل';
			case 'homePage.newOffers': return 'العروض الجديدة';
			case 'homePage.allProducts': return 'جميع المنتجات';
			case 'orderPage.currentordertitle': return 'سلة المشتريات';
			case 'orderPage.fixedOrder': return 'الطلبات المثبتة';
			case 'orderPage.previousOrder': return 'الطلبات السابقة';
			case 'orderPage.orderNumber': return 'طلب رقم';
			case 'orderPage.totalOrder': return 'اجمالي الطلب:';
			case 'orderPage.exploreProducts': return 'استكشف مجموعة واسعة من المنتجات التي تناسب احتياجاتك';
			case 'orderPage.browseNewProducts': return 'تصفح المنتجات الجديدة';
			case 'specificOrderPage.specificorder': return 'الطلب المحدد ';
			case 'specificOrderPage.orderstatus1': return 'يتم التجهيز';
			case 'specificOrderPage.shippingtype': return 'نوع الشحن:';
			case 'specificOrderPage.airshipping': return 'شحن جوي';
			case 'specificOrderPage.seashipping': return 'شحن بحري';
			case 'specificOrderPage.orderdetails': return 'تفاصيل الطلب';
			case 'specificOrderPage.ordertracking': return 'تتبع الطلب';
			case 'specificorder.specificOrderTitle': return 'تتبع الطلب';
			case 'specificorder.orderstatustitle': return 'نشاط الطلب';
			case 'specificorder.orderstatusfixed': return 'لقد تم تثبيت طلبك';
			case 'specificorder.orderstatuspreparing': return 'تجهيز الطلب';
			case 'specificorder.orderstatusshipping': return 'شحن الطلب';
			case 'specificorder.orderstatusdelevery': return 'تسليم الطلب';
			case 'orderdetailsPage.OrderdetailsTitle': return 'تفاصيل الطلب';
			case 'orderdetailsPage.packagedetails': return 'تفاصيل الشحنة';
			case 'orderdetailsPage.packagevalue': return 'قيمة الطلب: ';
			case 'orderdetailsPage.orderlocation': return 'عنوان الشحن:';
			case 'orderdetailsPage.paymentmethod': return 'طريقة الدفع:';
			case 'orderdetailsPage.orderdelivarymethod': return 'طريقة الشحن:';
			case 'orderdetailsPage.Orderelements': return 'عناصر الطلب';
			case 'orderdetailsPage.totalorderelement': return 'الاجمالي:';
			case 'orderdetailsPage.number': return 'العدد:';
			case 'orderdetailsPage.currency': return 'د.ع';
			case 'productPage.generalView': return 'نظرة عامة';
			case 'productPage.properties': return 'الخصائص';
			case 'productPage.instruction': return 'التعليمات';
			case 'productPage.description': return 'الوصف';
			case 'productPage.seeMore': return 'رؤية المزيد';
			case 'productPage.seeLess': return 'رؤية أقل';
			case 'productPage.shippingInfo': return 'معلومات الشحن';
			case 'productPage.delivery': return 'التسليم';
			case 'productPage.shippingFrom': return 'الشحن من ';
			case 'productPage.theShipping': return 'الشحن';
			case 'productPage.shipping': return 'شحن ';
			case 'productPage.arrival': return 'الوصول';
			case 'productPage.expectedToArriveOn': return 'من المتوقع الوصول في ';
			case 'productPage.productRating': return 'تقييم المنتج';
			case 'productPage.reviews': return 'مراجعات';
			case 'productPage.theReviews': return 'المراجعات';
			case 'productPage.theComments': return 'التعليقات';
			case 'productPage.yourReaction': return 'تفاعلك';
			case 'productPage.clientsComments': return 'تعليقات العملاء';
			case 'productPage.showMore': return 'عرض المزيد';
			case 'productPage.reviewSendButton': return 'إرسال';
			case 'productPage.productSimilar': return 'المشابه لنفس المنتج';
			case 'productPage.totalPriceWithShipping': return 'السعر الكلي مع الشحن';
			case 'productPage.addToCart': return 'الاضافة الى السلة';
			case 'productPage.writeYourExperience': return 'اكتب تجربتك مع هذا المنتج';
			case 'productPage.onlyRemaining': return 'تبقى فقط ';
			case 'productPage.onePiece': return 'قطعة واحدة';
			case 'productPage.twoPieces': return 'قطعتين';
			case 'productPage.pieces': return ' قطع';
			case 'productPage.inInventory': return ' في المخزون';
			case 'productPage.noItemsInInventory': return 'لم يتبقى أيُّ قطع في المخزون';
			case 'cartPage.addDiscountCoupon': return 'اضافة كوبون خصم';
			case 'cartPage.confirmOrder': return 'تثبيت الطلب';
			case 'cartPage.shippingInformation': return 'معلومات الشحن';
			case 'cartPage.paymentOptions': return 'خيارات الدفع';
			case 'cartPage.shoppingCart': return 'عربة التسوق';
			case 'cartPage.application': return 'تطبيق';
			case 'cartPage.priceDetails': return 'تفاصيل السعر';
			case 'cartPage.total': return 'الاجمالي';
			case 'cartPage.completePurchase': return 'استكمال عملية الشراء';
			case 'cartPage.chooseSuitablePaymentMethod': return 'اختر طريقة الدفع المناسبة';
			case 'cartPage.payWithWallet': return 'الدفع بأستخدام المحفظة';
			case 'cartPage.priceWithShipping': return 'السعر مع الشحن';
			case 'cartPage.shipping': return 'شحن';
			case 'cartPage.tax': return 'الضريبة';
			case 'cartPage.payBill': return 'دفع الحساب';
			case 'cartPage.shippingTo': return 'الشحن الى';
			case 'cartPage.noAddress': return 'لا يوجد عنوان , اضف عنوانك الخاص';
			case 'cartPage.changeAddress': return 'تغيير العنوان';
			case 'cartPage.addToFavorites': return 'اضافة\nللمفضلة';
			case 'cartPage.delete': return 'حذف';
			case 'cartPage.requestExpressShipping': return 'طلب الشحن السريع';
			case 'cartPage.add': return 'اضافة';
			case 'cartPage.iqd': return 'د.ع';
			case 'cartPage.productShipping': return 'شحن المنتجات';
			case 'cartPage.seaFreightShipment': return 'شحنة النقل البحري';
			case 'cartPage.airFreightShipment': return 'شحنة النقل الجوي';
			case 'cartPage.estimatedArrivalTimeRange': return ({required Object from, required Object to}) => 'مدة الوصول تتراوح بين ${from}-${to} يوم';
			case 'cartPage.expressShippingNote': return 'بعض المنتجات يمكنك ارفاقها مع الشحن السريع لتسريع التوصيل، لكن سوف يترتب عليها دفع مبلغ إضافي على كل منتج';
			case 'cartPage.orderSplitShipping': return 'تُقسَم طلباتك تلقائيًا إلى عدة طرق شحن مختلفة اعتماداً على وزن وحجم كل منتج.';
			case 'cartPage.agreeAndContinue': return 'الموافقة والاستمرار';
			case 'cartPage.expressShipping': return 'الشحن السريع';
			case 'cartPage.after': return 'بعد';
			case 'cartPage.before': return 'قبل';
			case 'cartPage.all': return 'الكل';
			case 'cartPage.totalPrice': return 'السعر الكلي';
			case 'cartPage.shippingCost': return 'تكلفة الشحن';
			case 'cartPage.totalAmount': return 'السعر الاجمالي';
			case 'cartPage.requiredLocation': return 'يجب اختيار الموقع';
			case 'cartPage.productPriceHasChanged': return 'تم تغيير سعر بعض المنتجات المثبتة في سلة التسوق';
			case 'paymentPage.cardholderName': return 'اسم حامل البطاقة';
			case 'paymentPage.enterCardholderName': return 'اكتب الاسم الموجود على البطاقة';
			case 'paymentPage.cardNumber': return 'رقم البطاقة (10-12 رقم)';
			case 'paymentPage.cardNumberPlaceholder': return 'xxxx xxxx xxxx 1234';
			case 'paymentPage.cardExpirationDate': return 'تاريخ انتهاء البطاقة';
			case 'paymentPage.year': return 'السنة';
			case 'paymentPage.month': return 'الشهر';
			case 'paymentPage.cvvCvc': return 'CVV2 / CVC2';
			case 'paymentPage.emailOptional': return 'البريد الالكتروني (اختياري)';
			case 'paymentPage.enterEmail': return 'ادخل بريدك الالكتروني';
			case 'paymentPage.cardDetailsEncrypted': return 'تفاصيل البطاقة مشفرة ب الكامل من اجل الحماية والخصوصية';
			case 'paymentPage.saveCardInfo': return 'حفظ معلومات البطاقة';
			case 'paymentPage.completePayment': return ({required Object price}) => 'اتمام الدفع ${price} د.ع';
			case 'searchPage.searchHistory': return 'سجل البحث';
			case 'searchPage.browsePopular': return 'تصفح المشهور';
			case 'searchPage.didYouMean': return ({required Object name}) => 'هل تقصد:${name}';
			case 'sort.recommended': return 'الموصى به';
			case 'sort.asc': return 'الاقدم';
			case 'sort.desc': return 'الاحدث';
			case 'filter.cheapest': return 'الأرخص';
			case 'filter.popular': return 'الأكثر شهرة';
			case 'filter.discounted': return 'المخفض';
			case 'filter.bestSelling': return 'الأكثر مبيعًا';
			case 'filter.highestRating': return 'الأعلى تقييمًا';
			case 'error.noItemsFoundError': return 'لم يتم العثور على أي عناصر';
			case 'error.defaultErrorMessage': return 'حدث خطأ. يرجى المحاولة مرة أخرى.';
			case 'empty.noPoductsInCart': return 'لا توجد منتجات في السلة';
			case 'empty.noOrders': return 'لا توجد طلبات';
			case 'empty.noPoducts': return 'لا توجد منتجات';
			case 'confirmdDialog.confirmdDialogTitle': return 'هل انت متأكد من تسجيل الخروج!!';
			case 'confirmdDialog.confirmDialogbackDescription': return 'عند تسجيل الخروج من التطبيق ستفقد ميزة شراء المنتجات وطلبها';
			case 'confirmdDialog.confirmDialogBackLabel': return 'العودة';
			case 'confirmdDialog.confirmDialogActionLabel': return 'تسجيل خروج';
			case 'fixOrderConfirmDialog.fixOrderConfirmDialogTitle': return 'رائع! لقد تم تثبيت طلبك';
			case 'fixOrderConfirmDialog.fixOrderConfirmDialogDescription': return 'يمكنك تتبع طلبك الان ورؤية حالة الشحنة';
			case 'fixOrderConfirmDialog.fixOrderConfirmDialogBackLabel': return 'العودة';
			case 'fixOrderConfirmDialog.fixOrderConfirmdialogActionLabel': return 'الذهاب الى صفحة الطلبات';
			case 'addressPage.addAddress': return 'اضافة عنوان';
			case 'addressPage.phoneNumber': return 'رقم الهاتف';
			case 'addressPage.firstName': return 'الاسم الاول';
			case 'addressPage.middleName': return 'الاسم الاوسط';
			case 'addressPage.city': return 'المحافظة';
			case 'addressPage.addressDetails': return 'معلومات العنوان';
			case 'addressPage.neariestPoint': return 'اقرب نقطة دالة';
			case 'addressPage.moreNotes': return 'اكتب المزيد من الملاحظات';
			case 'addressPage.pleaseSelectCity': return 'الرجاء تحديد المحافظة';
			case 'addressPage.saveAddress': return 'حفظ العنوان';
			case 'addressPage.phoneNumberPlaceholder': return '07812345678';
			default: return null;
		}
	}
}

