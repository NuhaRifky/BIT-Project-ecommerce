<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Directpay|RecurringPayment</title>
    </head>
    <div id="card_container"></div>
    <body>
        <script src="https://cdn.directpay.lk/dev/v1/directpayCardPayment.js?v=1"></script>
        <script>
            DirectPayCardPayment.init({
                container: "card_container", //<div id="card_container"></div>
                merchantId: "EP15084", //your merchant_id
                amount: "100500.00",
                refCode: "DP12345", //unique referance code form merchant
                currency: "LKR",
                type: "RECURRING",
                recurring: {
                    startPaymentDate: "2022-09-22",
                    lastPaymentDate: "2025-10-10",
                    interval: "MONTHLY",
                    isRetry: true,
                    retryAttempts: 2,
                    recurringAmount: "50.00",
                    doFirstPayment: true,
                },
                customerEmail: "abc@mail.com",
                customerMobile: "+94712345467",
                description: "test products", //product or service description
                debug: true,
                responseCallback: responseCallback,
                errorCallback: errorCallback,
                logo: "https://test.com/directpay_logo.png",
                apiKey: "334d9bcebdcae71884b140b32ab9d519c30e6694f94525fbdf429e77472c23a9",
            });
            //response callback.
            function responseCallback(result) {
                console.log("successCallback-Client", result);
                alert(JSON.stringify(result));
            }

            //error callback
            function errorCallback(result) {
                console.log("successCallback-Client", result);
                alert(JSON.stringify(result));
            }
        </script>
    </body>
</html>