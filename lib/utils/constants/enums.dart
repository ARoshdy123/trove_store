
/* --

      They cannot be created inside a class.
      Benefits of Using Enums

Type Safety: Enums prevent invalid values since only predefined values can be used.
Readability: Named values make code easier to understand than raw values like integers or strings.
Maintainability: Adding or modifying options is easier because they are centralized in one location.
Enums are especially useful for creating manageable, readable, and error-resistant code in cases where you need fixed sets of related values.
-- */


/// Switch of Custom Brand-Text-Size Widget
enum TextSizes { small, medium, large }

enum OrderStatus { processing, shipped, delivered }

enum PaymentMethods { paypal, googlePay, applePay, visa, masterCard, creditCard, paystack, razorPay, paytm }

