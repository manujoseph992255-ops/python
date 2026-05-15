$file = 'c:\Users\kj anand\Downloads\Quiz DD\robot_maze.html'
$content = Get-Content $file -Raw

$badLine = '        .game-label {\n            font-size: 1.5rem;\n            font-weight: 800;\n            color: #1e40af;\n            margin-bottom: 20px;\n            display: flex;\n            align-items: center;\n            gap: 10px;\n            width: 100%;\n            padding-bottom: 12px;\n            border-bottom: 3px solid #dbeafe;\n        }\n        .game-label span { font-size: 1.8rem; }\n\n        @media (max-width: 1000px) {'

$goodBlock = @'
        .game-label {
            font-size: 1.5rem;
            font-weight: 800;
            color: #1e40af;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            gap: 10px;
            width: 100%;
            padding-bottom: 12px;
            border-bottom: 3px solid #dbeafe;
        }
        .game-label span { font-size: 1.8rem; }

        @media (max-width: 1000px) {
'@

$content = $content.Replace($badLine, $goodBlock)
[System.IO.File]::WriteAllText($file, $content, [System.Text.Encoding]::UTF8)
Write-Host "Done!"
