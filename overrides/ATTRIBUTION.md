# 第三方资源与许可

本整合包（Divine Journey 2 Modern）基于 **Divine Journey 2**（GPL-3.0）构建。

## 简体中文汉化 — Translation-of-DJ2

- 项目地址：https://github.com/PinkYuDeer/Translation-of-DJ2
- 使用版本：`2.23.4-zh-6`（commit `d245627082dc7a5005d491ebaa813f97686cd343`）
- 作者：琅然_、PinkYuDeer、柠娜
- 许可：GNU General Public License v3.0（全文见 `licenses/Translation-of-DJ2-GPL-3.0.txt`）
- 使用方式：其中 6 个文件原样复制，未做修改：
  - `resources/contenttweaker/lang/zh_cn.lang`
  - `resources/crafttweaker/lang/zh_cn.lang`
  - `resources/enchantment_descriptions/lang/zh_cn.lang`
  - `resources/groovy/lang/zh_cn.lang`
  - `resources/requious_frakto/lang/zh_cn.lang`
  - `config/ingameinfoxml.cfg`（IGI 信息面板配置，取自同一仓库的 IGI 配置包）
- 本仓库修改过的文件（GPL-3.0 第 5(a) 条变更说明）：
  - `config/InGameInfoXML/InGameInfo.xml`（IGI 信息面板配置，取自同一仓库的 IGI 配置包）
    - 2026-11-15：删去 RF 维度信息中的 `{rftdimensionpower}` 与 `RF @` 两行。IGI-RFTools 1.2 按 `int` 调用 `DimensionStorage.getEnergyLevel`，而 rftoolsdim 5.71 返回 `long`，该值恒为 `false`；现在只显示维度名与 `{rftdimensioncost} RF/t`。
    - 2026-11-17：HUD 改为中英双语。321 个 `<str>` 值改为 `<translate>` 引用 `dj2hud.*` 键，新增 `resources/dj2hud/lang/{zh_cn,en_us}.lang`（各 321 键：48 条界面标签、50 条维度名、223 条群系名）。中文文本原样搬运；英文标签与维度名为机器翻译（机翻，未逐条人工校对）；群系名在英文客户端由游戏本体给出，不经翻译。
    - 2026-11-17：恢复 RF 维度信息里的存量 RF 数值。原先删掉的 `RF @` 两段改由本仓库自写的 Groovy 标签 `dj2rftpower`（`overrides/groovy/postInit/igi/RFToolsDimensionPower.groovy`）提供，调用 rftoolsdim 5.71 的 `DimensionStorage.getEnergyLevel(int)`（返回 `long`）。
  - `resources/betterquesting/lang/zh_cn.lang`
    - 2026-11-14：物品名称对齐 I18n 译名，共 26 行（雷电工艺「聚能器→引雷针」「LE存储器→LE 能量单元」；星辉魔法「天体→天辉」）。改动仅限译名，未增删任务内容。
    - 2026-11-14：重写 7 条被错误复制自相邻任务的任务正文（274、278、300、744、769、1482、1577），修正 1567/1082/1083 标题与 1083/774 正文引用、错字，共 13 行。未增删任务内容。
    - 2026-11-14：修正傀儡任务译名（1039 铁制、1074 玉制、1082 正文中的「泥制傀儡」，共 5 行），并把 22 处未转义的 `%` 改为 `%%`（1577 标题与 21 条描述中的百分比、URL 编码），共 27 行。未增删任务内容。
- 源代码获取：上述项目地址，以及本仓库 `Divine-Journey-2-Modren`（同样以 GPL-3.0 发布）。若后续修改汉化文本，会在本文件记录修改日期与内容，并在本仓库同步发布修改后的源文件。

## I18nUpdateMod

- 通过 CurseForge manifest 引用（projectID `297404`，fileID `7173159`），不随本包再分发。
- 许可：AGPL-3.0，版权归 CFPAOrg 及其贡献者。

## 其他

- 各模组版权归各自作者所有，均通过 CurseForge 下载，不再随包分发。
