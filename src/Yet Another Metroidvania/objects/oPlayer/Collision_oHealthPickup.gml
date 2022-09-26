if (hp < maxHP) {
    hp = hp + 25;
    instance_destroy(other);
    if (hp > maxHP) {
        hp = maxHP;
    }
}