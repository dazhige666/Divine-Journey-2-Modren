# Divine Journey 2 Modern

Minecraft 1.12.2 专家级整合包，基于 [Divine Journey 2](https://github.com/Divine-Journey-2/Divine-Journey-2) 2.23.4 改造：把停更的多方块机器体系换成 MMCE，HUD 与小地图换成仍在维护的替代品，并内置简体中文。

<div align="center">

[![Minecraft Version](https://img.shields.io/badge/Minecraft-1.12.2-yellow.svg?style=for-the-badge)](/manifest.json)
[![License](https://img.shields.io/badge/License-GPL--3.0-yellow.svg?style=for-the-badge)](/LICENSE)
[![Based on Divine Journey 2](https://img.shields.io/badge/Based%20on-DJ2%202.23.4-blue.svg?style=for-the-badge)](https://github.com/Divine-Journey-2/Divine-Journey-2)

</div>

## 这是什么

DJ2 Modern 是 Divine Journey 2 的改版。玩法内容与上游一致，改造集中在运行与维护层面：降低卡顿、提升帧率，把已经停更的组件替换成仍在维护的替代品。

- **玩法内容与上游一致**：没有新增或删减任务章节，没有重做进度曲线。
- **仍然运行在 Forge 1.12.2 上**：后续将迁移到 Cleanroom。
- **中文内置**：任务书与本包自定义文本直接随包分发，不再依赖玩家自己找汉化。

## 与上游 DJ2 的差异

| 项目 | 上游 2.23.4 | 本版 |
|---|---|---|
| 多方块机器 | Modular Machinery 1.10 + Modular Diversity 1.8 + ModularMagic 1.4 | **MMCE 2.3.2 + MMCE-Addons 2.0.5** |
| HUD | Hwyla + Waila Harvestability | **The One Probe CE 1.4.1** + TopAllDependents |
| 小地图 | JourneyMap | **Xaero's Minimap / World Map** |
| 光影/优化 | 需要手动安装 OptiFine | **ModDirector 首次启动自动下载** |
| 语言 | 英文 | **内置简体中文** + I18nUpdateMod 在运行时补齐其余模组的中文 |

这些替换集中在运行与界面层：多方块结构的搭建方式、配方输入输出、任务要求与上游保持一致。

## 中文

本包的简体中文分两部分：

- 内置部分：DJ2 自定义文本（任务书、ContentTweaker / CraftTweaker 物品、附魔描述、GroovyScript、Requious Frakto），以及 MMCE 机器名与 modifier 描述，通过 `overrides/resources/<domain>/lang/zh_cn.lang` 覆盖层提供，不修改任何模组 jar。
- 运行时部分：其余模组的中文由 I18nUpdateMod 下载的 CFPA 语言包提供。

机制细节、汉化来源与更新方式见 [`readme/LOCALIZATION-NOTES.md`](readme/LOCALIZATION-NOTES.md)；对汉化文本的修改记录见 [`overrides/ATTRIBUTION.md`](overrides/ATTRIBUTION.md)。

## 许可与致谢

- 本整合包与上游 DJ2 一样以 **GPL-3.0** 发布，仓库公开。
- 简体中文来自 **Translation-of-DJ2**（作者 琅然_、PinkYuDeer、柠娜，GPL-3.0），完整署名与修改记录见 [`overrides/ATTRIBUTION.md`](overrides/ATTRIBUTION.md)。
- 上游作者与贡献者名单见 [`readme/CREDITS.md`](readme/CREDITS.md)；多方块机器体系来自 MMCE 及其 Addons 的作者。

## English summary

Divine Journey 2 Modern is a modernization of [Divine Journey 2](https://github.com/Divine-Journey-2/Divine-Journey-2) for Minecraft 1.12.2, based on upstream 2.23.4. Gameplay is unchanged: same quests, same progression. What has changed is the infrastructure:

- Modular Machinery / Modular Diversity / ModularMagic → **MMCE 2.3.2 + MMCE-Addons 2.0.5** (recipes and structures migrated)
- Hwyla → **The One Probe CE**; JourneyMap → **Xaero's Minimap and World Map**
- OptiFine is downloaded on first launch by **ModDirector**
- **Simplified Chinese** is bundled for the quest book and custom content; I18nUpdateMod fetches the remaining translations at runtime

Licensed GPL-3.0, like upstream. Third-party licenses and credits: [`overrides/ATTRIBUTION.md`](overrides/ATTRIBUTION.md).
