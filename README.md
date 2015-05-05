#Setup
假设你已经有了 Rails 和 Ember（如最新的 node.js） 开发环境的话：  
`git clone https://github.com/although2013/emberstart.git`  
`cd emberstart`  
`bundle`  
`rails s`  
使用浏览器访问 [localhost:3000](http://localhost:3000)  
本页最下方有一张例图。

#Issue
- ruby 的版本应该不太要紧，如果出错请 Uncomment Gemfile 中的 `ruby 2.1.5`
- 不要使用 bundle update，这里用了 Rails 4.0.4
- 提供的 End point 好像被墙了，出现什么 read nonblock错误就挂个 VPN


#Other
我在 Rails Controller 里直接用 http.get odata 的 json 数据，（感觉不是很好  
odata 返回的数据格式和 Ember 的 json API 要求的好像不太相同，我就自己写了个函数转换了一下  
把 `CustomerID` 改成 `customer_id`，还加了个 `id` : `hash['id'] = hash['CustomerID']`  
整个应用也是按照一些 Ember Rails 教程改的，尝试用更新的 gems 但没有成功


#Screen shot
![Demo Picture](https://raw.githubusercontent.com/although2013/emberstart/master/screen_shot.png)


