# Divine Journey 2 Modern

Minecraft 1.12.2 专家级整合包，基于 [Divine Journey 2](https://github.com/Divine-Journey-2/Divine-Journey-2) 2.23.4 改造。玩法内容和上游一模一样：同样的任务、同样的进度、同样的配方。改动的全是「跑起来之后才感觉得到」的部分——运行层、性能、界面，以及中文。

<div align="center">

[![Minecraft Version](https://img.shields.io/badge/Minecraft-1.12.2-yellow.svg?style=for-the-badge)](/manifest.json)
[![Version](https://img.shields.io/badge/Version-1.0.2-orange.svg?style=for-the-badge)](https://github.com/dazhige666/Divine-Journey-2-Modren/releases)
[![License](https://img.shields.io/badge/License-GPL--3.0-yellow.svg?style=for-the-badge)](/LICENSE)
[![Based on Divine Journey 2](https://img.shields.io/badge/Based%20on-DJ2%202.23.4-blue.svg?style=for-the-badge)](https://github.com/Divine-Journey-2/Divine-Journey-2)

</div>

## 这是什么

DJ2 Modern 是 Divine Journey 2 的改版，当前是 1.0.2。改造集中在四个方向：

- **跑得更快**：启动路径上做了三处针对性改动，见下面的[性能](#性能)一节。
- **维护得下去**：停更的多方块机器体系换成 MMCE，HUD 与小地图换成还在更新的替代品，运行层迁到 Cleanroom。
- **中文内置**：任务书、本包自定义文本与各模组的汉化覆盖都随包分发，中文不再依赖运行时下载。
- **界面重做**：图片化主菜单，按钮文字走原版语言键（跟着游戏语言走）。

## 1.0.2 更新了什么

| 方向 | 内容 |
|---|---|
| 新增模组 | XNet + XNet: Additions、Super Factory Manager、Fluid Drawers + libnine、AE2 Stuff / BD Lib / AE2 Fluid Crafting / Neeve's AE2 Additions / PackagedExCrafting；manifest 243 条 |
| 刷怪机 | 5×5×5 新结构，6 个任意等级输出仓、生命源质输入；任务 622 同步；水晶与暮色/被动配方改展示模式，JEI 页高从 15 降到 14 |
| 界面/HEI | 隐藏 42 个 MMCE / Addons 冗余条目；机器控制器加“木棍右键自动搭建”提示 |
| 启动/修复 | StellarCore / VintageFix 配置回归；关闭 EnderIO Painter 的 JEI 插件；修复任务 622 输出仓 `Damage:32767` 导致的崩溃 |
| 文档 | README 推荐材质包、`overrides/RESOURCEPACKS.md`、ATTRIBUTION 与维护文档更新 |

## 1.0.1 更新了什么

| 方向 | 内容 |
|---|---|
| 启动 | SerializationIsBad 改为读本地补丁清单、VintageFix 升到 0.7.2、新增 StellarCore 1.6.8，并关掉与它冲突的 `-XX:+UseCompactObjectHeaders` |
| 新增模组 | EntityCulling、RenderLib、StellarCore（manifest 现在 233 个模组） |
| 主菜单 | 全部重做：共用一张按钮贴图、文字改用 `menu.singleplayer` 等原版语言键、背景换成 4× 放大版本、右下角加 Issues / Discord 两个入口 |
| JEI | 把同一物品的变体（旗帜、书架、床、潜影盒等）折叠成一条，250 组共 2401 条 uid，检索列表不再被刷屏 |

## 安装

1. 下载本包的最新 zip（CurseForge 格式，见 [Releases](https://github.com/dazhige666/Divine-Journey-2-Modren/releases)），导入 Prism Launcher 或 MultiMC。
2. 运行层已内置：`config/relauncher.json` 里钉死了 Cleanroom 0.6.13-alpha 和 Java 25，不需要自己选版本。首次启动会自动下载安装 Azul Zulu 25（约 220 MB，会显示扫描/下载进度窗，慢的话等几分钟）。**如果你的环境里已经装了 Zulu 25、但启动器没检测到**，打开 `config/relauncher.json`，把 `javaPath` 填成 `java.exe` 的完整路径（例如 `D:\\tools\\jdk\\zulu-25\\bin\\java.exe`，注意双反斜杠）。
3. 首次进游戏时 JEI 要建立检索索引，这期间窗口可能看起来卡住不动，是正常的（语言包已随包内置，不再联网下载）。
4. **如果自己装了 OptiFine，不要打开「快速渲染 / Fast Render」**，本包里它会造成渲染错误。

## 推荐材质包

下面这套是 作者本人正在用的组合；完整安装说明见 [`overrides/RESOURCEPACKS.md`](overrides/RESOURCEPACKS.md)。

游戏内“已选资源包”列表**越靠上优先级越高**（[官方说明](https://help.minecraft.net/hc/en-us/articles/40080080733069)）。下面编号 1–8 就是游戏内**从上到下**的摆放顺序：1 在最上面，8 在最下面。

1. aDJ2
2. Aether b1.7.3 Textures
3. Smooth Drawers
4. Updated Engineering
5. Modernity Extra
6. Modernity Adjunct
7. Modernity
8. OceanWater

| 包 | 版本 | 来源 |
|---|---|---|
| aDJ2 |  | [DJ2 Discord](https://discord.com/invite/rH9pyS7) → `dj2官方频道` → 帖子 `a DJ2 custom item resource pack` → 下载 `aDJ2.zip` |
| Aether b1.7.3 Textures | b1.7.3 | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/jappafied-aether) 或 [GitHub](https://github.com/Mr-Aerod/Jappafied-Aethers) |
| Smooth Drawers | 1.12 v1 | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/smooth-drawers) |
| Updated Engineering | 1.12.2 edition | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/updated-engineering) |
| Modernity Extra | 1.4.0-Beta | [GitHub](https://github.com/RuiXuqi/ModernityExtra)，按 README 下载 dev 包 |
| Modernity Adjunct | 1.7.1 | [Modrinth](https://modrinth.com/resourcepack/modernity-adjunct) |
| Modernity | 3.10.3 | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/modernity) |
| OceanWater | v1.0-1.11 | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/ocean-water)。已归档；在 Additional Files 里选 OptiFine 版 |

注意事项：

- Modernity Extra 必须和 Modernity 3.10.3、Modernity Adjunct 1.7.1 配套，版本不要混搭。
- 中文语言包不用在这里装；本包已内置汉化覆盖，不依赖运行时语言包。
- 如果自己装了 OptiFine，OceanWater 要选 OptiFine 版。

## 与上游 DJ2 的差异

| 项目 | 上游 2.23.4 | 本版 |
|---|---|---|
| 运行环境 | Forge 1.12.2（Java 8） | **Cleanroom 0.6.13-alpha**（1.12.2 兼容层，需 Java 25；版本与 Java 路径都已写进包内的 `config/relauncher.json`） |
| 多方块机器 | Modular Machinery 1.10 + Modular Diversity 1.8 + ModularMagic 1.4 | **MMCE 2.3.2 + MMCE-Addons 2.0.5** |
| HUD | Hwyla + Waila Harvestability | **The One Probe CE 1.4.1** + TopAllDependents |
| 信息面板 | — | **InGame Info XML + 5 个附属**（TPS/MSPT、血魔法 LP、神秘灵气与咒波、RF 维度；中英双语，随游戏语言切换） |
| 小地图 | JourneyMap | **Xaero's Minimap / World Map** |
| 优化 | Spark + FermiumBooter / FermiumASM / NoiseThreader | **Flare + Chibi (LoliASM) + VintageFix + StellarCore + EntityCulling**，mixin 层交给 Cleanroom 内置 |
| 检索 | JEI 4.16 | **HEI 4.38.0 + HECh 1.4.1**（拼音、首字母搜索），同一物品的变体折叠成组 |
| 主菜单 | 原版文字菜单 | **图片化主菜单**，按钮文字走语言键，含 Issues / Discord 入口 |
| 语言 | 英文 | **内置简体中文**（随包覆盖，不联网下载）；信息面板中英双语 |

这些替换集中在运行、界面与性能层：多方块结构的搭建方式、配方输入输出、任务要求与上游保持一致。

## 性能

1.0.1 针对启动做了三处改动：

- **SerializationIsBad 改读本地补丁清单**：不再每次启动联网拉取。
- **VintageFix 升级到 0.7.2**：修掉 TurboStitcher 在大纹理上限硬件上的溢出，模型加载失败时也不再刷满日志。
- **新增 StellarCore 1.6.8**：开启并行模型加载与拼接缓存，同时关掉与它冲突的 `-XX:+UseCompactObjectHeaders`。

**第一次启动会比之后慢**：JEI 要建检索索引、StellarCore 要写拼接缓存、VintageFix 要建 jar 缓存。从第二次起才是稳态。

## 中文

本包的简体中文分两部分：

- **内置部分**：DJ2 自定义文本（任务书、ContentTweaker / CraftTweaker 物品、附魔描述、GroovyScript、Requious Frakto），以及 MMCE 机器名与 modifier 描述，通过 `overrides/resources/` 与 `overrides/oresources/` 下的覆盖文件提供，不修改任何模组 jar。
- **模组部分**：其余模组的中文由 `overrides/resources/` 下的语言文件覆盖，未覆盖的键回退英文。

IGI 信息面板的配置（`overrides/config/InGameInfoXML/`）已做成中英双语：321 条标签、群系名与维度名都改为从 `overrides/resources/dj2hud/lang/` 读取，中文客户端显示原有中文，英文客户端显示英文（群系名由游戏本体给出）。

汉化来源、署名与对汉化文本的修改记录见 [`overrides/ATTRIBUTION.md`](overrides/ATTRIBUTION.md)。

## 已知问题

- **OptiFine 需要自己装**（不随包分发），并且不要开 Fast Render。
- **不要手动给 JVM 加 `-XX:+UseCompactObjectHeaders`**：它和 StellarCore 冲突，会直接 JVM 级崩溃（`EXCEPTION_ACCESS_VIOLATION`）。
- **首次启动需要联网下载 Java 25**（见安装步骤 2）；语言包不再需要联网。

## 许可与致谢

- 本整合包与上游 DJ2 一样以 **GPL-3.0** 发布，仓库公开。
- 简体中文来自 **Translation-of-DJ2**（作者 琅然_、PinkYuDeer、柠娜，GPL-3.0），完整署名与修改记录见 [`overrides/ATTRIBUTION.md`](overrides/ATTRIBUTION.md)。
- IGI 信息面板的配置（`overrides/config/InGameInfoXML/`）也来自 **Translation-of-DJ2**，与任务书汉化同源，同样以 GPL-3.0 分发。
- 主菜单的背景图来自上游 DJ2 的美术资源，经放大与裁切处理；按钮、标题与压暗层由本仓库的脚本生成。
- 上游作者与贡献者名单见 [`readme/CREDITS.md`](readme/CREDITS.md)；多方块机器体系来自 MMCE 及其 Addons 的作者。

---

# Divine Journey 2 Modern (English)

An expert-level Minecraft 1.12.2 modpack, built on [Divine Journey 2](https://github.com/Divine-Journey-2/Divine-Journey-2) 2.23.4. The gameplay is identical to upstream — the same quests, the same progression, the same recipes. Everything this pack changes is something you only notice once the game is running: the runtime, performance, the interface, and the Chinese localization.

<div align="center">

[![Minecraft Version](https://img.shields.io/badge/Minecraft-1.12.2-yellow.svg?style=for-the-badge)](/manifest.json)
[![Version](https://img.shields.io/badge/Version-1.0.2-orange.svg?style=for-the-badge)](https://github.com/dazhige666/Divine-Journey-2-Modren/releases)
[![License](https://img.shields.io/badge/License-GPL--3.0-yellow.svg?style=for-the-badge)](/LICENSE)
[![Based on Divine Journey 2](https://img.shields.io/badge/Based%20on-DJ2%202.23.4-blue.svg?style=for-the-badge)](https://github.com/Divine-Journey-2/Divine-Journey-2)

</div>

## What this is

DJ2 Modern is a rework of Divine Journey 2, currently at 1.0.2. It goes in four directions:

- **Start faster.** Three targeted changes on the startup path — see [Performance](#performance).
- **Stay maintainable.** The abandoned multiblock system is replaced by MMCE, the HUD and minimap by mods that are still updated, and the runtime moved to Cleanroom.
- **Ship Chinese.** The quest book, this pack's own text and the per-mod Chinese overrides are all bundled, so Chinese no longer depends on a runtime download.
- **Redo the interface.** An image-based main menu whose button labels come from vanilla language keys, so they follow the game language.

## What changed in 1.0.2

| Area | Change |
|---|---|
| New mods | XNet + XNet: Additions, Super Factory Manager, Fluid Drawers + libnine, AE2 Stuff / BD Lib / AE2 Fluid Crafting / Neeve's AE2 Additions / PackagedExCrafting; manifest now 243 entries |
| Mob Loot Fabricator | New 5×5×5 structure with six any-tier output hatches and a life-essence input; quest 622 updated; crystal, Twilight and passive recipes moved to display mode, reducing the JEI page height from 15 to 14 |
| UI / HEI | 42 redundant MMCE / Addons entries hidden; controller tooltip for stick-based auto-building |
| Startup / fixes | StellarCore and VintageFix configs restored; EnderIO Painter JEI plugin disabled; fixed the quest 622 crash caused by output-bus `Damage:32767` |
| Docs | Recommended resource packs in README, `overrides/RESOURCEPACKS.md`, attribution and maintenance docs updated |

## What changed in 1.0.1

| Area | Change |
|---|---|
| Startup | SerializationIsBad now reads a local patch list, VintageFix updated to 0.7.2, StellarCore 1.6.8 added, and the conflicting `-XX:+UseCompactObjectHeaders` flag dropped |
| New mods | EntityCulling, RenderLib, StellarCore (the manifest now lists 233 mods) |
| Main menu | Rebuilt from scratch: one shared button texture, labels from `menu.singleplayer` and friends, a 4× upscaled background, and Issues / Discord buttons in the corner |
| JEI | Variants of the same item (banners, bookshelves, beds, shulker boxes…) collapse into one entry — 250 groups covering 2401 ingredient ids, so the ingredient list stops being flooded |

## Installing

1. Download the latest zip (CurseForge format, see [Releases](https://github.com/dazhige666/Divine-Journey-2-Modren/releases)) and import it into Prism Launcher or MultiMC.
2. The runtime is already configured: `config/relauncher.json` pins Cleanroom 0.6.13-alpha and Java 25, so there is nothing to pick by hand. The first launch downloads and installs Azul Zulu 25 automatically (~220 MB; a progress window may sit there for a few minutes). **If your machine already has Zulu 25 but the launcher does not find it**, open `config/relauncher.json` and set `javaPath` to the full path of `java.exe` (for example `D:\\tools\\jdk\\zulu-25\\bin\\java.exe`).
3. The first game launch builds the JEI search index, so the window may look frozen for a while; that is normal. (Language packs are bundled now, so nothing is downloaded.)
4. **If you install OptiFine yourself, do not enable "Fast Render"** — it breaks rendering in this pack.

## Recommended resource packs

The list below is the set used by the DJ2 official instance; full instructions: [`overrides/RESOURCEPACKS.md`](overrides/RESOURCEPACKS.md).

In the in-game Selected list, the **top entry has the highest priority** ([official help](https://help.minecraft.net/hc/en-us/articles/40080080733069)). The numbers 1–8 below are the order from top to bottom: 1 is at the top, 8 at the bottom.

1. aDJ2
2. Aether b1.7.3 Textures
3. Smooth Drawers
4. Updated Engineering
5. Modernity Extra
6. Modernity Adjunct
7. Modernity
8. OceanWater

| Pack | Version | Source |
|---|---|---|
| aDJ2 |  | [DJ2 Discord](https://discord.com/invite/rH9pyS7) → `dj2官方频道` → post `a DJ2 custom item resource pack` → download `aDJ2.zip` |
| Aether b1.7.3 Textures | b1.7.3 | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/jappafied-aether) or [GitHub](https://github.com/Mr-Aerod/Jappafied-Aethers) |
| Smooth Drawers | 1.12 v1 | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/smooth-drawers) |
| Updated Engineering | 1.12.2 edition | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/updated-engineering) |
| Modernity Extra | 1.4.0-Beta | [GitHub](https://github.com/RuiXuqi/ModernityExtra); follow the README and take the dev pack |
| Modernity Adjunct | 1.7.1 | [Modrinth](https://modrinth.com/resourcepack/modernity-adjunct) |
| Modernity | 3.10.3 | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/modernity) |
| OceanWater | v1.0-1.11 | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/ocean-water); archived, pick the OptiFine build under Additional Files |

Notes:

- Modernity Extra must match Modernity 3.10.3 and Modernity Adjunct 1.7.1; do not mix versions.
- Do not install a Chinese language pack here; this pack bundles its own overrides and does not rely on a runtime pack.
- If you use OptiFine, pick the OptiFine build of OceanWater.

## Differences from upstream DJ2

| Item | Upstream 2.23.4 | This pack |
|---|---|---|
| Runtime | Forge 1.12.2 (Java 8) | **Cleanroom 0.6.13-alpha** (a 1.12.2 compatibility layer, needs Java 25; both the version and the Java path live in the pack's `config/relauncher.json`) |
| Multiblocks | Modular Machinery 1.10 + Modular Diversity 1.8 + ModularMagic 1.4 | **MMCE 2.3.2 + MMCE-Addons 2.0.5** |
| HUD | Hwyla + Waila Harvestability | **The One Probe CE 1.4.1** + TopAllDependents |
| Info panel | — | **InGame Info XML + 5 addons** (TPS/MSPT, Blood Magic LP, Thaumcraft aura and warp, RFTools dimensions; bilingual, follows the game language) |
| Minimap | JourneyMap | **Xaero's Minimap / World Map** |
| Optimizations | Spark + FermiumBooter / FermiumASM / NoiseThreader | **Flare + Chibi (LoliASM) + VintageFix + StellarCore + EntityCulling**, with the mixin layer provided by Cleanroom itself |
| Search | JEI 4.16 | **HEI 4.38.0 + HECh 1.4.1** (pinyin and initials search), with item variants collapsed into groups |
| Main menu | Vanilla text menu | **Image-based main menu**, labels via language keys, Issues / Discord buttons |
| Language | English | **Simplified Chinese bundled** (overrides shipped with the pack, no download); the info panel is bilingual |

All of this sits in the runtime, interface and performance layers: multiblock structures are built the same way, recipes take and produce the same items, and quest requirements match upstream.

## Performance

1.0.1 makes three changes to startup:

- **SerializationIsBad reads a local patch list** instead of fetching one over the network on every launch.
- **VintageFix updated to 0.7.2**, which fixes the TurboStitcher overflow on hardware with very large maximum texture sizes and stops flooding the log when models fail to load.
- **StellarCore 1.6.8 added**, enabling parallel model loading and the stitcher cache, with the conflicting `-XX:+UseCompactObjectHeaders` flag dropped.

**The first launch is slower than later ones**: JEI builds its search index, StellarCore writes its stitcher cache, and VintageFix builds its jar cache. From the second launch on it is the steady state.

## Chinese localization

The Simplified Chinese in this pack comes from two places:

- **Bundled**: DJ2's own text (quest book, ContentTweaker / CraftTweaker items, enchantment descriptions, GroovyScript, Requious Frakto) plus MMCE machine names and modifier descriptions, delivered as override files under `overrides/resources/` and `overrides/oresources/` — no mod jar is modified.
- **Mod coverage**: the remaining mods' Chinese comes from the language files under `overrides/resources/`; keys that are not covered fall back to English.

The IGI info panel (`overrides/config/InGameInfoXML/`) is bilingual: 321 labels, biome names and dimension names are read from `overrides/resources/dj2hud/lang/`, so a Chinese client shows the original Chinese and an English client shows English (biome names come from the game itself).

Sources, credits and the record of changes to the translated text: [`overrides/ATTRIBUTION.md`](overrides/ATTRIBUTION.md).

## Known issues

- **OptiFine must be installed by hand** (it is not redistributed), and do not enable Fast Render.
- **Do not add `-XX:+UseCompactObjectHeaders` to the JVM arguments.** It conflicts with StellarCore and crashes the JVM outright with `EXCEPTION_ACCESS_VIOLATION`.
- The first launch needs network access to download Java 25 (see step 2); language packs are no longer downloaded.

## License and credits

- Released under **GPL-3.0**, like upstream DJ2. The repository is public.
- The Simplified Chinese comes from **Translation-of-DJ2** (by 琅然_, PinkYuDeer, 柠娜; GPL-3.0). Full attribution and the change log are in [`overrides/ATTRIBUTION.md`](overrides/ATTRIBUTION.md).
- The InGame Info XML configuration (`overrides/config/InGameInfoXML/`) also comes from **Translation-of-DJ2**, same source as the quest book translation, distributed under GPL-3.0 as well.
- The main menu background comes from upstream DJ2's artwork, upscaled and cropped; the buttons, title and vignette are generated by scripts in this repository.
- Upstream authors and contributors: [`readme/CREDITS.md`](readme/CREDITS.md). The multiblock system comes from MMCE and its addon authors.
