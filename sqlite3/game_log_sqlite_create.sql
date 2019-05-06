CREATE TABLE team_appearance (
	team_id text PRIMARY KEY AUTOINCREMENT,
	game_id text PRIMARY KEY AUTOINCREMENT,
	home integer PRIMARY KEY AUTOINCREMENT,
	league_id integer PRIMARY KEY AUTOINCREMENT,
	score integer,
	line_score text,
	at_bats integer,
	hits integer,
	doubles integer,
	triples integer,
	homeruns integer,
	rbi integer,
	sacrifice_hits integer,
	sacrifice_flies integer,
	hit_by_pitch integer,
	walks integer,
	intentional_walks integer,
	strikeouts integer,
	stolen_basese integer,
	caught_stealing integer,
	grounded_into_interference integer,
	first_catcher_interference integer,
	left_on_base integer,
	pitchers_used integer,
	individual_earned_runs integer,
	team_earned_runs integer,
	wild_earned_runs integer,
	balks integer,
	putouts integer,
	assists integer,
	errors integer,
	passed_balls integer,
	double_plays integer,
	triple_plays integer
);

CREATE TABLE team (
	team_id text PRIMARY KEY AUTOINCREMENT,
	league_id text PRIMARY KEY AUTOINCREMENT,
	city text PRIMARY KEY AUTOINCREMENT,
	nickname text PRIMARY KEY AUTOINCREMENT,
	franch_id text PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE league (
	league_id integer PRIMARY KEY AUTOINCREMENT,
	league_name text PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE game (
	game_id text,
	date text,
	number_of_game integer,
	park_id text,
	length_outs integer,
	day integer,
	completion text,
	forfeit text,
	protest text,
	attendance integer,
	length_minutes integer,
	additional_info text,
	acquisition_info text
);

CREATE TABLE person (
	person_id text,
	first_name text,
	last_name text
);

CREATE TABLE person_appearance (
	appearance_id text PRIMARY KEY AUTOINCREMENT,
	person_id text PRIMARY KEY AUTOINCREMENT,
	team_id text PRIMARY KEY AUTOINCREMENT,
	game_id text PRIMARY KEY AUTOINCREMENT,
	appearanc_type_id text PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE apperance_type (
	appearance_type_id text PRIMARY KEY AUTOINCREMENT,
	name text PRIMARY KEY AUTOINCREMENT,
	category text PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE park (
	park_id text PRIMARY KEY AUTOINCREMENT,
	name text PRIMARY KEY AUTOINCREMENT,
	nickname text PRIMARY KEY AUTOINCREMENT,
	city text PRIMARY KEY AUTOINCREMENT,
	state text PRIMARY KEY AUTOINCREMENT,
	notes text PRIMARY KEY AUTOINCREMENT
);

