SELECT *
FROM players
JOIN countries
ON players.country_id = countries.id
WHERE countries.name = "日本"
AND height >= 180;

/* JOIN句:JOIN（もしくはINNER JOIN）を使用して、playersテーブルとcountriesテーブルを結合。
結合条件は、playersテーブルのcountry_idとcountriesテーブルのidが一致することです。このため、各選手の国情報が取得されます。

WHERE句：countries.name = "日本"：countriesテーブルのname列が「日本」の国を持つ選手のみを対象とする。
AND height >= 180：playersテーブルのheight列が180以上の選手のみを対象にする。
この条件で、身長が180cm以上の日本の選手のみが結果に含まれることになります。
*/