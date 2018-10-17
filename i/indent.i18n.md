## CN

对文本的每一行进行缩进处理。

|参数名|类型|说明|
|-----|----|---|
|str|string|源字符串|
|[char]|string|缩进字符|
|[len]|number|缩进长度|
|返回值|string|目标字符串|

```javascript
indent('foo\nbar', ' ', 4); // -> 'foo\n    bar'
```