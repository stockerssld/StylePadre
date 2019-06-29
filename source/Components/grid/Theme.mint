record StylePadreGrid.Grid.Row {
    webkitboxpack : String,
    msflexpack : String,
    justiftcenter : String
}

record StylePadreGrid.Grid.Rows {
    flexStart : StylePadreGrid.Grid.Row,
    flexCenter : StylePadreGrid.Grid.Row,
    flexEnd : StylePadreGrid.Grid.Row,
    spacebetween : StylePadreGrid.Grid.Row,
    spacearound : StylePadreGrid.Grid.Row,
    top : StylePadreGrid.Grid.Row,
    middle : StylePadreGrid.Grid.Row,
    bottom : StylePadreGrid.Grid.Row,

}
record StylePadreGrid.Grid.Column {
    width : String
}

record StylePadreGrid.Grid.Columns{
    spCol1 : StylePadreGrid.Grid.Column,
    spCol2 : StylePadreGrid.Grid.Column,
    spCol3 : StylePadreGrid.Grid.Column,
    spCol4 : StylePadreGrid.Grid.Column,
    spCol5 : StylePadreGrid.Grid.Column,
    spCol6 : StylePadreGrid.Grid.Column,
    spCol7 : StylePadreGrid.Grid.Column,
    spCol8 : StylePadreGrid.Grid.Column,
    spCol9 : StylePadreGrid.Grid.Column,
    spCol10 : StylePadreGrid.Grid.Column,
    spCol11 : StylePadreGrid.Grid.Column,
    spCol12 : StylePadreGrid.Grid.Column,
    spCol13 : StylePadreGrid.Grid.Column,
    spCol14 : StylePadreGrid.Grid.Column,
    spCol15 : StylePadreGrid.Grid.Column,
    spCol16 : StylePadreGrid.Grid.Column,
    spCol17 : StylePadreGrid.Grid.Column,
    spCol18 : StylePadreGrid.Grid.Column,
    spCol19 : StylePadreGrid.Grid.Column,
    spCol20 : StylePadreGrid.Grid.Column,
    spCol21 : StylePadreGrid.Grid.Column,
    spCol22 : StylePadreGrid.Grid.Column,
    spCol23 : StylePadreGrid.Grid.Column,
    spCol24 : StylePadreGrid.Grid.Column
}

record StylePadreGrid.Grid{
    grids : StylePadreGrid.Grid.Columns,
    rows : StylePadreGrid.Grid.Rows
}

store StylePadreGrid {
    state theme : StylePadreGrid.Grid = {
        
        grids = 
            {
                spCol1 = 
                {
                    width = "4.1666667%"
                },spCol2 = 
                {
                    width = "8.3333%"
                },spCol3 = 
                {
                    width = "12.5%"
                },spCol4 = 
                {
                    width = "16.6666667%"
                },spCol5 = 
                {
                    width = "20.833333%"
                },spCol6 = 
                {
                    width = "25%"
                },spCol7 = 
                {
                    width = "29.16666667%"
                },spCol8 = 
                {
                    width = "33.3333333%"
                },spCol9 = 
                {
                    width = "37.5%"
                },spCol10 = 
                {
                    width = "41.66666667%"
                },spCol11 = 
                {
                    width = "45.83333%"
                },spCol12 = 
                {
                    width = "50%"
                },spCol12 = 
                {
                    width = "50%"
                },spCol13 = 
                {
                    width = "54.16666667%"
                },spCol14 = 
                {
                    width = "58.33333333%"
                },spCol15 = 
                {
                    width = "62.5%"
                },spCol16 = 
                {
                    width = "66.666666667%"
                },spCol17 = 
                {
                    width = "70.833333333%"
                },spCol18 = 
                {
                    width = "75%"
                },spCol19 = 
                {
                    width = "79.1666666667%"
                },spCol20 = 
                {
                    width = "83.3333333333%"
                },spCol21 = 
                {
                    width = "87.5%"
                },spCol22 = 
                {
                    width = "91.66666666667%"
                },spCol23 = 
                {
                    width = "95.83333333333%"
                },spCol24 = 
                {
                    width = "100%"
                },
            },
            rows = {
                flexStart = 
                {
                    webkitboxpack = "start",
                    msflexpack = "start",
                    justiftcenter = "flex-start",
                },
                flexCenter = 
                {
                    webkitboxpack = "center",
                    msflexpack = "center",
                    justiftcenter = "center",
                },
                flexEnd = 
                {
                    webkitboxpack = "end",
                    msflexpack = "end",
                    justiftcenter = "flex-end",
                },
                spacebetween = 
                {
                    webkitboxpack = "justift",
                    msflexpack = "justift",
                    justiftcenter = "space-between",
                },
                spacearound = 
                {
                    webkitboxpack = "distribute",
                    msflexpack = "",
                    justiftcenter = "space-around",
                },
                top = 
                {
                    webkitboxpack = "start",
                    msflexpack = "start",
                    justiftcenter = "flex-start",
                },
                middle = 
                {
                    webkitboxpack = "center",
                    msflexpack = "center",
                    justiftcenter = "v",
                },
                bottom = 
                {
                    webkitboxpack = "end",
                    msflexpack = "end",
                    justiftcenter = "flex-end",

                }
            }
     
    }
    
    fun setColor (color : String) : Promise(Never, Void) {
        next { theme = updatedTheme }
    } where {
        grids =
        theme.grids

        spCol12 =
        grids.spCol12

        updatedinfo =
        { spCol12 | width = color }

        updatedColors =
        { grids | spCol12 = updatedinfo }

        updatedTheme =
        { theme | grids = updatedColors }
    }

 
}