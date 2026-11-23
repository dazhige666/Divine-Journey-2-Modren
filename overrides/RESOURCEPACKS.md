# DJ2 Modern 推荐材质包

本整合包不随包分发材质包：一是授权不齐，二是整套约 47 MB。下面这套是 DJ2 官方实例正在用的组合，玩家可以按来源自行下载安装。

## 安装方法

1. 按下面的来源下载 8 个包。
2. 放进 `.minecraft/resourcepacks/`。zip 保持原文件名；文件夹保持原文件夹名。
3. 进入游戏：选项 → 资源包，按“推荐顺序”启用。顺序不要调换。
4. 中文语言包不要在这里装；本包继续用 I18n 模组自动更新。

## 推荐顺序

游戏内“已选资源包”列表**越靠上优先级越高**（[Minecraft 官方说明](https://help.minecraft.net/hc/en-us/articles/40080080733069)）。下面这份是低→高，等于 `options.txt` 的存放顺序；游戏里要倒过来摆：

- **游戏内从上到下**：aDJ2 → Aether b1.7.3 Textures → Smooth Drawers → Updated Engineering → Modernity Extra → Modernity Adjunct → Modernity → OceanWater。
- **从低到高（`options.txt` 顺序）**：

1. OceanWater
2. Modernity
3. Modernity Adjunct
4. Modernity Extra
5. Updated Engineering
6. Smooth Drawers
7. Aether b1.7.3 Textures
8. aDJ2

不要照这个编号从上往下拖；拖反了 OceanWater 会压住整套材质。

## 来源

| 顺序 | 包 | 版本 | 来源 |
|---:|---|---|---|
| 1 | OceanWater | v1.0-1.11 | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/ocean-water)。已归档；在 Additional Files 里选与实例同名的 OptiFine 版。 |
| 2 | Modernity | 3.10.3 | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/modernity) |
| 3 | Modernity Adjunct | 1.7.1 | [Modrinth](https://modrinth.com/resourcepack/modernity-adjunct)，选 1.7.1。 |
| 4 | Modernity Extra | 1.4.0-Beta | [GitHub](https://github.com/RuiXuqi/ModernityExtra)。仓库没有 Release，按 README 下载 dev 包；不要用旧的 `ModernityExtra-dev.zip`。 |
| 5 | Updated Engineering | 1.12.2 edition | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/updated-engineering) |
| 6 | Smooth Drawers | 1.12 v1 | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/smooth-drawers) |
| 7 | Aether b1.7.3 Textures | b1.7.3 | [CurseForge](https://www.curseforge.com/minecraft/texture-packs/jappafied-aether) 或 [GitHub](https://github.com/Mr-Aerod/Jappafied-Aethers)。取 `optional` 目录里的 b1.7.3 版本，文件夹名保持 `Aether b1.7.3 Textures`。 |
| 8 | aDJ2 | 当前实例版 | [DJ2 Discord](https://discord.com/invite/rH9pyS7) → `dj2官方频道` → 帖子 `a DJ2 custom item resource pack` → 下载 `aDJ2.zip`。Discord 需要登录；邀请失效时以整合包页面提供的新邀请为准。 |

## 注意

- Modernity Extra 必须和 Modernity 3.10.3、Modernity Adjunct 1.7.1 配套使用；版本不要混搭。
- Smooth Drawers 只给 Storage Drawers 用；以后如果换成 FunctionalStorageLegacy，这个包就不再需要。
- aDJ2 是 DJ2 自定义物品的补图，不装不会崩，但部分自定义物品会缺贴图。请不要在未经作者允许的情况下重新上传。
- 这些包不写入 `defaultoptions/options.txt`；手动安装的包无法由整合包默认启用。
