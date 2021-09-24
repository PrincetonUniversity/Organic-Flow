
Technology	{
		name				= "organic"
		date				= "Nov 13 2018"
		dielectric			= 3.61e-05
		unitTimeName			= "ns"
		timePrecision			= 1000
		unitLengthName		    = "micron"
		lengthPrecision			= 1000
		gridResolution			= 5
		unitVoltageName			= "V"
		voltagePrecision		= 1000
		unitCurrentName			= "mA"
		currentPrecision		= 1000
		unitPowerName			= "uw"
		powerPrecision			= 1000
		unitResistanceName		= "kohm"
		resistancePrecision		= 10000000
		unitCapacitanceName		= "pf"
		capacitancePrecision	= 10000000
		unitInductanceName		= "nh"
		inductancePrecision		= 100
		minBaselineTemperature		= 25
		nomBaselineTemperature		= 25
		maxBaselineTemperature		= 25

}

Color       6 {
        name                = "6"
        rgbDefined          = 1
        redIntensity            = 0
        greenIntensity          = 80
        blueIntensity           = 190
}

Color       8 {
        name                = "8"
        rgbDefined          = 1
        redIntensity            = 0
        greenIntensity          = 175
        blueIntensity           = 0
}

Color       10 {
        name                = "10"
        rgbDefined          = 1
        redIntensity            = 0
        greenIntensity          = 175
        blueIntensity           = 190
}

Color       11 {
        name                = "11"
        rgbDefined          = 1
        redIntensity            = 0
        greenIntensity          = 175
        blueIntensity           = 255
}

Color       13 {
        name                = "13"
        rgbDefined          = 1
        redIntensity            = 0
        greenIntensity          = 255
        blueIntensity           = 100
}

Color       20 {
        name                = "20"
        rgbDefined          = 1
        redIntensity            = 90
        greenIntensity          = 80
        blueIntensity           = 0
}

Color       23 {
        name                = "23"
        rgbDefined          = 1
        redIntensity            = 90
        greenIntensity          = 80
        blueIntensity           = 255
}

Color       25 {
        name                = "25"
        rgbDefined          = 1
        redIntensity            = 90
        greenIntensity          = 175
        blueIntensity           = 100
}

Color       27 {
        name                = "27"
        rgbDefined          = 1
        redIntensity            = 90
        greenIntensity          = 175
        blueIntensity           = 255
}

Color       28 {
        name                = "28"
        rgbDefined          = 1
        redIntensity            = 90
        greenIntensity          = 255
        blueIntensity           = 0
}

Color       31 {
        name                = "31"
        rgbDefined          = 1
        redIntensity            = 90
        greenIntensity          = 255
        blueIntensity           = 255
}

Layer       "GA" {
        layerNumber         = 1
        maskName            = "poly"
        isDefaultLayer      = 1
        visible             = 1
        selectable          = 1
        blink               = 0
        color               = "6"
        lineStyle           = "none"
        pattern             = "solid"
        pitch               = 60
        defaultWidth        = 20
        minWidth            = 20
        minSpacing          = 20
}

Layer       "Act" {
        layerNumber         = 4
        maskName            = "active"
        isDefaultLayer      = 1
        visible             = 1
        selectable          = 1
        blink               = 0
        color               = "11"
        lineStyle           = "none"
        pattern             = "solid"
        pitch               = 0
        defaultWidth        = 100
        minWidth            = 100
        minSpacing          = 50
}

Layer       "M1" {
        layerNumber         = 6
        maskName            = "metal1"
        isDefaultLayer      = 1
        visible             = 1
        selectable          = 1
        blink               = 0
        color               = "20"
        lineStyle           = "none"
        pattern             = "solid"
        pitch               = 150
        defaultWidth        = 100
        minWidth            = 100
        maxWidth            = 10000
        minSpacing          = 50
        minArea             = 100
        minEnclosedArea     = 1000
}

Layer       "CO" {
        layerNumber         = 5
        maskName            = "polyCont"
        isDefaultLayer      = 1
        visible             = 1
        selectable          = 1
        blink               = 0
        color               = "13"
        lineStyle           = "solid"
        pattern             = "rectangleX"
        pitch               = 20
        defaultWidth        = 10
        minWidth            = 10
        minSpacing          = 10
}

Layer		"M2" {
		layerNumber			= 12
		maskName			= "metal2"
		isDefaultLayer		= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "50"
		lineStyle			= "solid"
		pattern			    = "solid"
		pitch               = 120
        defaultWidth        = 20
        minWidth            = 20
        minSpacing          = 20
        maxWidth            = 1000
        minArea             = 20
        minEnclosedArea     = 200
}


Layer       "Via" {
        layerNumber         = 11
        maskName            = "via1"
        isDefaultLayer      = 1
        visible             = 1
        selectable          = 1
        blink               = 0
        color               = "31"
        lineStyle           = "solid"
        pattern             = "rectangleX"
        pitch               = 20
        defaultWidth        = 10
        minWidth            = 10
        minSpacing          = 10
}

ContactCode "VIA12SQ_C" {
        contactCodeNumber       = 1
        cutLayer                = "Via"
        lowerLayer              = "M1"
        upperLayer              = "M2"
        isDefaultContact        = 1
        cutWidth                = 10
        cutHeight               = 10
        upperLayerEncWidth      = 20
        upperLayerEncHeight     = 20
        lowerLayerEncWidth      = 10
        lowerLayerEncHeight     = 10
        minCutSpacing           = 10
        maxNumRowsNonTurning    = 5
        unitMinResistance       = 0.008
        unitNomResistance       = 0.016
        unitMaxResistance       = 0.024
}