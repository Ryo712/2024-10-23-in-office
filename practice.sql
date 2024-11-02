SELECT *
FROM players
JOIN countries
ON players.country_id = countries.id
LEFT JOIN teams
ON players.previous_team_id = teams.id;

/* 
JOIN句：JOIN（またはINNER JOIN）を使用して、playersテーブルとcountriesテーブルを結合している。
    結合条件は、playersテーブルのcountry_idとcountriesテーブルのidが一致すること。
    この結合によって、各選手の国情報が追加され、両方のテーブルに一致するデータのみが取得される。
LEFT JOIN句：結合条件は、playersテーブルのprevious_team_idとteamsテーブルのidが一致すること。
    LEFT JOINなので、選手が前年に所属していたチームがない場合（previous_team_idがNULLの場合）でも、
    playersテーブルの行は結果に含まれ、teamsテーブルのカラムにはNULLが表示される。

*/