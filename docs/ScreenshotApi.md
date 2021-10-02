# ScreenshotApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**captureScreenshotAuthenticated**](ScreenshotApi.md#captureScreenshotAuthenticated) | **GET** /capture/{token}/{hash} | 
[**captureScreenshotUnauthenticated**](ScreenshotApi.md#captureScreenshotUnauthenticated) | **GET** /capture/{token} | 



## captureScreenshotAuthenticated



screenshot-capture-api.com Screenshot Capture is a very simple but powerful screenshot API that anyone can easily use to create pixel-perfect website screenshots. It always uses a recent version of Chrome to ensure that all modern web features are fully supported and rendering is exactly as your customers would expect.

### Example

```bash
 captureScreenshotAuthenticated token=value hash=value  url=value  fileType=value  ttl=value  invalidate=value  full=value  lazyload_scroll=value  delay=value  width=value  height=value  quality=value  scale=value  x=value  y=value  redirect=value  language=value  random_user_agent=value  user_agent=value  headers=value  cookies=value  css=value  js=value  wait=value  element=value  timezone=value  device=value  latitude=value  longitude=value  accuracy=value  proxy=value  adblock=value  hide_cookie_banners=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **string** | A valid token is needed to make paid API calls. Tokens can be managed from your account. | [default to null]
 **hash** | **string** | The hash value is for authenticated requests. If you want to publish this URL, you should use the authenticated requests. | [default to null]
 **url** | **string** | The URL of the website you want to capture. Please include the protocol (http:// or https://). | [default to null]
 **fileType** | **string** | The image file format of the captured screenshot. Either png, jpeg or PDF with 72 dpi. | [optional] [default to null]
 **ttl** | **integer** | Number of seconds the capture file is cached by our CDN. An API request that is loaded through the cache does not count as a paid request. You can set a number of seconds from 0 seconds up to 2592000 seconds. This is a maximum of 30 days. | [optional] [default to null]
 **invalidate** | **boolean** | Force the API to invalidate the cache and capture a new screenshot. This call costs you additional money, because a call of a cache hit is not charged. | [optional] [default to null]
 **full** | **boolean** | Set this parameter to true if you want to screenshot the whole web page in full size. | [optional] [default to null]
 **lazyloadScroll** | **boolean** | Set this parameter to true to scroll down through the entire page before taking a screenshot. This is useful for triggering animations or lazy load elements in full screen. | [optional] [default to false]
 **delay** | **integer** | The delay in milliseconds to wait after the page loads before taking the screenshot. This is in milliseconds. One second is 1000 milliseconds. From 0 milliseconds to a maximum of 10,000 milliseconds. | [optional] [default to null]
 **width** | **integer** | The width, in pixels, of the browser viewport to use. | [optional] [default to 1920]
 **height** | **integer** | The height, in pixels, of the browser viewport to use. Ignored if you set full to true. | [optional] [default to 1080]
 **quality** | **integer** | The quality of the image between 0 and 100. This works only for the jpeg format, for PNG images the parameter is applied only during compression. | [optional] [default to 90]
 **scale** | **integer** | The scale factor of the device to use when taking the screenshot. For example, a scale factor of 2 produces a high-resolution screenshot suitable for viewing on Retina devices. The larger the scale factor, the larger the screenshot produced. | [optional] [default to 1.0]
 **x** | **integer** | The starting point of a section screenshot on the X axis. | [optional] [default to 0]
 **y** | **integer** | The starting point of a section screenshot on the Y axis. | [optional] [default to 0]
 **redirect** | **boolean** | If you set Redirect, the response will be a 302 redirect to the screenshot file in our CDN. | [optional] [default to false]
 **language** | **string** | Sets the Accept-Language header on requests to the target URL so that you can take screenshots from a website with a specific language. | [optional] [default to null]
 **randomUserAgent** | **boolean** | Sets a random user agent header to emulate a different devices when taking screenshots. | [optional] [default to false]
 **userAgent** | **string** | Sets the user agent header to emulate a specific device when taking screenshots. | [optional] [default to null]
 **headers** | **string** | A semicolon-separated list of header parameters to be used when capturing the screenshot. Each header should be passed as a key-value pair and multiple pairs should be separated by a semicolon. | [optional] [default to null]
 **cookies** | **string** | A semicolon-separated list of cookies to be used when capturing the screenshot. Each cookies should be passed as a key-value pair and multiple pairs should be separated by a semicolon. | [optional] [default to null]
 **css** | **string** | Inject your custom CSS. | [optional] [default to null]
 **js** | **string** | Inject your custom Javascript. | [optional] [default to null]
 **wait** | **string** | Wait until the specified CSS selector matches an element present in the page before taking a screenshot. The process is canceled after 60 seconds. | [optional] [default to null]
 **element** | **string** | Takes a screenshot of the first element matched by the specified CSS selector. This is ignored if full is true. (This option cannot be used with the PDF export format.) | [optional] [default to null]
 **timezone** | **string** | The IANA time zone identifier used for this capture. | [optional] [default to Europe/Berlin]
 **device** | **string** | The device used in the emulation. | [optional] [default to null]
 **latitude** | **integer** | The latitude used in the emulation of the geo-location. | [optional] [default to 0.0]
 **longitude** | **integer** | The longitude used in the emulation of the geo-location. | [optional] [default to 0.0]
 **accuracy** | **integer** | The accuracy in meters used in the emulation of the geo-location. | [optional] [default to 2.0]
 **proxy** | **string** | Use an address of a proxy server through which the screenshot should be taken. The proxy address should be formatted as http://username:password@proxyserver.com:31280 | [optional] [default to null]
 **adblock** | **boolean** | Prevent ads from being displayed. Block requests from popular ad networks and hide frequent ads. | [optional] [default to false]
 **hideCookieBanners** | **boolean** | Prevent cookie banners and pop-ups from being displayed. The best possible result is tried. | [optional] [default to false]

### Return type

**binary**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/pdf, image/jpeg, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## captureScreenshotUnauthenticated



screenshot-capture-api.com Screenshot Capture is a very simple but powerful screenshot API that anyone can easily use to create pixel-perfect website screenshots. It always uses a recent version of Chrome to ensure that all modern web features are fully supported and rendering is exactly as your customers would expect.

### Example

```bash
 captureScreenshotUnauthenticated token=value  url=value  fileType=value  ttl=value  invalidate=value  full=value  lazyload_scroll=value  delay=value  width=value  height=value  quality=value  scale=value  x=value  y=value  redirect=value  language=value  random_user_agent=value  user_agent=value  headers=value  cookies=value  css=value  js=value  wait=value  element=value  timezone=value  device=value  latitude=value  longitude=value  accuracy=value  proxy=value  adblock=value  hide_cookie_banners=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **string** | A valid token is needed to make paid API calls. Tokens can be managed from your account. | [default to null]
 **url** | **string** | The URL of the website you want to capture. Please include the protocol (http:// or https://). | [default to null]
 **fileType** | **string** | The image file format of the captured screenshot. Either png, jpeg or PDF with 72 dpi. | [optional] [default to null]
 **ttl** | **integer** | Number of seconds the capture file is cached by our CDN. An API request that is loaded through the cache does not count as a paid request. You can set a number of seconds from 0 seconds up to 2592000 seconds. This is a maximum of 30 days. | [optional] [default to null]
 **invalidate** | **boolean** | Force the API to invalidate the cache and capture a new screenshot. This call costs you additional money, because a call of a cache hit is not charged. | [optional] [default to null]
 **full** | **boolean** | Set this parameter to true if you want to screenshot the whole web page in full size. | [optional] [default to null]
 **lazyloadScroll** | **boolean** | Set this parameter to true to scroll down through the entire page before taking a screenshot. This is useful for triggering animations or lazy load elements in full screen. | [optional] [default to false]
 **delay** | **integer** | The delay in milliseconds to wait after the page loads before taking the screenshot. This is in milliseconds. One second is 1000 milliseconds. From 0 milliseconds to a maximum of 10,000 milliseconds. | [optional] [default to null]
 **width** | **integer** | The width, in pixels, of the browser viewport to use. | [optional] [default to 1920]
 **height** | **integer** | The height, in pixels, of the browser viewport to use. Ignored if you set full to true. | [optional] [default to 1080]
 **quality** | **integer** | The quality of the image between 0 and 100. This works only for the jpeg format, for PNG images the parameter is applied only during compression. | [optional] [default to 90]
 **scale** | **integer** | The scale factor of the device to use when taking the screenshot. For example, a scale factor of 2 produces a high-resolution screenshot suitable for viewing on Retina devices. The larger the scale factor, the larger the screenshot produced. | [optional] [default to 1.0]
 **x** | **integer** | The starting point of a section screenshot on the X axis. | [optional] [default to 0]
 **y** | **integer** | The starting point of a section screenshot on the Y axis. | [optional] [default to 0]
 **redirect** | **boolean** | If you set Redirect, the response will be a 302 redirect to the screenshot file in our CDN. | [optional] [default to false]
 **language** | **string** | Sets the Accept-Language header on requests to the target URL so that you can take screenshots from a website with a specific language. | [optional] [default to null]
 **randomUserAgent** | **boolean** | Sets a random user agent header to emulate a different devices when taking screenshots. | [optional] [default to false]
 **userAgent** | **string** | Sets the user agent header to emulate a specific device when taking screenshots. | [optional] [default to null]
 **headers** | **string** | A semicolon-separated list of header parameters to be used when capturing the screenshot. Each header should be passed as a key-value pair and multiple pairs should be separated by a semicolon. | [optional] [default to null]
 **cookies** | **string** | A semicolon-separated list of cookies to be used when capturing the screenshot. Each cookies should be passed as a key-value pair and multiple pairs should be separated by a semicolon. | [optional] [default to null]
 **css** | **string** | Inject your custom CSS. | [optional] [default to null]
 **js** | **string** | Inject your custom Javascript. | [optional] [default to null]
 **wait** | **string** | Wait until the specified CSS selector matches an element present in the page before taking a screenshot. The process is canceled after 60 seconds. | [optional] [default to null]
 **element** | **string** | Takes a screenshot of the first element matched by the specified CSS selector. This is ignored if full is true. (This option cannot be used with the PDF export format.) | [optional] [default to null]
 **timezone** | **string** | The IANA time zone identifier used for this capture. | [optional] [default to Europe/Berlin]
 **device** | **string** | The device used in the emulation. | [optional] [default to null]
 **latitude** | **integer** | The latitude used in the emulation of the geo-location. | [optional] [default to 0.0]
 **longitude** | **integer** | The longitude used in the emulation of the geo-location. | [optional] [default to 0.0]
 **accuracy** | **integer** | The accuracy in meters used in the emulation of the geo-location. | [optional] [default to 2.0]
 **proxy** | **string** | Use an address of a proxy server through which the screenshot should be taken. The proxy address should be formatted as http://username:password@proxyserver.com:31280 | [optional] [default to null]
 **adblock** | **boolean** | Prevent ads from being displayed. Block requests from popular ad networks and hide frequent ads. | [optional] [default to false]
 **hideCookieBanners** | **boolean** | Prevent cookie banners and pop-ups from being displayed. The best possible result is tried. | [optional] [default to false]

### Return type

**binary**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/pdf, image/jpeg, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

