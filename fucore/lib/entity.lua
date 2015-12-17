-- Recursive clone function capable of cloning tables and elementary types.
function clone(source)
  if type(source)~="table" then
    return source
  end
  local result = {}
  for key, value in pairs(source) do
    result[key] = clone(value)
  end
  return setmetatable(result, getmetatable(source))
end

-- Search recursivly in the table for all entries with type==typFilter
function listEntities(table, typFilter)
  if type(table)~="table" then
    return
  end
  if table.type~=nil and table.name~=nil then
    if typFilter==nil or table["type"]==typFilter then
      print("type=", table.type)
      print("name=", table.name)
    end
  end
  for key, subtable in pairs(table) do
    listEntities(subtable, typFilter)
  end
end

-- Translate any table or type to string
function stringify(value, depth)
  if depth == nil then
    depth = 0
  end
  if type(value)~="table" then
    return tostring(value)
  end
  local indent = depth+1
  local indentStr = ""
  for i=1,depth,1 do
    indentStr = indentStr .. "  "
  end
  local result = "{\n"
  for key, v in pairs(value) do
    result = result .. indentStr .. "  " .. key .. "=" .. stringify(v, indent) .. ",\n"
  end
  return result .. indentStr .. "}"
end

-- Search recursivly for an entry with type=typ and name=name.
function findEntry(table, typ, name)
  for key, subtable in pairs(table) do
    if type(subtable)=="table" then
      if subtable["type"]==typ and subtable["name"]==name then
        return subtable
      end
      local result = findEntry(subtable, typ, name)
      if result~=nil then
        return result
      end
    end
  end
  return nil
end

function gsubEntities(table, key, matchPattern, replacePattern, ignoreKeys)
  if type(table)~="table" then
    return
  end
  if table[key]~=nil then
    table[key] = table[key]:gsub(matchPattern, replacePattern)
  end
  for k, v in pairs(table) do
    if ignoreKeys==nil or ignoreKeys[k]==nil then
      gsubEntities(v, key, matchPattern, replacePattern, ignoreKeys)
    end
  end
end

function gsubFilter(table, filter, matchPattern, replacePattern, ignoreKeys)
  if type(table)~="table" then
    return
  end
  for k, v in pairs(table) do
    if ignoreKeys==nil or ignoreKeys[k]==nil then
      if type(v)=="string" then
        if string.find(v, filter)~=nil then
          table[k] = table[k]:gsub(matchPattern, replacePattern)
        end
      end
      gsubFilter(v, filter, matchPattern, replacePattern, ignoreKeys)
    end
  end
end

-- Recursive replace function
--   table : Table to operate on
--   filter : The value of an entry must match the filter to apply pattern replacement
--   matchPattern: Select pattern, what piece of a table's value should be replaced
--   replacePattern: Text which should replace the previously selected part of a table's value
--   ignoreKeys: Set of table keys to ignore, neither match by filter, nor recurse into them
-- See Lua's gsub documentation for details
function gsubMatch(table, filter, matchPattern, replacePattern, ignoreKeys)
  -- Simplfied version of gmatch
  local function anyMatch(v, filter)
    for k,x in string.gmatch(v, filter) do
      return true
    end
    return false
  end
  if type(table)~="table" then
    return
  end
  for k, v in pairs(table) do
    if ignoreKeys==nil or ignoreKeys[k]==nil then
      if type(v)=="string" and anyMatch(v, filter) then
        table[k] = table[k]:gsub(matchPattern, replacePattern)
      end
      gsubMatch(v, filter, matchPattern, replacePattern, ignoreKeys)
    end
  end
end  