## CN

检查对象所有键名和键值是否在指定的对象中。

|参数名|类型|说明|
|-----|----|---|
|obj|object|目标对象|
|src|object|进行匹配的对象|
|返回值|boolean|如果匹配，返回真|

```javascript
isMatch({a: 1, b: 2}, {a: 1}); // -> true
```