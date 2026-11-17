# Divine Journey 2 Modern

Minecraft 1.12.2 专家级整合包，基于 [Divine Journey 2](https://github.com/Divine-Journey-2/Divine-Journey-2) 2.23.4 改造：把停更的多方块机器体系换成 MMCE，HUD 与小地图换成仍在维护的替代品，并内置简体中文。

<div align="center">

[![Minecraft Version](https://img.shields.io/badge/Minecraft-1.12.2-yellow.svg?style=for-the-badge)](/manifest.json)
[![License](https://img.shields.io/badge/License-GPL--3.0-yellow.svg?style=for-the-badge)](/LICENSE)
[![Based on Divine Journey 2](https://img.shields.io/badge/Based%20on-DJ2%202.23.4-blue.svg?style=for-the-badge)](https://github.com/Divine-Journey-2/Divine-Journey-2)

</div>

## 这是什么

DJ2 Modern 是 Divine Journey 2 的改版。玩法内容与上游一致，改造集中在运行与维护层面：降低卡顿、提升帧率，把已经停更的模组替换成仍在维护的替代品。

- **玩法内容与上游一致**：没有新增或删减任务章节，没有重做进度曲线。
- **中文内置**：任务书与本包自定义文本直接随包分发，不再依赖玩家自己找汉化。
- **运行在 Cleanroom 上**：首次启动自动下载 Zulu 25 并装好（约 220 MB），之后直接用固定的 Cleanroom 0.6.13 启动。

## 安装

1. 下载本包的最新 zip（CurseForge 格式），导入启动器。
2. 首次启动会自动下载并安装 Zulu 25（约 220 MB，会显示扫描/下载进度窗，慢的话等几分钟），装好后自动用 Cleanroom 0.6.13 重启。下载失败时会弹出窗口，让你手动指定 Java 25 的路径。
3. 首次进游戏需要联网且可能卡死：I18nUpdateMod 要下载 CFPA 语言包，JEI 的检索索引也要在第一次加载时建立。
4. **如果安装了 OptiFine，不要打开「快速渲染 / Fast Render」**，本包里它会造成渲染错误。

## 与上游 DJ2 的差异

| 项目 | 上游 2.23.4 | 本版 |
|---|---|---|
| 运行环境 | Forge 1.12.2（Java 8） | **Cleanroom 0.6.13-alpha**（1.12.2 兼容层，需 Java 25；由 Relauncher 固定版本并引导选择 Java） |
| 多方块机器 | Modular Machinery 1.10 + Modular Diversity 1.8 + ModularMagic 1.4 | **MMCE 2.3.2 + MMCE-Addons 2.0.5** |
| HUD | Hwyla + Waila Harvestability | **The One Probe CE 1.4.1** + TopAllDependents |
| 信息面板 | — | **InGame Info XML + 5 个附属**（TPS/MSPT、血魔法 LP、神秘灵气与咒波、RF 维度；中英双语，随游戏语言切换） |
| 小地图 | JourneyMap | **Xaero's Minimap / World Map** |
| 优化 | Spark + FermiumBooter / FermiumASM / NoiseThreader | **Flare + Chibi (LoliASM)**，mixin 层交给 Cleanroom 内置 |
| 语言 | 英文 | **内置简体中文** + I18nUpdateMod 在运行时补齐其余模组的中文；JEI 支持拼音与首字母搜索 |

这些替换集中在运行、界面与性能层：多方块结构的搭建方式、配方输入输出、任务要求与上游保持一致。

## 中文

本包的简体中文分两部分：

- 内置部分：DJ2 自定义文本（任务书、ContentTweaker / CraftTweaker 物品、附魔描述、GroovyScript、Requious Frakto），以及 MMCE 机器名与 modifier 描述，通过 `overrides/resources/` 与 `overrides/oresources/` 下的覆盖文件提供，不修改任何模组 jar。
- 运行时部分：其余模组的中文由 I18nUpdateMod 下载的 CFPA 语言包提供。

IGI 信息面板的配置（`overrides/config/InGameInfoXML/`）已做成中英双语：321 条标签、群系名与维度名都改为从 `overrides/resources/dj2hud/lang/` 读取，中文客户端显示原有中文，英文客户端显示英文（群系名由游戏本体给出）。

汉化来源、署名与对汉化文本的修改记录见 [`overrides/ATTRIBUTION.md`](overrides/ATTRIBUTION.md)。

## 许可与致谢

- 本整合包与上游 DJ2 一样以 **GPL-3.0** 发布，仓库公开。
- 简体中文来自 **Translation-of-DJ2**（作者 琅然_、PinkYuDeer、柠娜，GPL-3.0），完整署名与修改记录见 [`overrides/ATTRIBUTION.md`](overrides/ATTRIBUTION.md)。
- IGI 信息面板的配置（`overrides/config/InGameInfoXML/`）也来自 **Translation-of-DJ2**，与任务书汉化同源，同样以 GPL-3.0 分发。
- 上游作者与贡献者名单见 [`readme/CREDITS.md`](readme/CREDITS.md)；多方块机器体系来自 MMCE 及其 Addons 的作者。

## English summary

Divine Journey 2 Modern is a modernization of [Divine Journey 2](https://github.com/Divine-Journey-2/Divine-Journey-2) for Minecraft 1.12.2, based on upstream 2.23.4. Gameplay is unchanged: same quests, same progression. What has changed is the infrastructure:

- Runs on **Cleanroom 0.6.13** (Java 25 required; the Cleanroom Relauncher sets up the runtime on first launch) instead of plain Forge
- Modular Machinery / Modular Diversity / ModularMagic → **MMCE 2.3.2 + MMCE-Addons 2.0.5** (recipes and structures migrated)
- Hwyla → **The One Probe CE**; JourneyMap → **Xaero's Minimap and World Map**; adds an **InGame Info XML** panel (TPS, blood magic LP, Thaumcraft aura, RFTools dimensions)
- Spark and the Fermium mixin stack → **Flare + Chibi (LoliASM)**, with Cleanroom's built-in mixin layer
- **Simplified Chinese** is bundled for the quest book and custom content; I18nUpdateMod fetches the remaining translations at runtime
- **HUD language:** the InGame Info XML panel is bilingual — labels, biome names and dimension names come from `resources/dj2hud/lang/` and follow the game language (English biome names are supplied by the game itself)

**Installing:** import the zip into Prism Launcher or MultiMC as a CurseForge-format pack. The first launch downloads and installs Azul Zulu 25 automatically (~220 MB; a progress window may sit there for a few minutes) and then starts Cleanroom 0.6.13 — if the download fails, the relauncher window lets you point at a Java 25 runtime by hand. OptiFine is not downloaded automatically — drop the jar into `mods/` if you want shaders, and **do not enable "Fast Render"** (it breaks rendering in this pack). The first game launch also needs a network connection for the CFPA language pack.

Licensed GPL-3.0, like upstream. Third-party licenses and credits: [`overrides/ATTRIBUTION.md`](overrides/ATTRIBUTION.md).
