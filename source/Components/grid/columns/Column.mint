component Column {
    connect StylePadreGrid exposing {theme}
    property children : Array(Html) = []
    property col : Number = 0
    property textAlign : String = ""

    property background : String = ""
    
    style base {
        display: block;
        flex-basis: 0;
        flex-grow: 1;
        flex-shrink: 1;
        padding: 0.75rem;
        background:background;
        width: colWith.width;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;

        -webkit-box-flex: 0;
        -ms-flex: 0 0 auto;
            flex: 0 0 auto;
        float: left;
        position: relative;
        
        text-align: textAlign;
    }

      get colWith : StylePadreGrid.Grid.Column {
        case(col){
            1 => theme.grids.spCol1
            2 => theme.grids.spCol2
            3 => theme.grids.spCol3
            4 => theme.grids.spCol4
            5 => theme.grids.spCol5
            6 => theme.grids.spCol6
            7 => theme.grids.spCol7
            8 => theme.grids.spCol8
            9 => theme.grids.spCol9
            10 => theme.grids.spCol10
            11 => theme.grids.spCol11
            12 => theme.grids.spCol12
            13 => theme.grids.spCol13
            14 => theme.grids.spCol14
            15 => theme.grids.spCol15
            16 => theme.grids.spCol16
            17 => theme.grids.spCol17
            18 => theme.grids.spCol18
            19 => theme.grids.spCol19
            20 => theme.grids.spCol20
            21 => theme.grids.spCol21
            22 => theme.grids.spCol22
            23 => theme.grids.spCol23
            24 => theme.grids.spCol24
            =>
                {
                    width = "100%"
                }
        }
    }

    fun render : Html {
        <div::base background={background} textAlign={textAlign}>
            <{children}>
        </div>
    }
}