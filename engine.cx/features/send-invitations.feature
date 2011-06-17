# language: ru

Функционал: Рассылка приглашений в команду
    Чтобы пополнить команду новыми членами
    Капитан может пригласить других пользователей к себе в команду

Сценарий: Капитан видит в комнате команды ссылку "Пригласить участников"
    И зарегистрирована команда "Mushrooms" под руководством Noel
    Если я захожу в комнату команды
    То должен увидеть "Пригласить участников"

Сценарий: Рядовой член команды не видит ссылку "Пригласить участников"
    Допустим зарегистрирована команда "Mushrooms" под руководством Noel
    И пользователь Alisa состоит в команде "Mushrooms"
    Если я логинюсь как Alisa
    И захожу в комнату команды
    То не должен видеть "Пригласить участников"

Сценарий: Капитан отсылает приглашение вступить в команду
    Допустим зарегистрирован пользователь Alisa
    И зарегистрирована команда "Mushrooms" под руководством Noel
    Если я захожу в комнату команды
    И иду по ссылке "Пригласить участников"
    И ввожу "Alisa" в поле "Пригласить нового участника"
    И нажимаю "Пригласить"
    То должен увидеть "Пользователю Alisa выслано приглашение"
    И пользователь Alisa должен получить приглашение от команды Mushrooms

Сценарий: Капитан отсылает несколько приглашений
    Допустим зарегистрирован пользователь Alisa
    И зарегистрирован пользователь Aldor
    И зарегистрирована команда "Mushrooms" под руководством Noel
    И я высылаю пользователю Alisa приглашение вступить в команду
    И все отосланные к этому моменту письма прочитаны
    Если я захожу в комнату команды
    И иду по ссылке "Пригласить участников"
    И ввожу "Aldor" в поле "Пригласить нового участника"
    И нажимаю "Пригласить"
    То должен увидеть "Пользователю Aldor выслано приглашение"
    И пользователь Aldor должен получить приглашение от команды Mushrooms

Сценарий: Капитан пытается два раза отослать приглашение одному и тому же пользователю
    Допустим зарегистрирован пользователь Alisa
    И зарегистрирована команда "Mushrooms" под руководством Noel
    И я высылаю пользователю Alisa приглашение вступить в команду
    Если я захожу в комнату команды
    И иду по ссылке "Пригласить участников"
    И ввожу "Alisa" в поле "Пригласить нового участника"
    И нажимаю "Пригласить"
    То должен увидеть "Вы уже высылали этому пользователю приглашение и он ещё не ответил"

Сценарий: Капитан пытается пригласить члена другой команды
    Допустим зарегистрирована команда "Плакучие Ивы" под руководством Iv
    И пользователь Av состоит в команде "Плакучие Ивы"
    И зарегистрирована команда "Mushrooms" под руководством Noel
    Если я логинюсь как Noel
    И захожу в комнату команды
    И иду по ссылке "Пригласить участников"
    И ввожу "Av" в поле "Пригласить нового участника"
    И нажимаю "Пригласить"
    То должен увидеть "Пользователь уже является членом одной из команд"
    И пользователь Av не должен получить приглашение

Сценарий: Капитан пытается пригласить члена своей же команды
    Допустим зарегистрирована команда "Mushrooms" под руководством Noel
    И пользователь Alisa состоит в команде "Mushrooms"
    Если я логинюсь как Noel
    И захожу в комнату команды
    И иду по ссылке "Пригласить участников"
    И ввожу "Alisa" в поле "Пригласить нового участника"
    И нажимаю "Пригласить"
    То должен увидеть "Пользователь уже является членом одной из команд"
    И пользователь Alisa не должен получить приглашение

Сценарий: Капитан пытается пригласить самого себя :-)
    И зарегистрирована команда "Mushrooms" под руководством Noel
    Если я захожу в комнату команды
    И иду по ссылке "Пригласить участников"
    И ввожу "Noel" в поле "Пригласить нового участника"
    И нажимаю "Пригласить"
    То должен увидеть "Пользователь уже является членом одной из команд"
    И пользователь Noel не должен получить приглашение

Сценарий: Капитан не ввёл имени пользователя
    И зарегистрирована команда "Mushrooms" под руководством Noel
    Если я захожу в комнату команды
    И иду по ссылке "Пригласить участников"
    И нажимаю "Пригласить"
    То должен увидеть "Вы не ввели имени пользователя"

Сценарий: Капитан ввёл имя несуществующего пользователя
    И зарегистрирована команда "Mushrooms" под руководством Noel
    Если я захожу в комнату команды
    И иду по ссылке "Пригласить участников"
    И ввожу "He-does-not-exist" в поле "Пригласить нового участника"
    И нажимаю "Пригласить"
    То должен увидеть "Пользователя с таким именем не существует"
    И никакие письма не должны быть высланы