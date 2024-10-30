SELECT countries.name AS "国名", AVG(goals) AS "平均得点"
FROM players
JOIN countries
ON players.country_id = countries.id
GROUP BY countries.name;

/*SELECT句：countries.name AS "国名"：countriesテーブルのname列を選択し、日本語の列名「国名」として表示します。
AVG(goals) AS "平均得点"：playersテーブルのgoals列にある得点の平均を計算し、「平均得点」として表示します。
JOIN句：JOIN（またはINNER JOIN）を使用して、playersテーブルとcountriesテーブルを結合しています。
結合条件は、playersテーブルのcountry_id列とcountriesテーブルのid列が一致することです。
これにより、各選手がどの国に所属するかが関連付けられます。
GROUP BY句：GROUP BYを使って、countries.name（国名）でグループ化しています。
これにより、各国ごとに選手のデータがグループ分けされ、各国の平均得点が計算されます。
*/