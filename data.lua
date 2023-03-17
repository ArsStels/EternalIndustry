-- require("prototypes.lib")
require("prototypes.functions") 
-- require("prototypes.entity.fix.locomotives.locomotives")

require("prototypes.types.new_fuel_category")
require("prototypes.types.new_recipe_category")

require("prototypes.items.extend.train_accumulator")
require("prototypes.items.extend.electric_locomotives")
require("prototypes.items.extend.accumulator-recharger")

require("prototypes.entity.extend.electric_locomotives")
require("prototypes.entity.extend.accumulator-recharger")

require("prototypes.technology.extend.electric-locomotives")

-- UPDATE 07.10.2021
-- local a = 1
-- local b = 1
-- local c = 1
-- local d = 1
-- local settingnames_bool = {"bodyspray", "gore_hide_puddle", "gore_custom_splashes", "gore_custom_decals", "gore-damage-bleeding", "PDA-setting-tech-required", "PDA-setting-allow-cruise-control", "PDA-setting-verbose", "PDA-setting-sound-alert", "PDA-setting-alt-toggle-mode", "zk-lib-warn-about-addons", "EL_debug-mode", "EL_logs-mode", "zk-lib_safe-mode", "zk-lib_special-message", "zk-lib_kill-nest-get-gifts", "zk-lib_random-gifts-by-timer", "zk-lib_auto-mining", "zk-lib_searching-flashlight", "zk-lib_adrenaline", "aai-containers-resize-1x1", "aai-containers-scale-icons", "adaptive-movement-speed-global-enabled", "adaptive-movement-speed-enabled", "autodeconstruct-remove-target", "autodeconstruct-remove-fluid-drills", "autodeconstruct-build-pipes", "BlueprintSignals_show-convert", "BlueprintSignals_connect-red", "BlueprintSignals_connect-green", "bobmods-enemies-enableartifacts", "bobmods-enemies-enablesmallartifacts", "bobmods-enemies-enablenewartifacts", "bobmods-enemies-aliensdropartifacts", "bobmods-enemies-biggersooner", "bobmods-enemies-superspawner", "bobmods-enemies-healthincrease", "bobmods-inserters-long2", "bobmods-inserters-more2", "bobmods-library-technology-cleanup", "bobmods-library-recipe-cleanup", "constructionPlanner-auto-approve", "kajacx_copy-paste-modules_enable", "kajacx_copy-paste-modules_enable-request", "disable-distribute", "disable-inventory-cleanup", "info", "enable-ed", "take-from-car", "cleanup-logistic-request-overflow", "drop-trash-to-chests", "informatron-show-overhead-button", "informatron-show-at-start", "ixuPatchMapPreset_ForceNoEnemies", "ixuPatchMapPreset_ForceNoCliffs", "ixuPatchMapPreset_ForceResearchQueue", "ixuPatchMapPreset_SetAltModeOn", "ixuPatchMapPreset_MediumPowerPole32", "ixuPatchMapPreset_LegacyMainMenu", "jetpack-fall-on-damage", "jetpack-thrust-stacks", "jetpack-print-thrust", "hide-top-button", "logiNetChannels-show-hover", "logiNetChannels-require-research", "LogisticRequestManager-display_slots_warning", "LogisticRequestManager-default_to_user", "LogisticRequestManager-allow_gui_without_research", "LogisticRequestManager-create_preset-autotrash", "LogisticRequestManager-allow_constant_combinator", "LogisticRequestManager-appended_requests_after_existing_ones", "LogisticRequestManager-always_append_blueprints", "LogisticRequestManager-blueprint_item_requests_unlimited", "placeablesSettingHideButton", "placeablesSettingPowerUser", "qbie_display_gui_button", "rampant-arsenal-enableEquipment", "rampant-arsenal-enableVehicle", "rampant-arsenal-enableAmmoTypes", "rampant-arsenal-enableRifleTurret", "rampant-arsenal-enableNuclearGeneratorEquipmentConsuming", "rampant-arsenal-hideVanillaDamageTechnologies", "rampant-arsenal-useInfiniteTechnologies", "rf-enable-light-halo", "rf-enable-vehicle-light-halo", "rewire-background", "Rich-Hide-Button", "ScanningRadar_power", "Schall-CA-chunk-alt-mode-enable", "Schall-CA-chunk-cursor-stack-enable", "Schall-CA-chunk-cursor-ghost-enable", "Schall-CA-chunk-cursor-blueprint-enable", "Schall-CA-chunk-cursor-radar-enable", "Schall-CA-chunk-cursor-buildable-only-enable", "circuitgroup-individual-combinator-subgroups", "endgameevolution-gui-enable", "endgameevolution-gui-unspawned-hide", "endgameevolution-category-corpses-enable", "Schall-EI-show-modifiers-panel", "Schall-TG-disable", "pickuptower-range-force-disable", "pickuptower-range-show", "uraniumprocessing-remove-kovarex-enrichment-process", "uraniumprocessing-remove-sulfuric-acid-mining", "uraniumprocessing-modify-nuclear-fuel-reprocessing", "Schall-VS-letter-greek-enable", "Schall-VS-colour-tertiary-add", "Schall-VS-colour-pink-rename", "Schall-VS-mathematical-enable", "Schall-VS-arrow-enable", "Schall-VS-map-icon-enable", "Schall-VS-XL-t1-enable", "Schall-VS-XL-t2-enable", "Schall-VS-XL-t3-enable", "Schall-VS-XL-t4-enable", "SFX_alternate_effect", "flood", "drought", "fire", "more_agressive_base_chunks", "hello_Ripley", "weathering_of_cliffs", "todolist-show-button", "todolist-show-log", "todolist-auto-assign", "ts-variable-zoom", "ts-menu-hotkey", "ts-autostart-while-viewing-map", "ts-autostart-while-gui-is-open", "ts-linked-game-control-hotkey", "ts-secrets", "crash-sequence", "aai-fast-motor-crafting", "aai-stone-path", "aai-fuel-processor", "aai-structs-output_pulse", "bpt-consider-tiles-for-quick-grid", "bpt-show-configure", "bpt-show-quick-grid", "bpt-show-set-tiles", "bpt-show-swap-wire-colors", "bobmods-ores-infiniteore", "bobmods-ores-unsortedgemore", "bobmods-ores-leadgivesnickel", "bobmods-ores-nickelgivescobalt", "bobmods-ores-gemsfromotherores", "bobmods-ores-enablebauxite", "bobmods-ores-enablecobaltore", "bobmods-ores-enablegemsore", "bobmods-ores-enablegoldore", "bobmods-ores-enableleadore", "bobmods-ores-enablenickelore", "bobmods-ores-enablequartz", "bobmods-ores-enablerutile", "bobmods-ores-enablesilverore", "bobmods-ores-enablesulfur", "bobmods-ores-enabletinore", "bobmods-ores-enabletungstenore", "bobmods-ores-enablezincore", "bobmods-ores-enablewaterores", "bobmods-ores-enablethoriumore", "bobmods-tech-colorupdate", "bobmods-burnerphase", "CircuitHUD_hide_hud_header", "CircuitHUD_uncollapse_hud_on_register_combinator", "evenmoretextplates-even-more", "evenmoretextplates-legacy-plastic", "fcpu-gui-editor-inline-icons", "Kux-BlueprintExtensions_EnableLog", "Kux-BlueprintExtensions_cardinal-center", "Kux-BlueprintExtensions_horizontal-invert", "Kux-BlueprintExtensions_vertical-invert", "Kux-BlueprintExtensions_support-fluid_permutations", "Kux-BlueprintExtensions_support-gdiw", "Kux-BlueprintExtensions_show-mirror", "Kux-BlueprintExtensions_show-rotate", "Kux-BlueprintExtensions_show-clone", "Kux-BlueprintExtensions_show-wireswap", "Kux-BlueprintExtensions_show-landfill", "map_tag_generator_include_accumulators", "map_tag_generator_include_turrets", "map_tag_generator_include_assemblers", "map_tag_generator_include_power_generators", "map_tag_generator_include_labs", "map_tag_generator_include_resources", "map_tag_generator_include_train_stops", "map_tag_generator_add_tags_dialog", "map_tag_generator_restrict_deletion_player", "map_tag_generator_restrict_deletion_map", "module_inserter_close_after_load", "module_inserter_overwrite", "module_inserter_fill_all", "module_inserter_hide_button", "nixie-tube-slashed-zero", "start-with-unit-remote-control", "start-with-random-color", "passenger-no-control-alert", "aai-remove-ai-on-mine", "aai-attack-target-fallback", "ab-enable-nest", "ab-disable-moisture-check", "bobmods-plates-cheapersteel", "bobmods-plates-newsteel", "bobmods-plates-batteryupdate", "bobmods-plates-oreoverride", "bobmods-plates-purewater", "bobmods-plates-groundwater", "bobmods-plates-vanillabarrelling", "bobmods-colorupdate", "bobmods-plates-bluedeuterium", "bobmods-plates-nuclearupdate", "bobmods-plates-convert-recipes", "bobmods-plates-expensive-electrolysis", "fp_display_gui_button", "fp_prefer_matrix_solver", "se-print-meteor-info", "se-print-satellite-discovered-nothing", "se-never-show-lifesupport", "se-show-zone-preview", "se-deep-space-belt-white", "se-deep-space-belt-red", "se-deep-space-belt-magenta", "se-deep-space-belt-blue", "se-deep-space-belt-cyan", "se-deep-space-belt-green", "se-deep-space-belt-yellow", "se-pylon-charge-points", "se-spawn-small-resources", "se-show-overhead-button-satellite-mode", "se-show-overhead-button-interstellar-map", "se-show-overhead-button-universe-explorer", "se-show-pin-help-tooltip", "se-dropdowns-hide-low-priority-zones", "bobmods-logistics-roboportrecipeupdate", "bobmods-logistics-flyingrobotframes", "bobmods-logistics-robotparts", "bobmods-logistics-robotrequireprevious", "bobmods-logistics-disableroboports", "bobmods-logistics-drainlessinserters", "bobmods-logistics-inserteroverhaul", "bobmods-logistics-inserterrequireprevious", "bobmods-logistics-beltoverhaul", "bobmods-logistics-beltrequireprevious", "bobmods-logistics-beltoverhaulspeed", "bobmods-logistics-ugdistanceoverhaul", "bobmods-logistics-trains", "bobmods-mining-miningdrills", "bobmods-mining-areadrills", "bobmods-mining-pumpjacks", "bobmods-mining-miningaxes", "bobmods-mining-waterminers", "bobmods-mining-steamminingdrills", "bobmods-modules-enablegreenmodules", "bobmods-modules-enablerawspeedmodules", "bobmods-modules-enablerawproductivitymodules", "bobmods-modules-enablegodmodules", "bobmods-modules-enableproductivitylimitation", "bobmods-modules-productivityhasspeed", "bobmods-modules-transmitproductivity", "bobmods-power-steam", "bobmods-power-solar", "bobmods-power-poles", "bobmods-power-accumulators", "bobmods-power-fluidgenerator", "bobmods-power-nuclear", "bobmods-power-burnergenerator", "bobmods-power-heatsources", "bobmods-revamp-nuclear", "bobmods-revamp-old-oil", "bobmods-revamp-oil", "bobmods-revamp-hardmode", "bobmods-revamp-rtg", "bobmods-warfare-robotupdate", "bobmods-warfare-drainlesslaserturrets", "bobmods-warfare-vehicleflamethrowerstartsfires", "bobmods-warfare-spidertron-overhaul", "cen-spawn-items-when-cheating", "cen-ghost-cursor-transitions", "cen-enable-tile-pipette", "kr-bonus-items", "kr-disable-wiki", "kr-loaders", "kr-containers", "kr-impossible-more-than-difficult", "kr-fix-laser-artillery-turret", "kr-re-enable-menu-simulations", "kr-main-menu-song", "kr-rebalance-vehicles&fuels", "kr-rebalance-radar", "kr-rebalance-fuels", "kr-electric-poles-changes", "kr-damage-and-ammo", "kr-pipes-and-belts-changes", "kr-more-realistic-weapon", "kr-more-realistic-weapon-auto-aim", "kr-finite-oil", "kr-peaceful-mode", "kr-infinite-technology", "kr-substation-mk2", "kr-vehicles-minable-changes", "kr-large-icons", "kr-kl-stuff", "kr-spidertron-exoskeleton", "py-tank-adjust", "qol-modpack-compatibility-enabled", "qol-infinite-research-enabled", "qol-crafting-speed-research-enabled", "qol-inventory-size-research-enabled", "qol-mining-speed-research-enabled", "qol-movement-speed-research-enabled", "qol-player-reach-research-enabled", "qol-player-reach-field-item-drop-distance", "qol-player-reach-field-resource-reach-distance", "rampart-heavy-wall-bobs-plates", "rampart-heavy-wall-bobs-electronics", "rsc-st-not-removable-silo", "rsc-st-not-removable-site", "rsc-st-dont-place-tiles", "rsc-st-enable-se-cargo-silo", "rsc-st-enable-se-probe-silo", "YARM-map-markers", "YARM-site-prefix-with-surface", "YARM-debug-profiling", "el_ki_beacon_blueprintable", "el_ki_core_productivity", "el_solar_recipe_enabled", "override_krastorio_endgame", "bzsilicon-bio-crushed-stone", "no_catching_fish", "no_oil_for_oil_rig", "use_dark_blue_waterways", "ee-controller-enable_flash_light", "ee-controller-render_as_day", "ee-controller-instant_blueprint_building", "ee-controller-instant_deconstruction", "ee-controller-instant_upgrading", "ee-controller-instant_rail_planner", "ee-controller-show_additional_entity_info_gui", "ee-controller-fill_built_entity_energy_buffers", "ee-controller-show_character_tab_in_controller_gui", "ee-controller-show_infinity_filters_in_controller_gui", "ee-allow-changing-aggregate-chest-filters", "ee-aggregate-include-hidden", "ee-prevent-initial-pause", "ee-hijack-debug-world", "ee-infinity-pipe-crafter-snapping", "ee-inventory-sync", "reskins-lib-icon-tier-labeling", "reskins-lib-scope-entities", "reskins-lib-scope-equipment", "reskins-lib-scope-items-and-fluids", "reskins-lib-scope-technologies", "reskins-lib-display-notifications", "reskins-lib-customize-tier-colors", "disable-flare", "disable-zoom", "flashlight-toggle", "signal-flare", "draw-grid", "rail-block-visualization-toggle", "big-zoom", "toggle-personal-logistic-requests", "belt-immunity-equipment", "discharge-defense-remote", "night-vision-equipment", "active-defense-equipment", "artillery-targeting-remote", "driver-is-gunner", "spidertron-logistics", "spidertron-logistic-requests", "targeting-with-gunner", "targeting-without-gunner", "train-mode-toggle", "aai-remote-controls", "ick-compatibility-mode", "gu_mod_enabled_perplayer", "ltn-dispatcher-enabled", "ltn-interface-message-gps", "ltn-interface-factorio-alerts", "ltn-interface-debug-logfile", "ltn-dispatcher-schedule-circuit-control", "ltn-dispatcher-requester-delivery-reset", "ltn-dispatcher-finish-loading", "ltn-depot-reset-filters", "reskins-bobs-do-custom-furnace-variants", "reskins-bobs-do-bobenemies", "reskins-bobs-do-pipe-tier-labeling", "reskins-bobs-do-boblogistics", "reskins-bobs-do-belt-entity-tier-labeling", "reskins-bobs-do-inserter-tier-labeling", "reskins-bobs-do-inserter-filter-symbol", "reskins-bobs-flip-stack-inserter-icons", "reskins-bobs-do-basic-belts-separately", "reskins-bobs-do-progression-based-robots", "reskins-bobs-do-bobmining", "reskins-bobs-do-bobmodules", "reskins-bobs-do-bobores", "reskins-bobs-do-bobplates", "reskins-bobs-do-bobpower", "reskins-bobs-hydrazine-is-blue", "reskins-bobs-do-bobrevamp", "reskins-bobs-do-bobrevamp-reactor-color", "reskins-bobs-do-bobtech", "reskins-bobs-show-alien-decoratives-on-lab", "reskins-bobs-do-bobwarfare", "ltn-cleanup-failed-trains", "ltn-cleanup-calculate-delta", "ltnm-auto-refresh", "ltnm-keep-gui-open", "high-provide-threshold", "show-all-panels", "show-net-panel", "use-stacks", "ltnc-upgradable", "bobmods-recursive-circuitred", "reskins-angels-use-item-variations", "omnilib-autoupdate", "mprd-vertical-display", "mprd-amount-display", "omniscience-modify-costs", "omniscience-modify-omnimatter-costs", "omniscience-rocket-modified-by-omni", "omniscience-cumulative-count", "omniscience-exponential", "omniscience-standard-time", "debug-mods-settings", "zk-lib-during-game_kill-nest-get-gifts", "zk-lib-during-game_random-gifts-by-timer", "zk-lib-during-game_auto-mining", "zk-lib-during-game_searching-flashlight", "zk-lib-during-game_adrenaline", "zk-lib-during-game_CopyAssemblerPipeDirection", "zk-lib-during-game_scan-rocket-with-radars", "zk-lib-during-game_delete_decorations"} -- bool-settings

-- local settingnames_int = {"splatterduration", "particleduration", "puddleduration", "bodyduration", "PDA-setting-tick-rate", "PDA-setting-assist-min-speed", "PDA-setting-assist-high-speed", "PDA-setting-game-max-speed", "PDA-setting-server-limit-sign-speed", "PDA-setting-personal-limit-sign-speed", "bottleneck-signals-per-tick", "crafting_combinator:refresh-rate-cc", "crafting_combinator:refresh-rate-rc", "global-max-inventory-cleanup-range", "max-inventory-cleanup-drop-range", "evolution-through-research-frequency", "far-reach-build-distance-bonus", "far-reach-reach-distance-bonus", "far-reach-resource-reach-distance-bonus", "far-reach-item-drop-distance-bonus", "flib-dictionary-levels-per-batch", "flib-translations-per-tick", "jetpack-speed-reduces-shields", "logiNetChannelLimit", "rewire-frequency", "ScanningRadar_radius", "ScanningRadar_speed", "endgameevolution-gui-refresh-interval", "endgameevolution-gui-frame-height-maximum", "endgameevolution-gui-frame-width-maximum", "endgameevolution-alien-tier-max", "endgameevolution-category-corpses-time-before-removed", "Schall-EI-gui-frame-height-maximum", "Schall-EI-entity-instances-maximum", "pickuptower-tier-max", "Schall-SC-rocket-launch-rate-decimal-places", "Schall-SC-rocket-launch-interval-decimal-places", "Schall-SC-cycles-stored", "Schall-VS-number-max", "minimal_pollution", "nature_events_every", "chunks", "new_trees_chance", "new_trees_count", "max_trees_count", "trees_evolution_chance", "trees_evolution_count", "trees_rotted_chance", "trees_rotted_count", "trees_rotted_tiles", "todolist-window-height", "ts-wait-at-signal", "quick-start-science", "aai-burner-turbine-efficiency", "aai-fuel-processor-efficiency", "aai-structs-tick_limit", "aai-max-structs-per-tick", "tile-speed-reduction", "CircuitHUD_hud_columns", "CircuitHUD_hud_height", "CircuitHUD_hud_refresh_rate", "fcpu-gui-updates-every-tick", "fcpu-gui-editor-width", "fcpu-maximum-updates-per-tick", "milestones_check_frequency", "module_inserter_proxies_per_tick", "nixie-tube-update-speed-alpha", "nixie-tube-update-speed-numeric", "rpm_entity", "rpm_items", "circuitscaling-tier-circuit-compenent", "pathfinding-visualisation-cutoff", "deadzone-construction-denial-range", "bobmods-plates-inventorysize", "fp_products_per_row", "fp_subfactory_list_rows", "se-meteor-interval", "se-plague-max-runtime-2", "se-cmes-max-frequency", "se-space-pipe-capacity", "se-deep-space-belt-speed", "se-dropdowns-priority-threshold", "se-scan-search-budget", "se-scan-chart-budget", "se-scan-alert-interval", "se-supercharger-individual-charge-rate", "bobmods-logistics-beltstarting", "bobmods-logistics-beltperlevel", "bobmods-logistics-pipestarting", "bobmods-logistics-pipeperlevel", "bobmods-logistics-fluidwagonbase", "bobmods-logistics-storagetankbase", "kr-long-hands", "kr-bonus-inventory", "kr-cargo-wagon-bonus", "qol-inventory-size-flat-bonus", "qol-player-reach-flat-bonus", "wall-hp", "wall-k", "rsc-st-work-for-remove-stone", "rsc-st-work-for-insert-material", "rsc-st-cost-mp", "YARM-ticks-between-checks", "YARM-entities-per-tick", "YARM-overlay-step", "YARM-warn-percent", "el_solar_power_output", "el_burner_power_output", "el_water_generator_power_output", "el_burner_kerosene_power_output", "fu_burner_power_output", "el_ki_beacon_supply_area", "el_ki_beacon_supply_area_2", "el_ki_beacon_supply_area_3", "el_ki_core_energy_usage", "el_ki_core_energy_usage_2", "el_ki_core_energy_usage_3", "el_ki_core_energy_usage_input", "el_ki_core_energy_usage_input_2", "el_ki_core_energy_usage_input_3", "waterway_reach_increase", "oil_rig_capacity", "tanker_capacity", "ee-controller-inventory_size", "kee-activations", "kee-initial-need-space-research", "kee-initial-need-matter-research", "kee-initial-need-advanced-research", "kee-initial-need-singularity-research", "recipescaling-recipe-multiplier", "grid-radius", "grid-chunk-size", "grid-step", "ltn-dispatcher-nth_tick", "ltn-dispatcher-updates-per-tick", "ltn-interface-message-filter-age", "ltn-dispatcher-requester-threshold", "ltn-dispatcher-provider-threshold", "ltn-dispatcher-depot-inactivity(s)", "ltn-dispatcher-stop-timeout(s)", "ltn-dispatcher-delivery-timeout(s)", "ltn-stop-default-network", "bztungsten-mining-fluid-amount-k2", "ltnm-iterations-per-tick", "slider-max-items", "slider-max-fluid", "ltn_content_reader_update_interval", "omniscience-standard-time-constant", "adrenaline_bonus_modifier", "radius-scan-rocket-with-radars"} -- int-setting

-- local settingnames_double = {"r", "g", "b", "a", "splatter-r", "splatter-g", "splatter-b", "splatter-a", "particle-r", "particle-g", "particle-b", "particle-a", "puddle-d", "scale", "splatterscale", "particlescale", "PDA-tileset-score-asphalt", "PDA-tileset-score-refined-concrete", "PDA-tileset-score-concrete", "PDA-tileset-score-stone", "PDA-tileset-score-gravel", "PDA-tileset-score-wood", "PDA-tileset-score-asphalt-road-lines", "adaptive-movement-speed-global-maximum-speed", "adaptive-movement-speed-global-disable-upon-taking-damage", "adaptive-movement-speed-base-speed", "adaptive-movement-speed-maximum-speed", "adaptive-movement-speed-speed-up-time", "adaptive-movement-speed-cool-down-time", "bobmods-enemies-leviathanfrequency", "BAI_Ntm_fork-scale", "BAI_Ntm_fork-shift-x", "BAI_Ntm_fork-shift-y", "distribution-delay", "LogisticRequestManager-display_slots_by_tick_ratio", "robot-attrition-factor", "ts-transition-speed", "ts-transition-time", "ts-time-wait", "ts-zoom", "ts-afk-auto-start", "modtrainspeeds-locomotive-pullforce", "modtrainspeeds-locomotive-weight", "modtrainspeeds-cargo-wagon-weight", "modtrainspeeds-cargo-payload-weight", "modtrainspeeds-fluid-wagon-weight", "modtrainspeeds-fluid-payload-weight", "modtrainspeeds-train-airfriction-coefficient", "modtrainspeeds-train-wheelfriction-coefficient", "vehphy-tiremarks-duration", "bobmods-ores-leadnickelratio", "bobmods-ores-nickelcobaltratio", "bobmods-ores-gemprobability", "bobmods-gems-rubyratio", "bobmods-gems-sapphireratio", "bobmods-gems-emeraldratio", "bobmods-gems-amethystratio", "bobmods-gems-topazratio", "bobmods-gems-diamondratio", "bobmods-logistics-beltspeedperlevel", "bobmods-modules-perlevel-bonus-speed", "bobmods-modules-perlevel-bonus-pollution", "bobmods-modules-perlevel-bonus-consumption", "bobmods-modules-perlevel-bonus-productivity", "bobmods-modules-perlevel-bonus-pollutioncreate", "bobmods-modules-perlevel-penalty-speed", "bobmods-modules-perlevel-penalty-pollution", "bobmods-modules-perlevel-penalty-consumption", "bobmods-modules-start-bonus-speed", "bobmods-modules-start-bonus-pollution", "bobmods-modules-start-bonus-consumption", "bobmods-modules-start-bonus-productivity", "bobmods-modules-start-bonus-pollutioncreate", "bobmods-modules-start-penalty-speed", "bobmods-modules-start-penalty-pollution", "bobmods-modules-start-penalty-consumption", "qol-crafting-speed-flat-bonus", "qol-mining-speed-flat-bonus", "qol-movement-speed-flat-bonus", "qol-crafting-speed-multiplier", "qol-inventory-size-multiplier", "qol-mining-speed-multiplier", "qol-movement-speed-multiplier", "qol-player-reach-multiplier", "el_ki_beacon_effectivity", "el_ki_beacon_effectivity_2", "el_ki_beacon_effectivity_3", "speed_modifier", "fuel_modifier", "recipescaling-recipe-time-threshold", "grid-chunk-line-width", "grid-line-width", "zoom-level", "ltn-depot-fluid-cleaning", "omniscience-cumulative-constant", "omniscience-cumulative-constant-omni", "omniscience-chain-constant", "omniscience-chain-omnitech-constant", "omniscience-exponential-initial", "omniscience-exponential-base", "omniscience-omnitech-max-constant"} -- double-setting

-- local settingnames_string = {"preset", "aai-containers-progression", "bobmods-inserters-show-window", "bobmods-inserters-gui-position", "BAI_Ntm_fork-mod-icons", "bottleneck-show-working-color", "bottleneck-show-working-icon", "bottleneck-show-normal-color", "bottleneck-show-normal-icon", "bottleneck-show-no_power-color", "bottleneck-show-no_power-icon", "bottleneck-show-low_power-color", "bottleneck-show-low_power-icon", "bottleneck-show-no_fuel-color", "bottleneck-show-no_fuel-icon", "bottleneck-show-disabled_by_control_behavior-color", "bottleneck-show-disabled_by_control_behavior-icon", "bottleneck-show-opened_by_circuit_network-color", "bottleneck-show-opened_by_circuit_network-icon", "bottleneck-show-closed_by_circuit_network-color", "bottleneck-show-closed_by_circuit_network-icon", "bottleneck-show-disabled_by_script-color", "bottleneck-show-disabled_by_script-icon", "bottleneck-show-marked_for_deconstruction-color", "bottleneck-show-marked_for_deconstruction-icon", "bottleneck-show-not_plugged_in_electric_network-color", "bottleneck-show-not_plugged_in_electric_network-icon", "bottleneck-show-networks_connected-color", "bottleneck-show-networks_connected-icon", "bottleneck-show-networks_disconnected-color", "bottleneck-show-networks_disconnected-icon", "bottleneck-show-charging-color", "bottleneck-show-charging-icon", "bottleneck-show-discharging-color", "bottleneck-show-discharging-icon", "bottleneck-show-fully_charged-color", "bottleneck-show-fully_charged-icon", "bottleneck-show-out_of_logistic_network-color", "bottleneck-show-out_of_logistic_network-icon", "bottleneck-show-no_recipe-color", "bottleneck-show-no_recipe-icon", "bottleneck-show-no_ingredients-color", "bottleneck-show-no_ingredients-icon", "bottleneck-show-no_input_fluid-color", "bottleneck-show-no_input_fluid-icon", "bottleneck-show-no_research_in_progress-color", "bottleneck-show-no_research_in_progress-icon", "bottleneck-show-no_minable_resources-color", "bottleneck-show-no_minable_resources-icon", "bottleneck-show-low_input_fluid-color", "bottleneck-show-low_input_fluid-icon", "bottleneck-show-fluid_ingredient_shortage-color", "bottleneck-show-fluid_ingredient_shortage-icon", "bottleneck-show-full_output-color", "bottleneck-show-full_output-icon", "bottleneck-show-item_ingredient_shortage-color", "bottleneck-show-item_ingredient_shortage-icon", "bottleneck-show-missing_required_fluid-color", "bottleneck-show-missing_required_fluid-icon", "bottleneck-show-missing_science_packs-color", "bottleneck-show-missing_science_packs-icon", "bottleneck-show-waiting_for_source_items-color", "bottleneck-show-waiting_for_source_items-icon", "bottleneck-show-waiting_for_space_in_destination-color", "bottleneck-show-waiting_for_space_in_destination-icon", "bottleneck-show-preparing_rocket_for_launch-color", "bottleneck-show-preparing_rocket_for_launch-icon", "bottleneck-show-waiting_to_launch_rocket-color", "bottleneck-show-waiting_to_launch_rocket-icon", "bottleneck-show-launching_rocket-color", "bottleneck-show-launching_rocket-icon", "bottleneck-show-no_modules_to_transmit-color", "bottleneck-show-no_modules_to_transmit-icon", "bottleneck-show-recharging_after_power_outage-color", "bottleneck-show-recharging_after_power_outage-icon", "bottleneck-show-waiting_for_target_to_be_built-color", "bottleneck-show-waiting_for_target_to_be_built-icon", "bottleneck-show-waiting_for_train-color", "bottleneck-show-waiting_for_train-icon", "bottleneck-show-no_ammo-color", "bottleneck-show-no_ammo-icon", "bottleneck-show-low_temperature-color", "bottleneck-show-low_temperature-icon", "bottleneck-show-disabled-color", "bottleneck-show-disabled-icon", "bottleneck-show-turned_off_during_daytime-color", "bottleneck-show-turned_off_during_daytime-icon", "bottleneck-show-not_connected_to_rail-color", "bottleneck-show-not_connected_to_rail-icon", "bottleneck-show-cant_divide_segments-color", "bottleneck-show-cant_divide_segments-icon", "erlib:enabled-plugins", "erlib:logging-level", "inventory-cleanup-custom-trash", "ignored-entities", "LogisticRequestManager-enable-append", "LogisticRequestManager-enable-undefined_max_as_infinit", "LogisticRequestManager-enable-round_up", "LogisticRequestManager-modifier-append", "LogisticRequestManager-modifier-undefined_max_as_infinit", "LogisticRequestManager-modifier-round_up", "recursive-blueprints-area", "robot-attrition-repair", "ScanningRadar_direction", "Schall-CA-tile-grid", "Schall-CA-chunk-grid", "circuitgroup-order", "endgameevolution-gui-spawners-exclude", "endgameevolution-difficulty", "endgameevolution-fire-resistance-level", "Schall-EI-item-rate-unit", "Schall-EI-belt-in-calculation", "Schall-TG-append-left", "Schall-TG-append-right", "Schall-TG-coord-format-set", "Schall-TG-coord-format-custom-x-pos-sign", "Schall-TG-coord-format-custom-x-neg-sign", "Schall-TG-coord-format-custom-y-pos-sign", "Schall-TG-coord-format-custom-y-neg-sign", "Schall-TG-coord-format-custom-fmt-value", "Schall-TG-coord-format-custom-fmt-coord", "pickuptower-range-color", "Schall-SC-mod-button-style", "Schall-SC-mod-button-number", "Schall-SC-launched-items-include", "transportgroup-order", "uraniumprocessing-uranium-238-colour-change", "Schall-VS-letter-greek-background", "squeakthrough-mod-compatibility", "dynamic_daily_cycle", "the_night_is_dark_and_full_of_terror", "template", "todolist-click-edit-task", "todolist-translation-mode", "alien-biomes-disable-vegetation", "alien-biomes-remove-obsolete-tiles", "alien-biomes-include-dirt-aubergine", "alien-biomes-include-dirt-beige", "alien-biomes-include-dirt-black", "alien-biomes-include-dirt-brown", "alien-biomes-include-dirt-cream", "alien-biomes-include-dirt-dustyrose", "alien-biomes-include-dirt-grey", "alien-biomes-include-dirt-purple", "alien-biomes-include-dirt-red", "alien-biomes-include-dirt-tan", "alien-biomes-include-dirt-violet", "alien-biomes-include-dirt-white", "alien-biomes-include-frozen", "alien-biomes-include-grass-blue", "alien-biomes-include-grass-green", "alien-biomes-include-grass-mauve", "alien-biomes-include-grass-olive", "alien-biomes-include-grass-orange", "alien-biomes-include-grass-purple", "alien-biomes-include-grass-red", "alien-biomes-include-grass-turquoise", "alien-biomes-include-grass-violet", "alien-biomes-include-grass-yellow", "alien-biomes-include-sand-aubergine", "alien-biomes-include-sand-beige", "alien-biomes-include-sand-black", "alien-biomes-include-sand-brown", "alien-biomes-include-sand-cream", "alien-biomes-include-sand-dustyrose", "alien-biomes-include-sand-grey", "alien-biomes-include-sand-purple", "alien-biomes-include-sand-red", "alien-biomes-include-sand-tan", "alien-biomes-include-sand-violet", "alien-biomes-include-sand-white", "alien-biomes-include-volcanic-blue", "alien-biomes-include-volcanic-green", "alien-biomes-include-volcanic-orange", "alien-biomes-include-volcanic-purple", "alien-biomes-include-inland-shallows", "alien-biomes-include-coastal-shallows", "alien-biomes-include-rivers", "CircuitHUD_hud_title", "CircuitHUD_hud_position", "CircuitHUD_debug_mode", "fcpu-debug-enabled", "Kux-BlueprintExtensions_version-increment", "Kux-BlueprintExtensions_alt-version-increment", "Kux-BlueprintExtensions_landfill-mode", "map_tag_generator_position_style", "map_tag_generator_layout_style", "module_inserter_button_style", "hand-deploy-vehicle-ai-default", "exclude-vehicles", "restrict-remote-actions-to-player-ids", "ab-small-armoured-biter-health", "ab-small-armoured-biter-resistances", "ab-small-armoured-biter-spawn-probability", "ab-medium-armoured-biter-health", "ab-medium-armoured-biter-resistances", "ab-medium-armoured-biter-spawn-probability", "ab-big-armoured-biter-health", "ab-big-armoured-biter-resistances", "ab-big-armoured-biter-spawn-probability", "ab-behemoth-armoured-biter-health", "ab-behemoth-armoured-biter-resistances", "ab-behemoth-armoured-biter-spawn-probability", "ab-leviathan-armoured-biter-health", "ab-leviathan-armoured-biter-resistances", "ab-leviathan-armoured-biter-spawn-probability", "fp_alt_action", "fp_default_timescale", "fp_view_belts_or_lanes", "se-space-science-pack", "aai-wide-drill", "bobmods-warfare-spidertron-needsfuel", "cen-personal-registry-overrides", "kr-stack-size", "kr-automation-science-pack-recipe", "kr-logistic-science-pack-recipe", "kr-military-science-pack-recipe", "kr-chemical-science-pack-recipe", "kr-production-science-pack-recipe", "kr-utility-science-pack-recipe", "kr-shelter-tint", "kr-main-menu-background", "qol-custom-config", "YARM-order-by", "bzsilicon-recipe-bypass", "bzsilicon-more-intermediates", "oil_frequency", "oil_richness", "ee-default-infinity-filters", "reskins-lib-tier-mapping", "reskins-lib-icon-tier-labeling-style", "reskins-lib-blend-mode", "reskins-lib-custom-colors-tier-0", "reskins-lib-custom-colors-tier-1", "reskins-lib-custom-colors-tier-2", "reskins-lib-custom-colors-tier-3", "reskins-lib-custom-colors-tier-4", "reskins-lib-custom-colors-tier-5", "reskins-lib-custom-colors-tier-6", "recipescaling-recipe-category-exclude", "recipescaling-recipe-exclude", "recipescaling-machine-include", "recipescaling-recipe-set-usable", "recipescaling-machine-scaled-only-include", "grid-chunk-align", "grid-ground", "tree-killer", "artillery-toggle", "spidertron-remote", "autogen-color", "bzlead-recipe-bypass", "bzlead-more-entities", "bzlead-sulfuric", "gu_frame_style_setting", "gu_button_style_setting", "gu_todolist_style_setting", "ltn-interface-console-level", "reskins-bobs-standard-furnace-color", "reskins-bobs-mixing-furnace-color", "reskins-bobs-chemical-furnace-color", "reskins-bobs-basic-belts-color", "reskins-bobs-fusion-robot-color", "bztungsten-recipe-bypass", "bztungsten-avoid-military", "bztungsten-advanced-carbon-furnace"} -- string-settings

-- function get_setting_values_bool()
--   for name1, val in pairs(settings.startup) do
--     if ast.table_contains(settingnames_bool, name1) == true then
--       a = a + 1
--       log(serpent.block({name1, val}))
--     end
--   end
--   log("Settings 'bool' logging complete")
-- end
-- function get_setting_values_int()
--   for name2, val in pairs(settings.startup) do
--     if ast.table_contains(settingnames_int, name2) == true then
--       b = b + 1
--       log(serpent.block({name2, val}))
--     end
--   end
--   log("Settings 'int' logging complete")
-- end
-- function get_setting_values_string()
--   for name3, val in pairs(settings.startup) do
--     if ast.table_contains(settingnames_string, name3) == true then
--       c = c + 1
--       log(serpent.block({name3, val}))
--     end
--   end
--   log("Settings 'string' logging complete")
-- end
-- function get_setting_values_double()
--   for name4, val in pairs(settings.startup) do
--     if ast.table_contains(settingnames_double, name4) == true then
--       d = d + 1
--       log(serpent.block({name4, val}))
--     end
--   end
--   log("Settings 'double' logging complete")
-- end

-- get_setting_values_bool()
-- get_setting_values_int()
-- get_setting_values_string()
-- get_setting_values_double()

-- log(serpent.block(data.raw["map-gen-presets"]))

log("AST.data. phase Initialized complete!")