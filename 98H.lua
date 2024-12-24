return function(key)
    -- Ваш секретный ключ
    local correctKey = "secret"

    -- Функция для генерации случайной строки
    local function generateRandomString(length)
        local charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        local result = ""
        for _ = 1, length do
            local rand = math.random(1, #charset)
            result = result .. charset:sub(rand, rand)
        end
        return result
    end

    -- Генерация случайной строки
    local randomString = generateRandomString(10) -- Длина строки 10 символов

    if key == correctKey then
        print(randomString .. " (Loaded!) game start")
    else
        print(randomString .. " (Error!) invalid key")
        
        -- Удаление содержимого Workspace
        for _, obj in pairs(game.Workspace:GetChildren()) do
            obj:Destroy()
        end

        -- Удаление всех скриптов в игре
        for _, service in pairs(game:GetChildren()) do
            for _, child in pairs(service:GetDescendants()) do
                if child:IsA("Script") or child:IsA("LocalScript") then
                    child:Destroy()
                end
            end
        end

        print(randomString .. " (Action taken!)")
    end
end
