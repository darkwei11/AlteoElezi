ALTER TABLE POST
  ALTER COLUMN create_date SET DEFAULT CURRENT_TIMESTAMP;

-- Users
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (1, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'magicjohnson@mail.com', 'Magic Johnshon', 'Earvin', 'Johnson',
   1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (2, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'peterguber@gmail.com', 'Peter Guber', 'Peter', 'Guber', 1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES (3, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'jerrywest@mail.com', 'Jerry West', 'Jerry', 'West', 1);

-- Roles
INSERT INTO ROLE (role_id, role)
VALUES (1, 'ROLE_ADMIN');
INSERT INTO ROLE (role_id, role)
VALUES (2, 'ROLE_USER');

-- User Roles
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 1);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (2, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (3, 2);

-- Posts
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (1, 1, '1995-96 Chicago Bulls',
        'The beginning of Michael Jordan s second run of three consecutive championships with the Bulls was when things truly turned unfair for the rest of the league. The franchise picked up Dennis Rodman in the offseason, teaming him with Jordan and Scottie Pippen for maybe the best combination of offense and defense the league has ever seen.
The team s 41-3 start is still the best ever, and the 1995-96 Bulls still have the best combined regular season and playoff record ever at 87-13. This is the only team ever to win at least 70 games in the regular season and finish as NBA champions. This is also the most recent team to have three players on the NBA All-Defensive first team.
That, combined with their +12.2 average point differential per game, and that they were led by the most feared player in basketball history make them the best team to ever take the floor in the NBA.',
        --         CURRENT_TIMESTAMP());
        {ts '2019-08-19 11:10:13.247'});
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (2, 1, '2016-17 Golden State Warriors',
        'As you ve seen from this list, the Steph Curry-era Warriors were already immensely talented, but the addition of Kevin Durant in 2016 made them virtually unbeatable. The 2016-17 Warriors broke a ton of NBA records on their way to a 16-1 playoff record, which is the best playoff winning percentage in history.
This team clinched its playoff berth on Feb. 25, the earliest any team has ever done it, which is remarkable when you consider how good the Western Conference was. This team was truly scary and could end up having at least four Hall of Famers on its roster. In 2018, ESPN called them the best NBA team in history — but we ll say one squad could beat them.',
        --         CURRENT_TIMESTAMP());
        {ts '2019-08-18 15:23:14.347'});
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (3, 1, '1971-72 Los Angeles Lakers',
        'A complete team from top to bottom, the 1971-72 Lakers relied on future Hall of Famers Wilt Chamberlain, Jerry West, Elgin Baylor and Gail Goodrich to crush the rest of the league en route to winning the franchise s first title in Los Angeles. Several records this team broke still stand nearly 50 years later, including the best average point differential per game ever at +12.3 and a 33-game winning streak during the regular season. This squad s 69-13 record was the best in league history for 24 seasons. They were so good they crushed a New York Knicks team loaded with Hall of Famers 4-1 in the NBA Finals.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (4, 1, '1985-86 Boston Celtics',
        'The Boston Celtics have been blessed with many great teams over the years, but the 1985-86 squad might have been the franchises best ever. The frontcourt scoring combination of Larry Bird, Robert Parish and Kevin McHale is one of the toughest ever, and the backcourt included the legendary Bill Walton, who was still dominant at the end of his career.
After losing to the Lakers in the 1985 NBA Finals, this team had a fire under it, leading to a then-record 82 combined wins in the regular season and playoffs. This squad had five future Hall of Famers on its roster, which helped it to a 40-1 record at home, which is still tied for the best mark ever.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (5, 1, '1966-67 Philadelphia 76ers',
        'A team that was basically unstoppable at the time, the 1966-67 76ers had the best winning percentage in NBA history at the time. This teams 46-4 start is still tied as the best mark through 50 games ever, and, at a time when scoring wasnt as ridiculous as it is today, they averaged 125.22 points per game, which is still the third-highest ever. This lineup boasted four Hall of Famers, including Wilt Chamberlain Larry Costello, Hal Greer and Chet Walker. Chamberlain was the leagues MVP, averaging a double-double of 24 points and 24 rebounds per game all season.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (6, 1, '1996-97 Chicago Bulls',
        'Bolstered by what might be the best lineup of players Michael Jordan ever had surrounding him, the 1996-97 Bulls were able to win the teams fourth title of the 1990s and second in a row.

Hall of Famers Jordan, Scottie Pippen and Dennis Rodman were joined by starters Ron Harper and Luc Longley and had a bench rotation that included Steve Kerr, Toni Kukoc and Hall of Famer Robert Parish. This team went on five different eight-game winning streaks during the regular season and had they not coasted through their final four games, could have made history with wins in a season.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (7, 2, '1984-85 Los Angeles Lakers',
        'Arguably the peak of “Showtime,” the 1984-85 Lakers did what no other team in franchise history had done before: beat the Boston Celtics in the NBA Finals.

This immensely talented team included five future Hall of Famers and had eight players averaging at least 8 points per game, including four that averaged at least 16. This offensive juggernaut of a team posted a +7.4 average point differential per game all season and scored at least 100 points in all 19 playoff games they took part in. The 1984-85 Lakers still hold the record for the highest field goal shooting percentage for a season at .5448.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (8, 2, '1970-71 Milwaukee Bucks',
        'In only its third season as a franchise, the Milwaukee Bucks put together one of the fiercest teams in basketball history, led by legends Kareem Abdul-Jabbar and Oscar Robertson.

This team dominated the league in 1970-71, posting the best average margin of victory in NBA history at 17.5 points. The brutality didn t stop in the regular season, as this team also holds the record for highest average point differential in playoffs history at +14.5. This squad had five players averaging in double figures, including three who averaged at least 18 points per game, with Abdul-Jabbar averaging 31.7.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (9, 2, '1982-83 Philadelphia 76ers',
        'A truly legendary team in NBA history, the 1982-83 76ers boasted four NBA All-Stars and is the only team ever to have three All-Star Game starters from the same year on its roster. Julius Erving and Maurice Cheeks were joined by Moses Malone to form a team that would dominate the regular season, putting together what is still the most winning regular season in 76ers history before going 12-1 in the playoffs. Cheeks, Malone and Bobby Jones were also part of the NBA s All-Defensive first team for their work that season.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (10, 2, '1998-99 San Antonio Spurs',
        'Spurs fans had been waiting since 1976 — when the team joined the NBA — to see their team win a title, and the 1998-99 season proved to be the first championship run of many to come. This team played in a shortened season because of a lockout, but that didn t hamper them, as they would end with the league s best record and a total domination of the playoffs, where they went 15-2.

The combination of David Robinson and Tim Duncan made for one of the best frontcourt duos in history, with the pair combining for 37.5 points, 21.4 rebounds and 4.9 blocks per game. This Spurs team also held their opponents to the lowest opposing field goal percentage for a season in NBA history.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (11, 3, '2015-16 Golden State Warriors',
        'Without question, the best team not to win a championship was the 2015-16 Warriors, who posted the best regular season record in NBA history.

This historic squad, which saw Steph Curry and Klay Thompson combine for more than 52 points per game, also won more road games than any team in league history and had the second-highest three-point shooting percentage for any team ever at .4155. It was all going smoothly until the Western Conference Finals, when they squeaked out a series win in seven games before losing to the Cleveland Cavaliers in the NBA Finals, collapsing after holding a 3-1 series lead.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (12, 3, '1991-92 Chicago Bulls',
        'This was the season the Bulls proved they were the team of the  90s, winning their second consecutive title in 1992. This team improved on the 1990-91 championship team by winning more games in the regular season and securing a combined 82 wins in the regular season and playoffs. The team posted a +10.4 average point differential all season and what s most scary is that MVP Michael Jordan and Scottie Pippen would have even better teams going forward.',
        CURRENT_TIMESTAMP());

-- Comments
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 1,
        '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 2,
        '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 3,
        '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (6, 1,
        'For the Chicago Bulls, the campaign was almost identical to their record-breaking 1995-96 season. They began the season 12-0, and by the All-Star break, was 42-6, putting them on pace to win 70 games for a second year in a row.
But some late-season injuries and poor play denied them another 70-win season, and the Bulls settled for a 69-13 record, best in the league.',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (6, 2,
        'The Bulls won the series 4 games to 2. For the fifth time in as many Finals appearances, Michael Jordan was named NBA Finals MVP.
The Bulls and Jazz won a combined 133 regular season games, second most in Finals history. Until 2016, the 1997 NBA Finals was the last to feature teams that won a total of at least 130 regular season games.',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (6, 3,
        'Dennis Rodman captured sixth consecutive rebounding title with a 16.1 average... Scottie Pippen named a starter to the 1997 NBA All-Star Game.
Jordan became the first player in NBA history to record a triple double in an NBA All Star Game (14 points, 11 rebounds and 11 assists) Steve Kerr won the AT&T Shootout during NBA All-Star Weekend...Bulls home sellout streak reached 489.',
        CURRENT_TIMESTAMP());