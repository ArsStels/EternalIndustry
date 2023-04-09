data:extend({
	--@@@ ORE 1 @@@--
	{
		type = "autoplace-control",
		name = "test-ore1",
		richness = true,
		category = "resource",
		order = "b-e"
	},
	{
		type = "noise-layer",
		name = "test-ore1"
	},
	{
		type = "resource",
		name = "test-ore1",
		icon = "__EternalIndustry__/graphics/resource/ore__.png",
		icon_size = 40,
		flags = { "placeable-neutral" },
		order = "a-b-a",
		map_color = { r = 0.26, g = 0.30, b = 0.39 },
		minable =
		{
			fluid_amount = 7,
			hardness = 1,
			required_fluid = "sulfuric-acid",
			mining_particle = "stone-particle",
			mining_time = 1.5,
			result = "test-ore1",
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace =
		{
			control = "test-ore1",
			sharpness = 1,
			richness_multiplier = 13000,
			richness_base = 350,
			size_control_multiplier = 0.06,
			peaks = {
				{
					influence = 0.3,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
				{
					influence = 0.55,
					noise_layer = "test-ore1",
					noise_octaves_difference = -2.3,
					noise_persistence = 0.4,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
			},
		},
		stage_counts = { 1000, 100, 10 },
		stages =
		{
			sheet =
			{
				filename = "__EternalIndustry__/graphics/resource/ore_9.png",
				priority = "extra-high",
				width = 40,
				height = 40,
				frame_count = 3,
				variation_count = 3
			}
		},
	},
	{
		type = "item",
		name = "test-ore1",
		icon = "__EternalIndustry__/graphics/resource/ore__.png",
		icon_size = 40,
		stack_size = 200
	},

	--@@@ ORE 2 @@@--

	{
		type = "autoplace-control",
		name = "test-ore2",
		richness = true,
		category = "resource",
		order = "b-f"
	},
	{
		type = "noise-layer",
		name = "test-ore2"
	},
	{
		type = "resource",
		name = "test-ore2",
		icon = "__EternalIndustry__/graphics/resource/ore__.png",
		icon_size = 40,
		flags = { "placeable-neutral" },
		order = "a-b-b",
		map_color = { r = 1, g = 1, b = 1 },
		minable =
		{
			fluid_amount = 7,
			hardness = 1,
			required_fluid = "sulfuric-acid",
			mining_particle = "stone-particle",
			mining_time = 1.5,
			result = "test-ore2",
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace =
		{
			control = "iron-ore",
			order = "b",
			richness = true,
			frequency = 0.5,
			size = 1,
			noisePersistence = 0.4,
			startingAreaWeightOptimal = 0.4,
			startingAreaWeightRange = 0.6,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1
		},
		--[==[
		{
			control = "test-ore2",
			size_control_multiplier = 0.06, --?
			sharpness = 1,
			-- def 0
			--[[
				Parameter of the sharpness filter for post-processing probability of entity placement.
				Value of 0 disables the filter, with value 1, the filter is a step function centered around 0.5.

				Параметр фильтра резкости для постобработки вероятности размещения объектов.
				Значение 0 отключает фильтр, при значении 1 фильтр представляет собой ступенчатую функцию, сосредоточенную вокруг 0,5.
				]]
			max_probability = 1,
			-- def 1
			-- Multiplier for output of the sharpness filter.

			-- Множитель для выхода фильтра резкости.
			richness_base = 7,
			-- def 0
			-- See #Richness calculation. https://wiki.factorio.com/Types/AutoplaceSpecification#Richness_calculation
			richness_multiplier = 0.1,
			-- def 0 See #Richness calculation
			richness_multiplier_distance_bonus = 0.12,
			-- def 0
			--[[
				Bonus to richness multiplier per tile of distance from starting point. See #Richness calculation.

				Бонус к множителю богатства за тайл расстояния от начальной точки. См. #Richness calculation.
				]]
			random_probability_penalty = 1, --?
			peaks = {
				{
					influence = 0.4,
					--min_influence = 0.18,
					--max_influence = 0.31,
					-- richness_influence = 0.3,
					noise_persistence = 0.8,
					noise_octaves_difference = 0.27,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
				{
					influence = 0.25,
					min_influence = 0.22,
					max_influence = 0.27,
					richness_influence = 0.2,
					noise_layer = "test-ore2",
					noise_persistence = 0.37,
					noise_octaves_difference = 0.82,
				},
			},
			--[[
				autoplace peaks https://wiki.factorio.com/Types/AutoplaceSpecification#Autoplace_Peaks
				If this property is missing, then the whole autoplace specification is interpreted as a single peak.

				Если это свойство отсутствует, то вся спецификация autoplace интерпретируется как один пик.
				]]

			-- @@@@@@@@@@@@@ AUTOPLACE PEAKS @@@@@@@@@@@@@
			--[[
					Autoplace peaks
influence
Default: 1
Influence multiplier. See #Influence calculation.

min_influence
Default: min double
Minimal influence (after all calculations) of current peak. See #Influence calculation.

max_influence
Default: max double
Maximal influence (after all calculations) of current peak. See #Influence calculation.

richness_influence
Default: 0
Bonus for influence multiplier when calculating richness. See #Influence calculation.

noise_layer
Default: ""
Name of noise layer to use for this peak. If empty, then no noise is added to this peak.

noise_persistence
Default: 0.5
Must be between 0 and 1. Persistence of the noise.

noise_octaves_difference
Default: 0
Difference between number of octaves of the world and of the noise.

noise_scale
Default: 1

*_optimal
Optimal value of a tile property. If the property is close to this value, peak influence is 1. See #Dimensions.

*_range
Default: 0
Distance from the optimal parameters that is still considered optimal. See #Dimensions.

*_max_range
Distance from the optimal parameters that get influence of -1. See #Dimensions.

*_top_property_limit
Default: max double
Limit distance from the optimum on a single (positive) side. This is pure magic. See #Dimensions.


influence
По умолчанию: 1
Множитель влияния. См. #Расчет влияния.

min_influence
По умолчанию: min double
Минимальное влияние (после всех вычислений) текущего пика. См. #Расчет влияния.

max_influence
По умолчанию: max double
Максимальное влияние (после всех вычислений) текущего пика. См. #Расчет влияния.

richness_influence
По умолчанию: 0
Бонус к множителю влияния при расчете богатства. См. #Расчет влияния.

noise_layer
По умолчанию: ""
Имя слоя шума, который будет использоваться для этого пика. Если пусто, то шум не будет добавлен к этому пику.

noise_persistence
По умолчанию: 0.5
Должно быть между 0 и 1. Стойкость шума.

noise_octaves_difference
По умолчанию: 0
Разница между числом октав мира и шума.

noise_scale
По умолчанию: 1

*_optimal
Оптимальное значение свойства плитки. Если свойство близко к этому значению, пиковое влияние равно 1. См. #Dimensions.

*_range
По умолчанию: 0
Расстояние от оптимальных параметров, которое все еще считается оптимальным. См. #Dimensions.

*_max_range
Расстояние от оптимальных параметров, которое получает влияние -1. См. #Dimensions.

*_top_property_limit
По умолчанию: max double
Предельное расстояние от оптимума по одной (положительной) стороне. Это чистая магия. См. #Dimensions.
				]]
			-- coverage = 1,
			-- def Calculated from existing peaks.
			-- def Рассчитано на основе существующих пиков.
			--[[
				Calculated from existing peaks.
				Sets a fraction of surface that should be covered by this item.
				Internally this adds an additive influence modifier,
				so that expected fraction of tiles where total influence > 0.5 (the threshold for sharpness filter) equals the parameter.
				Because of the autoplace system's complexity, this is only accurate on simple rules and does some simplification on the more complex ones:
				>> There is always just one combination of tile properties (see #Dimensions) for which the coverage is calculated.
				This combination is given by a first *_optimal value encountered of each type other than starting_area and tier_from_start.
				Starting_area value is fixed to 0 and tier_from_start to 4.
				>> min_influence and max_influence are completely ignored.

				Рассчитывается на основе существующих пиков.
				Задает долю поверхности, которая должна быть покрыта этим элементом.
				Внутри добавляет аддитивный модификатор влияния,
				так что ожидаемая доля тайлов, где общее влияние > 0.5 (порог для фильтра резкости), равна параметру.
				Из-за сложности системы авторазмещения это точно только для простых правил и несколько упрощает более сложные:
				>> Всегда существует только одна комбинация свойств плитки (см. #Размеры), для которой рассчитывается покрытие.
				Эта комбинация задается первым *_optimal значением, встречающимся для каждого типа, кроме start_area и tier_from_start.
				Значение start_area фиксировано на 0, а tier_from_start на 4.
				>> min_influence и max_influence полностью игнорируются.
				]] --
			starting_area_amount = 1,
			-- def 0
			--[[
				If this value is non zero, influence of this entity will be calculated differently in starting area:
				For each entity with this parameter a position in starting area is selected and a blob is placed centered on this position.
				The central tile of this blob will have approximately amount of resources selected by this value.

				Если это значение не равно нулю, влияние этой сущности в стартовой области будет рассчитываться по-другому:
				Для каждой сущности с этим параметром выбирается позиция в стартовой области и помещается блоб по центру этой позиции.
				Центральный тайл этого блоба будет иметь приблизительно количество ресурсов, выбранное этим значением.
				]]
			starting_area_size = 1,
			-- def 10
			--[[
				See #starting_area_amount. Controls approximate radius of the blob in tiles.
				См. #starting_area_amount. Управляет приблизительным радиусом шара в плитках.
				]]
		},
		]==]--
		stage_counts = { 500, 100, 10 },
		stages =
		{
			sheet =
			{
				filename = "__EternalIndustry__/graphics/resource/ore_9.png",
				priority = "extra-high",
				width = 40,
				height = 40,
				frame_count = 3,
				variation_count = 3
			}
		},
	},
	{
		type = "item",
		name = "test-ore2",
		icon = "__EternalIndustry__/graphics/resource/ore__.png",
		icon_size = 40,
		stack_size = 200
	},
})


-- #Richness calculation
--[[
	Richness calculation
	If an entity is to be placed at a position and it's a resource or a part of an enemy base, then richness is calculated in the next step.,
	as sum of influences * (richness_multiplier + distance * richness_multiplier_distance_bonus) + richness_base.
	Note, that when calculating richness, influences of individual peaks use richness_influence.

	Расчет богатства
	Если объект должен быть размещен на позиции и это ресурс или часть вражеской базы, то богатство рассчитывается на следующем шаге,
	как сумма influences * (richness_multiplier + distance * richness_multiplier_distance_bonus) + richness_base.
	Обратите внимание, что при вычислении richness, influences отдельных peaks, используют richness_influence.
]]
-- #Influence calculation
--[[
Influence calculation
There are two possible modes in which influence is calculated.
By default influence is calculated as a sum of influences of peaks (see next paragraph).
When #starting_area_amount parameter is non zero a position in starting area is selected and a blob is placed centered on this position.
Influence is then a maximum of the default calculated value and a value obtained from this blob.

Influence of a peak is obtained by calculating a distance from each of its dimensions and sum of these individual distances
is used as a distance from optimal conditions. Based on this distance a peak gets influence between -1 and 1,
which is then multiplied by the noise function, if it is specified,
and by the influence constant (or by influence + richness_influence if calculating richness).
Finally this value is clamped to a range between min_influence and max_influence.

Расчет влияния
Существует два возможных режима расчета влияния.
По умолчанию влияние рассчитывается как сумма влияний пиков (см. следующий параграф).
Когда параметр #starting_area_amount не равен нулю, выбирается позиция в начальной области и помещается блоб с центром на этой позиции.
influence - это максимум из рассчитанного по умолчанию значения и значения, полученного на этом блобе.

Влияние пика получается путем вычисления расстояния от каждого из его размеров и сумма этих индивидуальных расстояний
используется как расстояние от оптимальных условий. На основании этого расстояния пик получает influence от -1 до 1,
которое затем умножается на функцию шума, если она задана,
и на constant influence (или на influence + richness_influence при calculating richness).
Наконец, это значение зажимается в диапазоне между min_influence и max_influence.
]]
