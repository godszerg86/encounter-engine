# language:ru
Функционал: Как любой пользователь системы я должен иметь возможность
 просматривать список участвующих в игре команд.
Предыстория:
	Допустим создана игра "Игра1"
        И зарегистрирована команда "Mushrooms" под руководством Noel
        И зарегистрирована команда "Moorhuhn" под руководством Duck
        И капитан "Noel" зарегистрировал свою команду на участие в игре "Игра1"
        И капитан "Duck" зарегистрировал свою команду на участие в игре "Игра1"

Сценарий: Гость просматривает список участвующих команд
        Допустим я не залогинен
	И я иду по ссылке "Список игр"
	То должен увидеть "Игра1"
	Если я иду по ссылке "(просмотреть)"
	То должен увидеть "Участвуют команды:"
	И должен увидеть "Mushrooms"
	И должен увидеть "Moorhuhn"

Сценарий: Пользоваталь просматривает список участвующих команд
	Допустим я залогинен как Fred
	Если я иду по ссылке "Все игры домена"
	То должен увидеть "Игра1"
	Если я иду по ссылке "(просмотреть)"
	То должен увидеть "Участвуют команды:"
	И должен увидеть "Mushrooms"
	И должен увидеть "Moorhuhn"

Сценарий: Автор просматривает список участвующих команд
	Допустим я залогинился как автор игры "Игра1"
	И я захожу в личный кабинет
	То должен увидеть "Мои игры"
	И должен увидеть "Игра1"
        Если я иду по ссылке "(просмотреть)"
	То должен увидеть "Участвуют команды:"
	И должен увидеть "Mushrooms"
	И должен увидеть "Moorhuhn"
