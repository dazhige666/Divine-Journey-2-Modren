// Match any tier of the Modular Machinery item output bus in quest/retrieval checks.
// The quest uses a valid Damage 2 base stack for display and this oredict for matching.
for i in 0 to 6 {
    <ore:blockOutputBusAny>.add(<modularmachinery:blockoutputbus>.withDamage(i));
}
