展映AI本地服务安装、使用说明
Installation and use instructions for Zhanying AI local service

[English version](https://github.com/youkpan/ZY_local_AI_server/blob/master/README_en.md)

当前企业对AI需求越来越高，如何创建一个企业AI工作流程，用AI辅助参与信息管理，提升效率，同时软件工具更可控，做到低成本、本地化、大规模使用是提升企业信息效率的一个更好的方式。深圳展映在这个领域一直投入大量资源帮助企业获得更多AI落地及应用。如何能在成本和效率、体验上、产品使用可控找到最适合的产品及服务，是我们深圳展映科技一直探索的方向。现在我们推出了本地AI服务，希望通过我们免费的合作伙伴系列产品为大家带来更好的AI服务能力。同时也欢迎使用我们展映在线AI服务：<https://ai.zyinfo.pro。>



本次AI服务功能比较强大，而且不需要高端GPU 也能在windows系统上运行，需要较少的内存及CPU计算，并且能有较快的AI回复速度，较好的质量，满足我们的正常场景下 检索、文章生成、AI工作流等场景的使用。后续我们一直也会推进相关产品的更新、推荐最好的产品及新的动态，欢迎关注我们微信公众号：展映科技 ，获取最新的动态。也欢迎与我们客服互动~



特别说明：部分合作方产品来自市场公开产品，都会选择至少有数十万用户、客户的产品供应方。我们自有的软件、服务都经过认真的安全审核，尽可能不使用第三方的系统工具，保障服务质量和安全。每个软件包我们都查阅了背后的开发者和部分代码及用户反馈，付出了较多的成本和精力，为的是给企业用户提供更多一层保障。



好的，现在开始了解下如何安装及体验最新的本地AI服务吧~



小提示：本文档最新更新地址：<https://docs.qq.com/doc/DS3Bsa1ZUWU1JYVhS>



本说明文档相关产品的下载：



链接：<https://pan.baidu.com/s/1k5jnh36kcU0kOEE3IDivMQ?pwd=5566> 提取码：5566



或链接：<https://pan.quark.cn/s/8d413221daff>



安装流程：



先下载安装包 V1.7 、V1.8，由于V1.8 是更新包。需要覆盖V1.7的内容。V1.7解压后，将V1.8 rar 移动到文件夹中，点击解压到当前文件夹:



![descript](/files/images/1%20(1).png)



解压到当前文件夹、覆盖当前文件夹文件



（后续更新可点击自动更新.bat）



![descript](/files/images/1%20(2).png)



AI服务软件包资源如图所示（按文件名从小到大排序）



1. **安装 Docker Desktop Installer.exe**



![](/files/images/1%20(3).png)



或者前往：<https://docs.docker.com/desktop/install/windows-install/获取最新版本。>



安装完毕后点击运行，可看到类似如上界面。



1. **启动 Docker engine**



注意看上图左下角，是否是 running 正在运行。



1. **点击 安装AI网页版后端服务.bat**



后续后端升级也可直接点击那个



如果无法拉取新的镜像，可能需要配置国内源。



若实在无法使用，可能需要外网环境。可联系我们远程提供合作伙伴的解决方案：



微信 youkpan 。 Email: <tel_pan@126.com>



1. **点击 “3.0 开放本地 AI 相关端口，点击右键 使用管理员权限运行”**

2. **点击 "3.1选择AI大模型服务的IP 并保存.bat"**



![](/files/images/1%20(4).png)



**配置AI模型服务IP 示例（选择你的无线网卡或有线网卡IP）**



你可以在命令行输入 ipconfig 查看你的本地网卡 局域网地址确认。（比如无线网卡，有线网卡等，但不能是虚拟网卡）



如图：本地兼容openAI 服务的接口是：<http://192.168.18.223:7900/v1> （示例）



1. **点击 启动本地AI.bat**



**后续可直接运行此命令，可点击右键发送到桌面快捷方式**



会自动打开几个网站，最后那个是本地的AI服务页面了。



也可以手动打开 <http://127.0.0.1。>



同时也欢迎体验我们展映科技的AI网页版服务 <https://ai.zyinfo.pro> 以及流程图（智能视频剪辑：<https://docs.qq.com/doc/DS3BlbE9JcWZ6TkNM）。>



此时会出现一个这样的窗口，**请不要关闭它**：



![descript](/files/images/1%20(5).png)



这是本地AI服务的后端程序，需要保持运行



在浏览器中，<http://127.0.0.1> 的网址下，会出现如下界面：



![](/files/images/1%20(6).png)



设置AI服务的管理账户



注册后，再登录即可使用了。



![](/files/images/1%20(7).png)



进入后，可看到如下工作页面



![](/files/images/1%20(8).png)



点击右上角 设置，开始设置我们本地AI服务



![](/files/images/1%20(9).png)



选择模型供应商



![](/files/images/1%20(10).png)



找到openAI 适配的接口



![](/files/images/1%20(11).png)



模型填写zhangying-AI-llm，key填写no-key。



API 的IP替换成你自己的选择的IP信息。



比如<http://192.168.18.223:7900/v1> （注意网址中间不能有空格，替换红色部分）



点击保存即可,第一次配置时，后端服务会启动，可能需要点时间，若无响应，再试试。



若无法连接可以先尝试开放windows系统端口（7900 ,7901 已提供自动化命令）：



![descript](/files/images/1%20(12).png)



找到：开放本地 AI 相关端口，点击右键 使用管理员权限运行.bat



点击右键用管理员方式运行



可使用：<https://v.stylee.top:8899/llm_api/test/test/qwen/v1> 代替测试



**推荐使用我们的AI服务在线接口**，质量更高，还能选择30多款高级AI服务模型：



展映智慧助手大模型接口 LLM API



如果还是不行，基本不出现这个问题了，



也可设置docker desktop与内部容器的网络，点击右上角设置：



![descript](/files/images/1%20(13).png)



将其设定为与你兼容的网络试试



比如 将：192.168.50.0/24 改为：192.168.18.0/24



假设我们IP 是192.168.18.223



![](/files/images/1%20(14).png)



接着，我们创建一个聊天对话试试



![](/files/images/1%20(15).png)



在右上角 选择你的AI服务，



![](/files/images/1%20(16).png)



这样填可能比较简单好用，最后一个选项是用来设定每次AI输出长度。一般在600以内，它如果输出不够再和它说 继续。



![](/files/images/1%20(17).png)



在右侧输入 你好，就能看到回复了！



在你本地运行的AI服务正常工作啦！



![](/files/images/1%20(18).png)



接下来可以自行体验里面的产品吧，有多种模板



![](/files/images/1%20(19).png)



编程、协作 助手



![](/files/images/1%20(20).png)



高级版助理



![](/files/images/1%20(21).png)



工作流等



![](/files/images/1%20(22).png)



还可以添加本地知识库（信息都保存在本地，需要开启本地检索接口）



添加本地信息检索接口：



添加本地信息检索接口，点击设置：



![](/files/images/1%20(23).png)



&nbsp;



双击打开：检索服务（可选）.bat



![](/files/images/1%20(24).png)



示例 模型填写zhangying-AI-embedding，key填写no-key。



填写完毕后，回到原来知识库界面



![](/files/images/1%20(25).png)



按默认设置试试



![](/files/images/1%20(26).png)



导入本地文档数据测试



![](/files/images/1%20(27).png)



查看文件列表



![](/files/images/1%20(28).png)



即可查看到相关信息



![](/files/images/1%20(29).png)



同时也可体验最新版的AI工作流



让AI一步步按照你的流程自动执行，帮助你处理重复中等难度的工作。



现在开始自由体验吧！



**推荐使用我们的展映AI在线服务**（可视化AI流程工作室）：



![descript](/files/images/1%20(30).png)



展映的AI工作流视频自动剪辑



再也不担心拍摄、存放太多视频素材了，可以放心拍~



![descript](/files/images/1%20(31).png)



AI自动创作



欢迎参阅：



展映可视化AI工作流设计工具 使用说明



欢迎联系我们：



深圳展映科技



<http://zyinfo.pro>



Email: [tel_pan@126.com](mailto:tel_pan@126.com)



微信：youkpan