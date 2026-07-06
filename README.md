# 荞一夏的小窝

基于 Hexo + yilia 主题构建的个人博客系统，包含博客主站、多个 App 产品落地页与协议页面。

> You gotta live what's in you！不畏艰辛，不忘初衷！

## 项目结构

```
Anonymous-Monk/
├── index.html                  # 博客首页
├── 2016/                       # 2016 年文章归档
│   ├── 04/14/Hexo-使用/
│   ├── 09/28/Awesome-iOS/
│   ├── 09/28/Awesome-前端/
│   ├── 09/28/Awesome-设计/
│   ├── 09/28/Markdown语法指南/
│   ├── 09/28/iOS-最新版-CocoaPods-的安装流程/
│   ├── 09/29/文件管理-沙盒路径、NSFileManager/
│   ├── 10/09/探究iOS后台刷新/
│   ├── 10/10/Objective-C编码规范/
│   ├── 10/23/iOS基础面试/
│   ├── 10/23/iOS进阶面试/
│   └── 11/13/iOS单元测试/
├── archives/                   # 归档页（按年/月）
├── categories/                 # 分类页（Hexo / Markdown）
├── tags/                       # 标签页（iOS / 前端 / 设计 / 面试题 等）
├── about/                      # 关于页
├── works/                      # 作品页
├── FrontEndGuide/              # 前端指南
│
├── Home/                       # 个人主页（独立模板）
│   ├── css/ js/ img/ music/
│   └── index.html
│
├── ibox/                       # ibox App 产品落地页
│   ├── css/ js/ img/
│   ├── index.html
│   └── laneAgreement*.html / lanePolicy*.html
│
├── iscan/                      # iscan App 产品落地页
│   ├── css/ js/ img/
│   └── index.html
│
├── Line/                       # Line App 产品落地页
│   ├── css/ js/ img/
│   ├── app-ads.txt
│   └── index.html
│
├── iTDAgreement.html           # iTD 协议/政策页
├── iTDPolicy.html
├── iscanAgreement.html         # iscan 协议/政策页（中/英）
├── iscanAgreement_en.html
├── iscanPolicy.html
├── iscanPolicy_en.html
├── laneAgreement.html          # lane 协议/政策页（中/英）
├── laneAgreement_en.html
├── lanePolicy.html
├── lanePolicy_en.html
│
├── css/                        # 博客主站样式
│   ├── style.css               # 主样式（含现代化补丁）
│   ├── loading-style.css
│   ├── showshare.css
│   └── pace/                   # 加载进度条
├── js/                         # 博客主站脚本
│   ├── main.js                 # 主脚本（含头像加载、移动端逻辑）
│   ├── mobile.js
│   ├── pc.js
│   ├── jquery.lazyload.js
│   ├── pace.js
│   ├── TweenMax.js
│   └── plugins.js
├── img/                        # 博客主站图片资源
│   ├── bloghead.JPG            # 博主头像
│   ├── favicon.png
│   └── (社交图标等)
├── background/                 # 背景图集
├── font-awesome/               # 图标字体
├── fancybox/                   # 图片灯箱
├── 404.html                    # 404 页面
├── app-ads.txt
└── apple-touch-icon.png
```

## 内容板块

### 博客主站
- **主题**：yilia（已进行深度现代化重构）
- **博主**：荞一夏
- **方向**：iOS 开发、前端、设计、面试题、Hexo、Markdown
- **特性**：归档、分类、标签、关于、作品、Fancybox 灯箱、Pace 加载进度条

### 独立产品页
| 路径 | 说明 |
|------|------|
| `/Home/` | 个人主页（独立模板，含音乐播放器） |
| `/ibox/` | ibox App 落地页 + lane 协议/政策 |
| `/iscan/` | iscan App 落地页 + iscan 协议/政策 |
| `/Line/` | Line App 落地页 |

### 协议与政策
- iTD / iscan / lane 三套协议页，均提供中英双语版本

## 技术栈

- **博客框架**：Hexo
- **主题**：yilia（spfk 分支）
- **依赖库**：jQuery、RequireJS、Fancybox、Pace、Font Awesome、TweenMax
- **产品页**：Bootstrap 4、Owl Carousel、Magnific Popup、Wow.js、CounterUp
- **部署**：纯静态，可直接托管于 GitHub Pages / Vercel / Netlify

## 本地预览

项目为纯静态站点，任选一种方式启动本地服务：

```bash
# Python
python3 -m http.server 8765

# Node.js
npx serve -p 8765

# PHP
php -S localhost:8765
```

启动后访问 http://localhost:8765/ 。

## 优化记录

本项目已进行系统性优化，关键改动记录如下：

### Bug 修复
- 修复 CSS 语法错误（`position: ralative`、`color: none`、`overlay-x` 等）
- 修复 CDN 失效（腾讯教育 CDN 下线，替换为 bootcdn）
- 修复 RequireJS 模块加载失败（添加 `jquery` 桥接）
- 修复头像不显示（移除 lazyload 依赖，改用原生 JS）
- 修复移动端断点不一致（JS `700px` → `800px`，与 CSS 对齐）

### 视觉现代化
- 配色升级：`#3f3f3f` → `#1a1d24`（精致深蓝灰）
- 文字对比度提升：正文 `#999` → `#c8cdd3`，标题 `#999` → `#e8eaed`
- 卡片重构：圆角 10px、双层阴影、悬停上浮 + 蓝色描边发光
- 标签云：圆角胶囊样式
- 分页：圆角方形 + 顶部分隔线
- 代码块：`#161821` 深邃背景
- 自定义滚动条、引用块、表格现代化样式

### 移动端适配
- 修复标题强制单行省略号截断问题
- 修复 meta 绝对定位拼写错误
- 字号提升：正文 14px → 16px，标题 18px → 20px
- 间距统一：header / entry / info padding 对齐
- 触摸友好：按钮/分页最小 44px 触摸目标
- 超小屏（≤480px）进一步压缩

### 产品页重构
- `ibox`、`iscan` 产品落地页重新设计，美观、大气、专业化

## 浏览器兼容

- Chrome / Edge / Safari（最新版）
- Firefox（最新版）
- 移动端 Safari / Chrome

## License

个人博客项目，文章版权归博主所有，代码部分遵循 MIT License。
