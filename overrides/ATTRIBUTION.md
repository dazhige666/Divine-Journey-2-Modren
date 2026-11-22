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

## Noel357 补充包

- 来源：`NOEL357_additions_2.23.4-2`（作者 NOEL357）。
- 引入日期：2026-11-21，提交 `78c7c38`（“Add the four Noel357 machine recipes”）。
- 2026-11-21 引入的 4 条配方：
  1. 激光聚焦（Laser Focus）：16 个固化经验（Solidified Experience）+ 12 个充能金晶（Empowered Glod Crystal）+ 4 个充能钻石水晶（Empowered Diamatine Crystal）+ 4 个充能绿宝石水晶（Empowered Emeradic Crystal）+ 32000 FE/t + 1,280,000 激光能量 → 64 个扬升锭（Elevatium Ingot）。
  2. 怪物战利品制造机（Mob Loot Fabricator）：1 个心之容器[蓝]（Blue Heart Canister）+ 500 LP → 25000 LP 返还 + 5 种恶魔意志各 100 点（原生、腐蚀、破坏、复仇、坚毅；Raw / Corrosive / Destructive / Vengeful / Steadfast Will）+ 8000 mB 生命源质（Life Essence）+ 1 个[虚弱]气血碎片（Weak Blood Shard）。
  3. 怪物战利品制造机（Mob Loot Fabricator）：1 个龙血树苗（Dragons Blood Sapling）+ 5000 LP → 6 种原版树苗各 64 个（橡树树苗 / Oak Sapling、云杉树苗 / Spruce Sapling、白桦树苗 / Birch Sapling、丛林树苗 / Jungle Sapling、金合欢树苗 / Acacia Sapling、深色橡树树苗 / Dark Oak Sapling）+ 3 种 Bewitchment 树苗各 64 个（柏树树苗 / Cypress Sapling、接骨木树苗 / Elder Sapling、杜松树苗 / Juniper Sapling）。
  4. 怪物战利品制造机（Mob Loot Fabricator）：1 个元始珍珠（Primordial Pearl）+ 5000 LP → 1 个寻常藏宝袋（Common Treasure）+ 1 个稀有藏宝袋（Uncommon Treasure，33.33%）。
- 2026-11-22 扩展合并（提交 `9f4f182`、`05d1bda`、`f681ed8`、`e9c8eef`）：
  - **同名文件与旧机器升级**：
    - `config/astralsorcery.cfg`：`skySupportedDimensions` 追加 `-100`。
    - `config/evilcraft.cfg`：`blood_stained_block=false`（关闭血染方块）。
    - `chemical_caster.json`：新增 `contenttweaker:celestial_crystal_core` 升级位（`duration ×0.1`、`energy ×1`，10 倍速、总能耗降至 1/10）。
    - `weak_fusion_plant.json`：新增 `contenttweaker:reinforced_machine_accelerator` 升级位（`duration ×0.1`、`energy ×1`，10 倍速、总能耗降至 1/10）。
    - `contenttweaker` 中英文语言文件；Roots、EnderIO、Mekanism、RFTools、SFM 脚本（详见下）。
  - **ContentTweaker 20 个物品/方块**（7 个 blockstate、20 张材质）：
    - 5 个罐子：火焰罐、恶魔罐、异界罐、漩涡罐、女巫罐。
    - 能量系列：能量平板、基础能量立方、高级能量立方、精英能量立方、终极能量立方。
    - 大型虚空种子、基础钢制机壳、高级钢制机壳、精英钢制机壳。
    - 水之水晶、岩浆水晶、虚空之露水晶、轻盈之汽水晶、加压空气罐、磁力手套。
  - **ContentTweaker 25 条配方**：
    1. 大型虚空种子：9 个虚空种子 + 1 个绑定触媒。
    2. 坚韧星际镀层：究极压缩机，6000 FE/t、1 tick，16 个热力膨胀 325/327/328 → 4 个。
    3. 三级钢制机壳：基础、高级、精英各 1 条，逐级升级。
    4. 假能量平板 + 4 级假能量立方：10 条（每件 1 条 shaped + 1 条由对应 Mekanism 物品转换的 shapeless）。
    5. 假加压空气罐、假磁力手套：各 1 条。
    6. 血魔法炼金桌：Aquasalus、Incendium 2 条。
    7. 血魔法恶魔锻炉：气、水、岩浆、伤害、力量、抑制 6 种试剂。
  - **新机器**：
    - 究极灌注机（`noel357_bottler`）：90 个 part；21 条配方，统一 8000 FE/t、40 tick；加速器 `duration ×0.125`（8 倍速）、`energy ×8`（8 倍能耗，总能耗不变）；12 处流体输入仓可替换为机壳。
    - 模块化女巫坩埚（`noel357_witches_cauldron`）：25 个 part；14 条配方，20 tick，无能量，消耗轻盈之汽；另 5 条罐子配方。
    - 2 条蓝图：上述两台机器各 1 条。
  - **XNet 集成**：XNet 1.12-1.8.2 + XNet: Additions 0.1.2；17 条配方新增、16 条移除；9 条 tooltip（普通连接器、高级连接器、控制器，含 RF/流体/魔力/气体/源质数值）；配置 `xnet`、`xnetadditions`。
  - **SFM 集成**：Super Factory Manager: Unofficial Backport 4.1.0；22 条配方新增、20 条移除；Network Tool 改为 6 铱锭 + 屏幕 + 名称压印模板 + Better P2P 高级内存卡；配置 `superfactorymanager`。
  - **其他脚本**：Thermal Foundation（注能下界岩浇筑）、Thaumcraft（元始珍珠注魔，12 个大型虚空种子）、DivineRPG（圣诞套装 4 件冰石修复）、Extended Crafting（黑铁棒 3 条）、堆叠数（3 把武器改为 8）、Mekanism（8 种基础工厂 + 16 条高级/精英工厂，保留升级数据）、Roots（5 条新增召唤展示，另改水牛/恶魂/迷你恶魂展示）、EnderIO（2 条脉冲漏斗输出锁定）、RFTools（建造机等待模式 + 滤器模块白名单）。
  - **未引入**：AE2 生态（nae2、ae2stuff、fluiddrawers、Fluid Craft for AE2、PackagedAstral、PackagedExCrafting、BotanicAdditions 及 bdlib/libnine 等前置）、QuarryOpt、Reim；以及缺失依赖的配方与 tooltip。
- 修改说明：将激光配方的能量由 320000 调整为 1280000；究极灌注机统一 8000 FE/t、40 tick，加速器改为 8 倍速/8 倍能耗（总能耗不变）；Chemical Caster / Weak Fusion Plant 升级位改为 10 倍速、总能耗降至 1/10；删除未安装依赖的配方与 tooltip，AE2 生态未引入。
- 许可：作者 NOEL357 已授权整合包使用这些配方、机器、脚本与资源。

## 其他

- 各模组版权归各自作者所有，均通过 CurseForge 下载，不随包分发。
