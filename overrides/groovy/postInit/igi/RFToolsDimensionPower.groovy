// Divine Journey 2 Modern - added content (not present in the original pack).
// Registers classes.igi.RFToolsDimensionPowerTag as {dj2rftpower}: the stored RF of the
// RFTools dimension the player is in. Duplicate tag names only log an error inside IGI,
// so reloading this script is safe.

import classes.igi.RFToolsDimensionPowerTag
import com.github.lunatrius.ingameinfo.tag.registry.TagRegistry

if (TagRegistry.INSTANCE.getRegisteredTags().any { it.getName() == 'dj2rftpower' }) {
    return
}

TagRegistry.INSTANCE.register(new RFToolsDimensionPowerTag().setName('dj2rftpower'))
System.out.println('[igi-rftpower] registered dj2rftpower')
