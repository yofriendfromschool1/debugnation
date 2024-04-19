local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")

local ui = {}

function ui:load()

    if CoreGui:FindFirstChild("DeveloperConsole") then
        CoreGui.DeveloperConsole:Destroy()
    end

	-- Instances: 52 | Scripts: 4 | Modules: 0
	local G2L = {};

	-- StarterGui.DeveloperConsole
	G2L["1"] = Instance.new("ScreenGui", CoreGui);
	G2L["1"]["Name"] = [[DeveloperConsole]];
	G2L["1"]["IgnoreGuiInset"] = true
	G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
	G2L["1"]["ResetOnSpawn"] = false;

	-- StarterGui.DeveloperConsole.Holder
	G2L["2"] = Instance.new("Frame", G2L["1"]);
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(27, 31, 40);
	G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["2"]["Size"] = UDim2.new(0, 490, 0, 284);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["2"]["Name"] = [[Holder]];

	-- StarterGui.DeveloperConsole.Holder.UICorner
	G2L["3"] = Instance.new("UICorner", G2L["2"]);
	G2L["3"]["CornerRadius"] = UDim.new(0, 12);

	-- StarterGui.DeveloperConsole.Holder.Topbar
	G2L["4"] = Instance.new("Frame", G2L["2"]);
	G2L["4"]["ZIndex"] = 999999999;
	G2L["4"]["BorderSizePixel"] = 0;
	G2L["4"]["BackgroundColor3"] = Color3.fromRGB(34, 38, 50);
	G2L["4"]["Size"] = UDim2.new(0, 490, 0, 48);
	G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["4"]["Name"] = [[Topbar]];

	-- StarterGui.DeveloperConsole.Holder.Topbar.UICorner
	G2L["5"] = Instance.new("UICorner", G2L["4"]);
	G2L["5"]["CornerRadius"] = UDim.new(0, 12);

	-- StarterGui.DeveloperConsole.Holder.Topbar.cover
	G2L["6"] = Instance.new("Frame", G2L["4"]);
	G2L["6"]["BorderSizePixel"] = 0;
	G2L["6"]["BackgroundColor3"] = Color3.fromRGB(34, 38, 50);
	G2L["6"]["Size"] = UDim2.new(0, 490, 0, 12);
	G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["6"]["Position"] = UDim2.new(0, 0, 0.75, 0);
	G2L["6"]["Name"] = [[cover]];

	-- StarterGui.DeveloperConsole.Holder.Topbar.Close
	G2L["7"] = Instance.new("Frame", G2L["4"]);
	G2L["7"]["ZIndex"] = 2;
	G2L["7"]["BorderSizePixel"] = 0;
	G2L["7"]["BackgroundColor3"] = Color3.fromRGB(39, 43, 57);
	G2L["7"]["Size"] = UDim2.new(0, 48, 0, 48);
	G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["7"]["Position"] = UDim2.new(0.9020408391952515, 0, 0, 0);
	G2L["7"]["Name"] = [[Close]];

	-- StarterGui.DeveloperConsole.Holder.Topbar.Close.UICorner
	G2L["8"] = Instance.new("UICorner", G2L["7"]);
	G2L["8"]["CornerRadius"] = UDim.new(0, 12);

	-- StarterGui.DeveloperConsole.Holder.Topbar.Close.cover-bottom
	G2L["9"] = Instance.new("Frame", G2L["7"]);
	G2L["9"]["ZIndex"] = 2;
	G2L["9"]["BorderSizePixel"] = 0;
	G2L["9"]["BackgroundColor3"] = Color3.fromRGB(39, 43, 57);
	G2L["9"]["Size"] = UDim2.new(0, 48, 0, 12);
	G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["9"]["Position"] = UDim2.new(0, 0, 0.75, 0);
	G2L["9"]["Name"] = [[cover-bottom]];

	-- StarterGui.DeveloperConsole.Holder.Topbar.Close.cover-left
	G2L["a"] = Instance.new("Frame", G2L["7"]);
	G2L["a"]["ZIndex"] = 2;
	G2L["a"]["BorderSizePixel"] = 0;
	G2L["a"]["BackgroundColor3"] = Color3.fromRGB(39, 43, 57);
	G2L["a"]["Size"] = UDim2.new(0, 9, 0, 48);
	G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["a"]["Name"] = [[cover-left]];

	-- StarterGui.DeveloperConsole.Holder.Topbar.Close.CloseX
	G2L["b"] = Instance.new("ImageLabel", G2L["7"]);
	G2L["b"]["ZIndex"] = 2;
	G2L["b"]["BorderSizePixel"] = 0;
	G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["b"]["Image"] = [[rbxassetid://7072725342]];
	G2L["b"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["b"]["Name"] = [[CloseX]];
	G2L["b"]["BackgroundTransparency"] = 1;
	G2L["b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.DeveloperConsole.Holder.Topbar.Close.CloseButton
	G2L["c"] = Instance.new("ImageButton", G2L["7"]);
	G2L["c"]["BorderSizePixel"] = 0;
	G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["c"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["c"]["Name"] = [[CloseButton]];
	G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["c"]["BackgroundTransparency"] = 1;

	-- StarterGui.DeveloperConsole.Holder.Topbar.Close.Function
	G2L["d"] = Instance.new("LocalScript", G2L["7"]);
	G2L["d"]["Name"] = [[Function]];

	-- StarterGui.DeveloperConsole.Holder.Topbar.TitleLabel
	G2L["e"] = Instance.new("TextLabel", G2L["4"]);
	G2L["e"]["ZIndex"] = 999999999;
	G2L["e"]["BorderSizePixel"] = 0;
	G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
	G2L["e"]["TextSize"] = 16;
	G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
	G2L["e"]["Size"] = UDim2.new(0.6163265109062195, 0, 0.9999999403953552, 0);
	G2L["e"]["ClipsDescendants"] = true;
	G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["e"]["Text"] = [[Developer Console]];
	G2L["e"]["Name"] = [[TitleLabel]];
	G2L["e"]["BackgroundTransparency"] = 1;

	-- StarterGui.DeveloperConsole.Holder.Topbar.TitleLabel.UIPadding
	G2L["f"] = Instance.new("UIPadding", G2L["e"]);
	G2L["f"]["PaddingRight"] = UDim.new(0, 5);
	G2L["f"]["PaddingLeft"] = UDim.new(0, 13);

	-- StarterGui.DeveloperConsole.Holder.Topbar.TitleLabel.UITextSizeConstraint
	G2L["10"] = Instance.new("UITextSizeConstraint", G2L["e"]);
	G2L["10"]["MaxTextSize"] = 16;

	-- StarterGui.DeveloperConsole.Holder.Topbar.Clear
	G2L["11"] = Instance.new("Frame", G2L["4"]);
	G2L["11"]["ZIndex"] = 999999999;
	G2L["11"]["BorderSizePixel"] = 0;
	G2L["11"]["BackgroundColor3"] = Color3.fromRGB(39, 43, 57);
	G2L["11"]["Size"] = UDim2.new(0, 48, 0, 48);
	G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["11"]["Position"] = UDim2.new(0.8040816187858582, 0, 0, 0);
	G2L["11"]["Name"] = [[Clear]];

	-- StarterGui.DeveloperConsole.Holder.Topbar.Clear.ClearIcon
	G2L["12"] = Instance.new("ImageLabel", G2L["11"]);
	G2L["12"]["ZIndex"] = 2;
	G2L["12"]["BorderSizePixel"] = 0;
	G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["12"]["Image"] = [[rbxassetid://7072715407]];
	G2L["12"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["12"]["Name"] = [[ClearIcon]];
	G2L["12"]["BackgroundTransparency"] = 1;
	G2L["12"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.DeveloperConsole.Holder.Topbar.Clear.ClearButton
	G2L["13"] = Instance.new("ImageButton", G2L["11"]);
	G2L["13"]["BorderSizePixel"] = 0;
	G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["13"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["13"]["Name"] = [[ClearButton]];
	G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["13"]["BackgroundTransparency"] = 1;

	-- StarterGui.DeveloperConsole.Holder.Topbar.Clear.Function
	G2L["14"] = Instance.new("LocalScript", G2L["11"]);
	G2L["14"]["Name"] = [[Function]];

	-- StarterGui.DeveloperConsole.Holder.Dragify
	G2L["15"] = Instance.new("LocalScript", G2L["2"]);
	G2L["15"]["Name"] = [[Dragify]];

	-- StarterGui.DeveloperConsole.Holder.Output
	G2L["16"] = Instance.new("ScrollingFrame", G2L["2"]);
	G2L["16"]["Active"] = true;
	G2L["16"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
	G2L["16"]["BorderSizePixel"] = 0;
	G2L["16"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
	G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["16"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
	G2L["16"]["BackgroundTransparency"] = 1;
	G2L["16"]["Size"] = UDim2.new(0, 478, 0, 185);
	G2L["16"]["ScrollBarImageColor3"] = Color3.fromRGB(65, 72, 95);
	G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["16"]["Position"] = UDim2.new(0, 0, 0.1690140813589096, 0);
	G2L["16"]["Name"] = [[Output]];

	-- StarterGui.DeveloperConsole.Holder.Output.UIListLayout
	G2L["17"] = Instance.new("UIListLayout", G2L["16"]);
	G2L["17"]["Padding"] = UDim.new(0, 7);
	G2L["17"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.DeveloperConsole.Holder.Output.UIPadding
	G2L["18"] = Instance.new("UIPadding", G2L["16"]);
	G2L["18"]["PaddingTop"] = UDim.new(0, 9);
	G2L["18"]["PaddingRight"] = UDim.new(0, 14);
	G2L["18"]["PaddingBottom"] = UDim.new(0, 9);
	G2L["18"]["PaddingLeft"] = UDim.new(0, 7);

	-- StarterGui.DeveloperConsole.Holder.cmdr
	G2L["19"] = Instance.new("Frame", G2L["2"]);
	G2L["19"]["ZIndex"] = 888888888;
	G2L["19"]["BorderSizePixel"] = 0;
	G2L["19"]["BackgroundColor3"] = Color3.fromRGB(39, 43, 57);
	G2L["19"]["AnchorPoint"] = Vector2.new(0.5, 0);
	G2L["19"]["Size"] = UDim2.new(0, 478, 0, 42);
	G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["19"]["Position"] = UDim2.new(0.5, 0, 0.8199999928474426, 0);
	G2L["19"]["AutomaticSize"] = Enum.AutomaticSize.XY;
	G2L["19"]["Name"] = [[cmdr]];

	-- StarterGui.DeveloperConsole.Holder.cmdr.UICorner
	G2L["1a"] = Instance.new("UICorner", G2L["19"]);
	G2L["1a"]["CornerRadius"] = UDim.new(0, 11);

	-- StarterGui.DeveloperConsole.Holder.cmdr.Timestamp
	G2L["1b"] = Instance.new("Frame", G2L["19"]);
	G2L["1b"]["ZIndex"] = 999999999;
	G2L["1b"]["BorderSizePixel"] = 0;
	G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(39, 43, 57);
	G2L["1b"]["Size"] = UDim2.new(0, 38, 0, 38);
	G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1b"]["Name"] = [[Timestamp]];

	-- StarterGui.DeveloperConsole.Holder.cmdr.Timestamp.UICorner
	G2L["1c"] = Instance.new("UICorner", G2L["1b"]);
	G2L["1c"]["CornerRadius"] = UDim.new(0, 11);

	-- StarterGui.DeveloperConsole.Holder.cmdr.Timestamp.ClearIcon
	G2L["1d"] = Instance.new("ImageLabel", G2L["1b"]);
	G2L["1d"]["ZIndex"] = 2;
	G2L["1d"]["BorderSizePixel"] = 0;
	G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["1d"]["Image"] = [[rbxassetid://7072723389]];
	G2L["1d"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1d"]["Name"] = [[ClearIcon]];
	G2L["1d"]["BackgroundTransparency"] = 1;
	G2L["1d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.DeveloperConsole.Holder.cmdr.cmdr
	G2L["1e"] = Instance.new("Frame", G2L["19"]);
	G2L["1e"]["ZIndex"] = 999999999;
	G2L["1e"]["BorderSizePixel"] = 0;
	G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(39, 43, 57);
	G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1e"]["AutomaticSize"] = Enum.AutomaticSize.XY;
	G2L["1e"]["Name"] = [[cmdr]];

	-- StarterGui.DeveloperConsole.Holder.cmdr.cmdr.UICorner
	G2L["1f"] = Instance.new("UICorner", G2L["1e"]);
	G2L["1f"]["CornerRadius"] = UDim.new(0, 11);

	-- StarterGui.DeveloperConsole.Holder.cmdr.cmdr.UISizeConstraint
	G2L["20"] = Instance.new("UISizeConstraint", G2L["1e"]);
	G2L["20"]["MaxSize"] = Vector2.new(390, 9999);

	-- StarterGui.DeveloperConsole.Holder.cmdr.cmdr.cmdbox
	G2L["21"] = Instance.new("TextBox", G2L["1e"]);
	G2L["21"]["CursorPosition"] = -1;
	G2L["21"]["PlaceholderColor3"] = Color3.fromRGB(144, 144, 144);
	G2L["21"]["ZIndex"] = 999999999;
	G2L["21"]["BorderSizePixel"] = 0;
	G2L["21"]["TextSize"] = 16;
	G2L["21"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["21"]["TextWrapped"] = true;
	G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["21"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
	G2L["21"]["BackgroundTransparency"] = 1;
	G2L["21"]["PlaceholderText"] = [[Run a command]];
	G2L["21"]["Size"] = UDim2.new(0, 433, 0, 42);
	G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["21"]["Text"] = [[]];
	G2L["21"]["Name"] = [[cmdbox]];

	-- StarterGui.DeveloperConsole.Holder.cmdr.cmdr.cmdbox.UITextSizeConstraint
	G2L["22"] = Instance.new("UITextSizeConstraint", G2L["21"]);
	G2L["22"]["MaxTextSize"] = 16;

	-- StarterGui.DeveloperConsole.Holder.cmdr.cmdr.cmdbox.UIPadding
	G2L["23"] = Instance.new("UIPadding", G2L["21"]);
	G2L["23"]["PaddingTop"] = UDim.new(0, 13);
	G2L["23"]["PaddingRight"] = UDim.new(0, 13);
	G2L["23"]["PaddingBottom"] = UDim.new(0, 13);
	G2L["23"]["PaddingLeft"] = UDim.new(0, 13);

	-- StarterGui.DeveloperConsole.Holder.cmdr.UIListLayout
	G2L["24"] = Instance.new("UIListLayout", G2L["19"]);
	G2L["24"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	G2L["24"]["FillDirection"] = Enum.FillDirection.Horizontal;
	G2L["24"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.DeveloperConsole.Function
	G2L["25"] = Instance.new("LocalScript", G2L["1"]);
	G2L["25"]["Name"] = [[Function]];

	-- StarterGui.DeveloperConsole.Function.Blank
	G2L["26"] = Instance.new("Frame", G2L["25"]);
	G2L["26"]["BorderSizePixel"] = 0;
	G2L["26"]["BackgroundColor3"] = Color3.fromRGB(39, 43, 57);
	G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["26"]["AutomaticSize"] = Enum.AutomaticSize.XY;
	G2L["26"]["Name"] = [[Blank]];

	-- StarterGui.DeveloperConsole.Function.Blank.UICorner
	G2L["27"] = Instance.new("UICorner", G2L["26"]);
	G2L["27"]["CornerRadius"] = UDim.new(0, 11);

	-- StarterGui.DeveloperConsole.Function.Blank.Timestamp
	G2L["28"] = Instance.new("Frame", G2L["26"]);
	G2L["28"]["BorderSizePixel"] = 0;
	G2L["28"]["BackgroundColor3"] = Color3.fromRGB(39, 43, 57);
	G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["28"]["AutomaticSize"] = Enum.AutomaticSize.XY;
	G2L["28"]["Name"] = [[Timestamp]];

	-- StarterGui.DeveloperConsole.Function.Blank.Timestamp.UICorner
	G2L["29"] = Instance.new("UICorner", G2L["28"]);
	G2L["29"]["CornerRadius"] = UDim.new(0, 11);

	-- StarterGui.DeveloperConsole.Function.Blank.Timestamp.timelabel
	G2L["2a"] = Instance.new("TextLabel", G2L["28"]);
	G2L["2a"]["TextWrapped"] = true;
	G2L["2a"]["ZIndex"] = 999999999;
	G2L["2a"]["BorderSizePixel"] = 0;
	G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["2a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	G2L["2a"]["TextSize"] = 12;
	G2L["2a"]["TextColor3"] = Color3.fromRGB(186, 186, 186);
	G2L["2a"]["AutomaticSize"] = Enum.AutomaticSize.XY;
	G2L["2a"]["ClipsDescendants"] = true;
	G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2a"]["Text"] = [[10:20:40]];
	G2L["2a"]["Name"] = [[timelabel]];
	G2L["2a"]["BackgroundTransparency"] = 1;

	-- StarterGui.DeveloperConsole.Function.Blank.Timestamp.timelabel.UIPadding
	G2L["2b"] = Instance.new("UIPadding", G2L["2a"]);
	G2L["2b"]["PaddingTop"] = UDim.new(0, 13);
	G2L["2b"]["PaddingBottom"] = UDim.new(0, 13);
	G2L["2b"]["PaddingLeft"] = UDim.new(0, 13);

	-- StarterGui.DeveloperConsole.Function.Blank.Timestamp.timelabel.UITextSizeConstraint
	G2L["2c"] = Instance.new("UITextSizeConstraint", G2L["2a"]);
	G2L["2c"]["MaxTextSize"] = 16;

	-- StarterGui.DeveloperConsole.Function.Blank.Message
	G2L["2d"] = Instance.new("Frame", G2L["26"]);
	G2L["2d"]["BorderSizePixel"] = 0;
	G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(39, 43, 57);
	G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2d"]["AutomaticSize"] = Enum.AutomaticSize.XY;
	G2L["2d"]["Name"] = [[Message]];

	-- StarterGui.DeveloperConsole.Function.Blank.Message.UICorner
	G2L["2e"] = Instance.new("UICorner", G2L["2d"]);
	G2L["2e"]["CornerRadius"] = UDim.new(0, 11);

	-- StarterGui.DeveloperConsole.Function.Blank.Message.UISizeConstraint
	G2L["2f"] = Instance.new("UISizeConstraint", G2L["2d"]);
	G2L["2f"]["MaxSize"] = Vector2.new(410, 9999);

	-- StarterGui.DeveloperConsole.Function.Blank.Message.MessageLabel
	G2L["30"] = Instance.new("TextBox", G2L["2d"]);
	G2L["30"]["CursorPosition"] = -1;
	G2L["30"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["30"]["ZIndex"] = 999999999;
	G2L["30"]["BorderSizePixel"] = 0;
	G2L["30"]["TextEditable"] = false;
	G2L["30"]["TextSize"] = 16;
    G2L["30"]["TextEditable"] = false;
	G2L["30"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["30"]["TextWrapped"] = true;
	G2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["30"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
	G2L["30"]["BackgroundTransparency"] = 1;
	G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["30"]["Text"] = [[Adnvanced Developer Console]];
	G2L["30"]["AutomaticSize"] = Enum.AutomaticSize.XY;
	G2L["30"]["Name"] = [[MessageLabel]];
	G2L["30"]["ClearTextOnFocus"] = false;

	-- StarterGui.DeveloperConsole.Function.Blank.Message.MessageLabel.UITextSizeConstraint
	G2L["31"] = Instance.new("UITextSizeConstraint", G2L["30"]);
	G2L["31"]["MaxTextSize"] = 16;

	-- StarterGui.DeveloperConsole.Function.Blank.Message.MessageLabel.UIPadding
	G2L["32"] = Instance.new("UIPadding", G2L["30"]);
	G2L["32"]["PaddingTop"] = UDim.new(0, 13);
	G2L["32"]["PaddingRight"] = UDim.new(0, 13);
	G2L["32"]["PaddingBottom"] = UDim.new(0, 13);
	G2L["32"]["PaddingLeft"] = UDim.new(0, 13);

	-- StarterGui.DeveloperConsole.Function.Blank.Message.MessageLabe
	G2L["33"] = Instance.new("TextLabel", G2L["2d"]);
	G2L["33"]["TextWrapped"] = true;
	G2L["33"]["ZIndex"] = 999999999;
	G2L["33"]["BorderSizePixel"] = 0;
	G2L["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["33"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
	G2L["33"]["TextSize"] = 16;
	G2L["33"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["33"]["AutomaticSize"] = Enum.AutomaticSize.XY;
	G2L["33"]["ClipsDescendants"] = true;
	G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["33"]["Text"] = [[Adnvanced Developer Console]];
	G2L["33"]["Name"] = [[MessageLabe]];
	G2L["33"]["Visible"] = false;
	G2L["33"]["BackgroundTransparency"] = 1;

	-- StarterGui.DeveloperConsole.Function.Blank.UIListLayout
	G2L["34"] = Instance.new("UIListLayout", G2L["26"]);
	G2L["34"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	G2L["34"]["FillDirection"] = Enum.FillDirection.Horizontal;
	G2L["34"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	G2L["34"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.DeveloperConsole.Holder.Topbar.Close.Function
	local function C_d()
		local script = G2L["d"];
		local function light()
			local color = Color3.fromRGB(59, 67, 88)
			script.Parent.BackgroundColor3 = color
			script.Parent["cover-left"].BackgroundColor3 = color
			script.Parent["cover-bottom"].BackgroundColor3 = color
		end
		local function dark()
			local color = Color3.fromRGB(38, 42, 56)
			script.Parent.BackgroundColor3 = color
			script.Parent["cover-left"].BackgroundColor3 = color
			script.Parent["cover-bottom"].BackgroundColor3 = color
		end
		script.Parent.MouseEnter:Connect(light)
		script.Parent.MouseLeave:Connect(dark)
		script.Parent.CloseButton.MouseButton1Down:Connect(light)
		script.Parent.CloseButton.MouseButton1Up:Connect(dark)
		script.Parent.CloseButton.MouseButton1Click:Connect(function()
			light()
			script:FindFirstAncestor("DeveloperConsole"):Destroy()
		end)
	end;
	task.spawn(C_d);
	-- StarterGui.DeveloperConsole.Holder.Topbar.Clear.Function
	local function C_14()
		local script = G2L["14"];
		local function light()
			local color = Color3.fromRGB(59, 67, 88)
			script.Parent.BackgroundColor3 = color
		end
		local function dark()
			local color = Color3.fromRGB(38, 42, 56)
			script.Parent.BackgroundColor3 = color
		end
		script.Parent.MouseEnter:Connect(light)
		script.Parent.MouseLeave:Connect(dark)
		script.Parent.ClearButton.MouseButton1Down:Connect(light)
		script.Parent.ClearButton.MouseButton1Up:Connect(dark)
	end;
	task.spawn(C_14);
	-- StarterGui.DeveloperConsole.Holder.Dragify
	local function C_15()
		local script = G2L["15"];
		local UserInputService = game:GetService("UserInputService")

		local gui = script.Parent
		local ui = gui.Topbar

		local dragging
		local dragInput
		local dragStart
		local startPos

		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		ui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		ui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end;
	task.spawn(C_15);
	-- StarterGui.DeveloperConsole.Function
	local function C_25()
		local script = G2L["25"];
		local latest = {
			name = "",
			output = "",
			count = 1 -- Initialize count to 1 for the first occurrence
		}

		local colors = {
			[Enum.MessageType.MessageOutput] = Color3.new(1, 1, 1), -- White
			[Enum.MessageType.MessageInfo] = Color3.fromRGB(0, 162, 255), -- Bright blue
			[Enum.MessageType.MessageWarning] = Color3.fromRGB(255, 255, 0), -- Bright yellow
			[Enum.MessageType.MessageError] = Color3.fromRGB(255, 0, 0) -- Bright red
		}

		local function updateOutput(output, messageType)
			if output == latest.output then
				latest.count = latest.count + 1 -- Increment count for repeated messages
				local existingMessage = script.Parent.Holder.Output:FindFirstChild(tostring(latest.name))
				if existingMessage then
					existingMessage.Message.MessageLabel.Text = output .. " (x" .. latest.count .. ")"
				end
			else
				latest.count = 1 -- Reset count for new message
				local newLine = script.Blank:Clone()
				local messageColor = colors[messageType] or Color3.new(1, 1, 1) -- Default to white if messageType not found
				newLine.Message.MessageLabel.TextColor3 = messageColor
				newLine.Message.MessageLabel.Text = output
				newLine.Name = tostring(tick())
				newLine.Timestamp.timelabel.Text = tostring(os.date("%H:%M:%S", os.time()))
				newLine.Parent = script.Parent.Holder.Output
				latest.name = newLine.Name
				latest.output = output
			end
		end

		game:GetService("LogService").MessageOut:Connect(function(output, messageType)
			updateOutput(output, messageType)
		end)

		local function clear()
			for _, child in ipairs(script.Parent.Holder.Output:GetChildren()) do
				if child:IsA("Frame") then
					child:Destroy()
				end
			end
		end

		script.Parent.Holder.cmdr.cmdr.cmdbox.FocusLost:Connect(function()
			if game:GetService("RunService"):IsStudio() then
				print("executecode function not supported function in studio.")
			else
				local code = script.Parent.Holder.cmdr.cmdr.cmdbox.Text
                if script.Parent.Holder.cmdr.cmdr.cmdbox.Text == "" or script.Parent.Holder.cmdr.cmdr.cmdbox.Text == " " then else
                    print(">", script.Parent.Holder.cmdr.cmdr.cmdbox.Text)
				    executecode(code)
                end
			end
            script.Parent.Holder.cmdr.cmdr.cmdbox.Text = ""
		end)

		script.Parent.Holder.Topbar.Clear.ClearButton.MouseButton1Click:Connect(clear)

	end;
	task.spawn(C_25);

	return G2L["1"];
end

return ui
