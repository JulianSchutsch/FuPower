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

function gsubEntities(table, key, matchPattern, replacePattern)
  if type(value)~="table" then
    return
  end
  if table[key]~=nil then
    table[key] = table[key]:gsub(matchPattern, replacePattern)
  end
  for k, v in pairs(table) do
    gsubEntitites(v)
  end
end