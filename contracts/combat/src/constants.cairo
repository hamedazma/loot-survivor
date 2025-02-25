mod CombatEnums {
    #[derive(Drop, Copy, PartialEq, Serde)]
    enum WeaponEffectiveness {
        Weak: (),
        Fair: (),
        Strong: (),
    }

    #[derive(Copy, Drop, PartialEq, Serde)]
    enum Type {
        Magic_or_Cloth: (),
        Blade_or_Hide: (),
        Bludgeon_or_Metal: (),
        Necklace: (),
        Ring: (),
    }

    #[derive(Copy, Drop, PartialEq, Serde)]
    enum Tier {
        T1: (),
        T2: (),
        T3: (),
        T4: (),
        T5: (),
    }

    #[derive(Copy, Drop, PartialEq, Serde)]
    enum Slot {
        Weapon: (),
        Chest: (),
        Head: (),
        Waist: (),
        Foot: (),
        Hand: (),
        Neck: (),
        Ring: (),
    }
}

mod CombatSettings {
    // ELEMENTAL_DAMAGE_BONUS controls the intensity of elemental damage
    // 0 = disables elemental
    // 1 = elemental has maximum effect (0x, 1x, 2x)
    // 2 = elemental bonus is half of base damage (-0.5x, 1x, 1.5x)
    // 3 = elemental bonus is 1/3 of base damage (-0.66x, 1x, 1.66x)
    const ELEMENTAL_DAMAGE_BONUS: u16 = 2; // u16 because this is used with other u16s
    const MAX_CRITICAL_HIT_LUCK: u8 = 40; // max luck for critical hit. Will produce 50% chance

    enum Difficulty {
        Easy: (),
        Normal: (),
        Hard: (),
    }

    // Controls how often the level of threats increases
    // relative to the player's level
    mod DIFFICULTY_CLIFF {
        const EASY: u8 = 8; // increase level range every 8 levels
        const NORMAL: u8 = 4; // increase level range every 4 levels
        const HARD: u8 = 2; // increase level range every 2 levels
    }

    // Controls how much the range of levels increases
    // with each range increase
    mod LEVEL_MULTIPLIER {
        const EASY: u8 = 2; // increase level range by 2x each range increase
        const NORMAL: u8 = 4; // increase level range by 4x each range increase
        const HARD: u8 = 8; // increase level range by 8x each range increase
    }

    // Controls how fast max health increases for entities
    mod HEALTH_MULTIPLIER {
        const EASY: u8 = 10; // increase max health by 10x each range increase
        const NORMAL: u8 = 15; // increase max health by 15x each range increase
        const HARD: u8 = 20; // increase max health by 20x each range increase
    }

    // Determines xp multiplier for each tier
    mod XP_MULTIPLIER {
        const T1: u16 = 5; // 5 * level
        const T2: u16 = 4; // 4 * level
        const T3: u16 = 3; // 3 * level
        const T4: u16 = 2; // 2 * level
        const T5: u16 = 1; // 1 * level
    }

    // Determines damage multiplier for each tier
    mod WEAPON_TIER_DAMAGE_MULTIPLIER {
        const T1: u16 = 5; // 5 * level
        const T2: u16 = 4; // 4 * level
        const T3: u16 = 3; // 3 * level
        const T4: u16 = 2; // 2 * level
        const T5: u16 = 1; // 1 * level
    }

    // Determines damage multiplier for each tier
    mod ARMOR_TIER_DAMAGE_MULTIPLIER {
        const T1: u16 = 5; // 5 * level
        const T2: u16 = 4; // 4 * level
        const T3: u16 = 3; // 3 * level
        const T4: u16 = 2; // 2 * level
        const T5: u16 = 1; // 1 * level
    }
}
