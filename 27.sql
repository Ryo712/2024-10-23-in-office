SELECT players.name AS "選手名", teams.name AS "前年所属していたチーム"
FROM players
LEFT JOIN teams
ON players.previous_team_id = teams.id;

/*LEFT JOINにより、playersテーブルのすべての行と、teamsテーブルの関連する行を結合します。*/

/*このクエリは、選手名とその前年所属していたチーム名を一覧で表示します。
もし前年所属チームが存在しない場合（例えば、新人選手など）は、チーム名の列にNULLが表示されます*/