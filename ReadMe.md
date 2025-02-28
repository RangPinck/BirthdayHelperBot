# BirthdayHelperBot

This bot can help you not to miss important dates and birthdays and please the birthday boy with important gifts for him according to your budget.

## Table of contents

1. Full Specification
2. Technologies used
3. Description of commits
4. [Database part](./database/ReadMe.md)
5. [API part](./apis/ReadMe.md)
6. [Bots part](./telegram_bot/ReadMe.md)

<!--полная спецификация проекта-->
## Full Specification

This program is a list of notes/reminder/gift calculator for the user and his entourage.

It allows you to:

- memorize important dates - holidays/birthdays that the user himself wishes;
- create a group of users with their birthdays and shared holidays;
- remind you of these important dates during the specified time period;
- specify possible gifts for the user for this holiday;
- check the availability of a gift if it is from a popular market place;
- specify your own gift option with its price;
- get a list of gifts in a certain amount range;
- make combinations of gifts for a given amount.

## Technologies used

- C# DotNETCore 9.0
- ASP DotNETCore 9.0
- Postgres (PostgreSQL)
- Telegram Bots Book 22.4.4
- Docker

<!--описание коммитов-->
## Description of commits

| Название | Описание                                                        |
|----------|-----------------------------------------------------------------|
| build    | Сборка проекта или изменения внешних зависимостей               |
| docs     | Обновление документации                                         |
| update   | Добавление нового функционала                                   |
| fix      | Исправление ошибок                                              |
| refactor | Правки кода без исправления ошибок или добавления новых функций |
| revert   | Откат на предыдущие коммиты                                     |
| style    | Правки по кодстайлу (табы, отступы, точки, запятые и т.д.)      |
| test     | Добавление тестов                                               |
| db       | Работа с серверной частитью                                     |
| docker   | Работа с серверной частитью                                     |
