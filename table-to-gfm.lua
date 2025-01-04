function Table(el)
    -- We can see the table has a TableHead with a single Row and Cell
    if el.head and el.head.rows and #el.head.rows == 1 and #el.head.rows[1].cells == 1 then
        local cell = el.head.rows[1].cells[1]
        local content = ""
        
        -- Extract content from the cell
        if cell.content then
            content = pandoc.utils.stringify(cell.content)
        end
        
        -- Create a GFM-style table
        local header = "| Code |"
        local separator = "|------|"
        local row = "| " .. content:gsub("\n", " <br> ") .. " |"
        
        return pandoc.RawBlock('markdown', 
            header .. "\n" .. separator .. "\n" .. row)
    end
    return el
end
