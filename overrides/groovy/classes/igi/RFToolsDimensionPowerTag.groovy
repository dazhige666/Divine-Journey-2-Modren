package classes.igi

// Divine Journey 2 Modern - added content (not present in the original pack).
// IGI-RFTools 1.2 binds {rftdimensionpower} with an (I)I descriptor, but rftoolsdim
// 5.71 exposes getEnergyLevel(int) returning long, so the addon's call dies with
// NoSuchMethodError and its own catch turns the value into "false". This tag does the
// same lookup through Groovy, so the (I)J descriptor is resolved dynamically.

import com.github.lunatrius.ingameinfo.tag.Tag
import mcjty.rftoolsdim.dimensions.DimensionStorage
import mcjty.rftoolsdim.dimensions.RfToolsDimensionManager
import net.minecraft.client.Minecraft

class RFToolsDimensionPowerTag extends Tag {

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
