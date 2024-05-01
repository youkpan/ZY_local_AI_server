Installation and use instructions for Zhanying AI local service

[中文版 安装说明](/tree/master/)

At present, enterprises have an increasing demand for AI. How to create an enterprise AI workflow, use AI to assist in information management, improve efficiency, and make software tools more controllable, low-cost, localized, and large-scale use is a better way to improve enterprise information efficiency. Shenzhen Zhanying has been investing a lot of resources in this field to help enterprises obtain more AI implementation and applications. How to find the most suitable products and services in terms of cost and efficiency, experience, and controllable product use is the direction that Shenzhen Zhanying Technology has been exploring. Now we have launched local AI services, hoping to bring you better AI service capabilities through our free partner series products. At the same time, you are also welcome to use our Zhanying online AI service: <https://ai.zyinfo.pro. >

This AI service is relatively powerful, and it can run on Windows systems without high-end GPUs. It requires less memory and CPU calculations, and can have faster AI response speeds and better quality, which meets our normal scenarios of retrieval, article generation, AI workflows and other scenarios. In the future, we will continue to promote the update of related products, recommend the best products and new dynamics. Welcome to follow our WeChat public account: Zhanying Technology to get the latest dynamics. You are also welcome to interact with our customer service~

Special note: Some of the partner products are from public products in the market, and we will choose product suppliers with at least hundreds of thousands of users and customers. Our own software and services have undergone serious security audits, and we try not to use third-party system tools to ensure service quality and security. For each software package, we have consulted the developers and some codes and user feedback behind it, and paid a lot of cost and effort to provide an extra layer of protection for corporate users. OK, now let's learn how to install and experience the latest local AI service~

Tips: The latest update address of this document: <https://docs.qq.com/doc/DS3Bsa1ZUWU1JYVhS>

Download products related to this document:
[Google drive](https://drive.google.com/drive/folders/1PYaQ8d1Dj1TXJvy4AJPvClls1VkPehvk?usp=sharing)

Baidu Link: <https://pan.baidu.com/s/1k5jnh36kcU0kOEE3IDivMQ?pwd=5566> Extraction code: 5566

Or link: <https://pan.quark.cn/s/8d413221daff>

Our Project is based on [dify.ai](https://github.com/langgenius/dify)

Installation process:

First download the installation package V1.7, V1.8, because V1.8 is an update package. The content of V1.7 needs to be overwritten. After V1.7 is unzipped, move V1.8 rar to the folder and click to unzip to the current folder:

![descript](/files/images/1%20(1).png)

Unzip to the current folder and overwrite the files in the current folder

(Click automatic update.bat for subsequent updates)

![descript](/files/images/1%20(2).png)

The AI ​​service software package resources are shown in the figure (sorted by file name from small to large)

1. **Install Docker Desktop Installer.exe**

![](/files/images/1%20(3).png)

Or go to: <https://docs.docker.com/desktop/install/windows-install/ to get the latest version. >

After the installation is complete, click Run and you will see an interface similar to the above. 1. **Start Docker engine**

Pay attention to the lower left corner of the above picture to see if it is running. 1. **Click Install AI web version backend service.bat**

You can also click that directly for subsequent backend upgrades

If you cannot pull a new image, you may need to configure a domestic source. If you really cannot use it, you may need an external network environment. You can contact us to provide remote solutions for partners:

WeChat youkpan . Email: <tel_pan@126.com>

1. **Click "3.0 Open local AI related ports, right-click and run with administrator privileges"**

2. **Click "3.1 Select the IP of AI large model service and save.bat"**

![](/files/images/1%20(4).png)

**Configure AI model service IP example (select your wireless network card or wired network card IP)**

You can enter ipconfig in the command line to check your local network card LAN address for confirmation. (For example, wireless network card, wired network card, etc., but not virtual network card)

As shown in the figure: The local interface compatible with openAI service is: <http://192.168.18.223:7900/v1> (example)

1. **Click Start local AI.bat**

**You can run this command directly later, and you can right-click to send it to the desktop shortcut**

Several websites will be opened automatically, and the last one is the local AI service page. You can also open <http://127.0.0.1 manually. >

You are also welcome to experience our Zhanying Technology's AI web version service <https://ai.zyinfo.pro> and flow chart (intelligent video editing: <https://docs.qq.com/doc/DS3BlbE9JcWZ6TkNM). >

A window like this will appear at this time. **Please do not close it**:

![descript](/files/images/1%20(5).png)

This is the backend program of the local AI service and needs to be kept running

In the browser, under the URL <http://127.0.0.1>, the following interface will appear:

![](/files/images/1%20(6).png)

Set up the management account of the AI ​​service

After registration, log in and you can use it.

![](/files/images/1%20(7).png)

After entering, you can see the following work page

![](/files/images/1%20(8).png)

Click Settings in the upper right corner to start setting up our local AI service

![](/files/images/1%20(9).png)

Select a model provider

![](/files/images/1%20(10).png)

Find openAI Adapted interface

![](/files/images/1%20(11).png)

For the model, fill in zhangying-AI-llm, and for the key, fill in no-key.

Replace the API IP with the IP information of your choice.

For example, <http://192.168.18.223:7900/v1> (note that there should be no space in the middle of the URL, replace the red part)

Click Save. When configuring for the first time, the backend service will start, which may take some time. If there is no response, try again.

If you cannot connect, you can try to open the Windows system port first (7900, 7901 has provided automated commands):

![descript](/files/images/1%20(12).png)

Find: Open local AI related ports, right-click and run with administrator privileges.bat

Right-click and run as administrator

You can use: <https://v.stylee.top:8899/llm_api/test/test/qwen/v1> instead of testing

**It is recommended to use our AI service online interface**, which has higher quality and can also choose more than 30 advanced AI service models:

Large Model Interface of Exhibition Smart Assistant LLM API

If it still doesn't work, this problem will basically not occur,

You can also set up docker desktop and the network of the internal container, click the settings in the upper right corner:

![descript](/files/images/1%20(13).png)

Try to set it to a network that is compatible with you

For example, change: 192.168.50.0/24 to: 192.168.18.0/24

Suppose our IP is 192.168.18.223

![](/files/images/1%20(14).png)

Next, let's create a chat dialogue and try it

![](/files/images/1%20(15).png)

In the upper right corner Select your AI service,

![](/files/images/1%20(16).png)

This may be easier to use. The last option is to set the length of each AI output. Generally, it is within 600. If it does not output enough, tell it to continue.

![](/files/images/1%20(17).png)

Type hello on the right and you will see the reply!

The AI ​​service running locally is working properly!

![](/files/images/1%20(18).png)

Next, you can experience the products by yourself. There are many templates

![](/files/images/1%20(19).png)

Programming, collaboration assistant

![](/files/images/1%20(20).png)

Advanced assistant

![](/files/images/1%20(21).png)

Workflow, etc.

![](/files/images/1%20(22).png)

You can also add a local knowledge base (the information is stored locally, and the local search interface needs to be enabled)

Add a local information search interface:

Add a local information search interface, click Settings:

![](/files/images/1%20(23).png)

&nbsp;

Double-click to open: Search service (optional).bat

![](/files/images/1%20(24).png)

Example Fill in zhangying-AI-embedding for the model and no-key for the key.

After filling in, return to the original knowledge base interface

![](/files/images/1%20(25).png)

Try it with the default settings

![](/files/images/1%20(26).png)

Import local document data test

![](https://raw.githubusercontent.com/youkpan/ZY_local_AI_server/mas ter/files/images/1%20(27).png)

View the file list

![](/files/images/1%20(28).png)

You can view relevant information

![](/files/images/1%20(29).png)

You can also experience the latest version of AI workflow

Let AI automatically execute according to your process step by step to help you handle repetitive and medium-difficulty tasks. Start your free experience now! **Recommend using our Zhanying AI online service** (Visual AI Process Studio):

![descript](/files/images/1%20(30).png)

Zhanying's AI workflow video automatic editing

No longer worry about shooting and storing too much video material, you can shoot with confidence~

![descript](/files/images/1%20(31).png)

AI automatic creation

Please refer to:

Zhanying Visual AI Workflow Design Tool Instructions

Welcome to contact us:

Shenzhen Zhanying Technology

<http://zyinfo.pro>

Email: [tel_pan@126.com](mailto:tel_pan@126.com)

WeChat: youkpan