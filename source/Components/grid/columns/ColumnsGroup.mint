component Columns.Group {
    connect StylePadreGrid exposing {theme}
    property children :Array(Html) = []
    property justify : String = ""

    style base {
        position: relative;
        height: auto;
        margin-right: 0;
        margin-left: 0;
        display: block;
        -webkit-box-sizing: border-box;
                box-sizing: border-box;
        
        justify-content: {justifyGrid.justiftcenter};
        -webkit-box-pack: {justifyGrid.webkitboxpack};
            -ms-flex-pack: {justifyGrid.msflexpack};
   
        &::after {
            display: table;
            content: '';
            clear: both;
        }
       /* 
        margin-left: -0.75rem;
        margin-right: -0.75rem;
        margin-top: -0.75rem;
        float: none;
        
        &:last-child {
            margin-bottom:-0.75rem;
        }
        &:not(:last-child) {
            margin-bottom: calc(1.5rem - 0.75rem);
        }

        @media screen and (min-width: 769px), print {
                display:flex;
        }
        @media screen and (min-width: 1024px){
            display:flex;
        }*/
    }

    get justifyGrid : StylePadreGrid.Grid.Row {
        case(justify){
            
            "flex-start"=> theme.rows.flexStart
            "flex-center"=> theme.rows.flexCenter
            "flexEnd"=> theme.rows.flexEnd
            "space-between" => theme.rows.spacebetween
            "space-around" => theme.rows.spacearound
            "top" => theme.rows.top
            "middle" => theme.rows.middle
            "bottom" => theme.rows.bottom
            => 
                {
                    webkitboxpack = "",
                    msflexpack = "",
                    justiftcenter = ""
                }
        }
    }
    fun render : Html {
        <div::base
        justify={justify}
        >
            <{children}>
        </div>        
    }
}