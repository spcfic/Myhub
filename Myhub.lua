local HttpService = game:GetService("HttpService")

local url = "https://discord.com/api/webhooks/1404407923827806299/g2ypHxkHxG2cFWuGLhQQZErtHoWYO8ujJsxCDxxTlZqb6oKFCzcvRH-TPYDSC4SyExtJ"

local data = {
    ["content"] = "✅ Match Logger is working from GitHub!"
}

local jsonData = HttpService:JSONEncode(data)

HttpService:PostAsync(url, jsonData, Enum.HttpContentType.ApplicationJson)
