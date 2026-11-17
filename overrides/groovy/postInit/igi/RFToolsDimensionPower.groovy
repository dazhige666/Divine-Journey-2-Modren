// Divine Journey 2 Modern - added content (not present in the original pack).
// IGI-RFTools 1.2 binds {rftdimensionpower} with an (I)I descriptor, but rftoolsdim
// 5.71 exposes getEnergyLevel(int) returning long, so the addon's call dies with
// NoSuchMethodError and its own catch turns the value into "false". Registering our
// own tag keeps the call dynamic (Groovy resolves (I)J) without touching any jar.
// Duplicate tag names only log an error inside IGI, so reloading this script is safe.

import com.github.lunatrius.ingameinfo.tag.Tag
import com.github.lunatrius.ingameinfo.tag.registry.TagRegistry
import mcjty.rftoolsdim.dimensions.DimensionStorage
import mcjty.rftoolsdim.dimensions.RfToolsDimensionManager
import net.minecraft.client.Minecraft

if (TagRegistry.INSTANCE.getRegisteredTags().any { it.getName() == 'dj2rftpower' }) {
    System.out.println('[igi-rftpower] dj2rftpower already registered')
    return
}

class RFToolsDimensionPower extends Tag {

    @Override
    String getCategory() {
        return 'RFTools'
    }

    @Override
    String getValue() {
        try {
            def player = Minecraft.getMinecraft().player
            if (player == null) {
                return '0'
            }
            def world = player.world
            int dimension = world.provider.getDimension()
            def manager = RfToolsDimensionManager.getDimensionManager(world)
            if (manager == null || manager.getDimensionInformation(dimension) == null) {
                return 'N/A'
            }
            def storage = DimensionStorage.getDimensionStorage(world)
            if (storage == null) {
                return '0'
            }
            return String.valueOf(storage.getEnergyLevel(dimension))
        } catch (Throwable t) {
            System.out.println('[igi-rftpower] ' + t)
            return 'false'
        }
    }
}

TagRegistry.INSTANCE.register(new RFToolsDimensionPower().setName('dj2rftpower'))
System.out.println('[igi-rftpower] registered dj2rftpower')
