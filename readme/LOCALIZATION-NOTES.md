# 本地化说明

## 现状

- DJ2 自定义文本已内置简体中文：任务书、ContentTweaker / CraftTweaker 物品、附魔描述、GroovyScript、Requious Frakto。
- 来源：**Translation-of-DJ2** 的 `2.23.4-zh-6`（commit `d245627082dc7a5005d491ebaa813f97686cd343`），作者 琅然_、PinkYuDeer、柠娜，许可 **GPL-3.0**。
- 文件位置：`overrides/resources/<domain>/lang/zh_cn.lang`（betterquesting、contenttweaker、crafttweaker、enchantment_descriptions、groovy、requious_frakto）。
- 其余模组的文本由 **I18nUpdateMod**（CurseForge projectID `297404`，fileID `7173159`）在运行时下载 CFPA 语言包，本包不再分发该 mod 的 jar。

## 许可与合规

- 汉化文件的来源与修改状态：其中 5 个文件（contenttweaker、crafttweaker、enchantment_descriptions、groovy、requious_frakto）原样复制，未修改；`betterquesting/lang/zh_cn.lang` 有修改（译名对齐 I18n、13 行误译修正），变更记录见 `overrides/ATTRIBUTION.md`。GPL-3.0 全文在 `overrides/licenses/Translation-of-DJ2-GPL-3.0.txt`。
- 本整合包与上游 DJ2 一样以 GPL-3.0 发布，仓库公开，满足 GPL 的源代码提供要求。
- 若以后修改 `zh_cn.lang`，需在 `ATTRIBUTION.md` 记录修改日期与内容，并继续以 GPL-3.0 发布修改后的源文件。

## 更新方式

1. 从 Translation-of-DJ2 取对应 DJ2 版本的 `resources/*/lang/zh_cn.lang`。
2. 覆盖 `overrides/resources/` 下同名文件。
3. 更新 `ATTRIBUTION.md` 里的版本号与 commit。
4. 重打整合包并验证任务书、JEI、物品提示均为中文。

## 任务 928 注意事项

- `en_us.lang` 里的 `db.928.desc` 已从 JourneyMap 改为 **Xaero's Minimap**。
- 当前 `zh_cn.lang` 该条用的是通用说法“记得在门口设置个传送点”，不含 JourneyMap 字样，无需修改。
- 以后若引入其他中文语言文件并带有 JourneyMap 字样，需要同步改为 Xaero's Minimap。
- 未内置“补汉材质包”（静态 80% 机翻、基于 2.23.1、聚合了第三方翻译数据），统一交给 I18nUpdateMod 运行时获取，避免再分发来源复杂的聚合翻译。
