# Violet

Violet 是面向 Linux 桌面 Obsidian 的静态主题。它以安静的顶部和侧栏围绕一张不透明的写作卡片，提供紧凑药丸标签页、圆角菜单和 macOS 风格的窗口按钮。Markdown 正文沿用 Obsidian 默认排版。

## 安装与更新

从 [最新 Release](https://github.com/StatIndet/obsidian-violet/releases/latest) 下载 `manifest.json` 和 `theme.css`，放到目标 Vault 的 `.obsidian/themes/Violet/`；或把 `Violet-v*.zip` 解压到该 Vault 的 `.obsidian/themes/`。在 **设置 → 外观 → 主题** 中选择 Violet。更新时备份并替换同一目录中的两个文件，然后重新打开 Vault。每个 Vault 单独选择主题。

普通安装只需要这两个文件，不需要插件、npm、Sass 或运行时 JavaScript。主题默认使用实色窗口外壳，中央笔记区始终不透明。

## 玻璃效果

`integration/native-glass.css` 是可选的 Vault 代码片段，`integration/niri.kdl` 是 niri 规则示例。真正的桌面透视还需要 Obsidian 的 Electron 窗口支持原生透明，以及 niri 提供背景模糊；CSS 背景透明本身无法让不透明窗口透出桌面。请先确认宿主兼容性，再分别配置片段与 niri。项目不分发修改过的 Obsidian 应用包，也不自动改动宿主或 niri 配置。

## 开发

```sh
npm ci
npm run build
npm run test:vault
npm run install:test
```

`src/theme.scss` 是唯一 Sass 入口，生成根目录 `theme.css`。`manifest.json` 与生成的 CSS 一起提交；CI 会检查版本一致性及构建结果。`test-vault/` 仅供隔离验证，不进入仓库。`scripts/create-test-vault.sh` 使用 `tests/markdown-baseline.md` 创建不含个人笔记的基线 Vault。

`src/` 保存主题源码，`integration/` 保存可选玻璃示例，`.github/workflows/` 保存 CI 与 Release 工作流。红绿灯按钮图像的来源与许可见 [第三方资源说明](THIRD_PARTY_NOTICES.md)。

## 许可

Violet 本身采用 [MIT 许可证](LICENSE)。嵌入的 MacTahoe GTK 按钮素材保留其原始 MIT 声明，详见[第三方资源说明](THIRD_PARTY_NOTICES.md)。
