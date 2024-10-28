SELECT *
FROM players
JOIN countries
ON players.country_id = countries.id
LEFT JOIN teams
ON players.previous_team_id = teams.id;

/*3つのテーブルの結合（players、countries、teams）
playersテーブルに所属する選手情報と、選手の国、および前年に所属していたチームの情報を取得しています。
JOIN句：結合条件はplayersテーブルのcountry_idと、countriesテーブルのidが一致すること。
LEFT JOIN句：結合条件はplayersテーブルのprevious_team_idと、teamsテーブルのidが一致すること。
*/