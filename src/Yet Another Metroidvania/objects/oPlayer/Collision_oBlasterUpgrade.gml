if (blasterLevel < maxBlasterLevel) {
    blasterLevel++;
    instance_destroy(other);
    if (blasterLevel > maxBlasterLevel) {
        blasterLevel = maxBlasterLevel;
    }
}