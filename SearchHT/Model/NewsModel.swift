//
//  NewsModel.swift
//  SearchHT
//
//  Created by Roman Berezin on 24.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit

struct NewsModel {
    
    let newsTitle: String
    let newsText: String
    
    static func getData() -> [NewsModel] {
        return [NewsModel(newsTitle: "Потерявшую туфлю участницу парада Победы наградили",
                          newsText: """
                                    Командующий Балтийским флотом адмирал Александр Носатов лично наградил участницу парада в Калининграде, которая потеряла туфлю, но не сбила строй. Об этом рассказал представитель флота Роман Мартов, передает РИА Новости.

                                    Девушка получила памятную медаль командующего, грамоту и букет перед строем мичманов и офицеров, уточнил Мартов.

                                    По его словам, девушка четыре года служит фельдшером командного пункта в одной из частей противовоздушной обороны Балтфлота, это был ее третий парад.

                                    24 июня Telgram-канал LIFE SHOT опубликовал ролик, на котором видно, что у участницы парад Победы слетела туфля, но девушка продолжила маршировать и не сбила строй. Адмирал Александр Носатов попросил узнать ее фамилию, чтобы наградить, потому что, несмотря на произошедшее, «даже никто ничего не заметил».
                                    """),
        NewsModel(newsTitle: "На здании посольства США в Москве появился ЛГБТ-флаг",
                  newsText: """
                            На здании посольства США в Москве вывесили флаг ЛГБТ-сообщества в связи с «месяцем гордости» представителей нетрадиционных отношений. Об этом в четверг, 25 июня, сообщает деловая газета «Взгляд» со ссылкой на многих российских журналистов.

                            «Флаг ЛГБТ на американском посольстве в Москве оказался правдой», — написал телеведущий Владимир Соловьев.

                            О событии с вывешенным флагом ЛГБТ-сообщества в Москве написал и сотрудник ВГТРК Андрей Медведев. «Кажется, это называется каминг-аут. Нельзя сказать, что мы так не догадывались. Но спасибо вам, товарищи, за откровенность. Теперь знаем точно — насчет вас мы не ошибались», — сказал он.

                            «Несмотря на отказ президента США Дональда Трампа поддержать прайд, дипломаты по всему миру стали вывешивать ЛГБТ-флаги. Вот и посольство США в Москве сегодня присоединилось к такой акции. Здоровая солидарность», — прокомментировала российский политик и журналист Ксения Собчак в Telegram-канале.

                            «Ого! Посольство США в Москве сегодня утром вывесило огромный флаг ЛГБТ со стороны Садового кольца», — заявил бывший главный редактор телеканала «Дождь» и сооснователь агентства KFConsulting Илья Клишин в своем Twitter-аккаунте.

                            Отмечается, что на территории посольства США не распространяются российские законы, так как она экстерриториальна по правовым нормам Венской конвенции 1961 года. Кроме того, в США июнь считается «месяцем гордости» ЛГБТ-сообщества, так как в начале лета 1969 года в Нью-Йорке впервые прошла волна протестов против полицейских рейдов на гей-бары.

                            В начале июня также сообщалось, что 45-летний москвич бросил в посольство США в Москве жестяную банку с газировкой Pepsi. После этого мужчину задержали и выписали штраф за мелкое хулиганство.
                            """),
        NewsModel(newsTitle: "Рэпер Lil Yachty попал в аварию и разбил дорогостоящий Ferrari",
                  newsText: """
                            Рэпер Lil Yachty попал в аварию и разбил свой автомобиль Ferrari 488 стоимостью свыше 330 тысяч долларов (более 22 миллионов рублей). Музыкант получил незначительные травмы, пишет Billboard.

                            22-летний артист выложил снимки с места ДТП в Twitter. Он заявил, что благодарен за то, что выжил в аварии.

                            Инцидент произошел на автостраде во время сильного дождя. Рэпер потерял управление и врезался в ограждение. Он повредил руку, однако неизвестно, обратился ли он за помощью в больницу. Полиция сделала музыканту предупреждение за опасное вождение.

                            В мае французского актера Венсана Касселя госпитализировали после того, как он попал в аварию и травмировал лицо. Сообщалось, что 55-летний артист упал со скутера.
                            """),
        NewsModel(newsTitle: "Красота 15-летнего сына Лукашенко на параде Победы привлекла внимание россиянок",
                  newsText: """
                            Внешность сына президента Белоруссии Александра Лукашенко, который посетил парад Победы в Москве вместе с отцом, привлекла внимание российских девушек. Свое восхищение 15-летнему Николаю Лукашенко пользовательницы выразили в Twitter.

                            Как отмечает «Комсомольская правда», Николай появляется на публичных мероприятиях с ранних лет и пользуется популярностью в социальных сетях. Во время прямой трансляции парада молодой человек, сидящий в первом ряду недалеко от президента России Владимира Путина, попал в объектив оператора и вскоре стал объектом обсуждения у телезрительниц.

                            Так, в Twitter женщины массово посвящали посты красоте сына белорусского лидера. «Выпила бокал вина, теперь сижу и думаю, как же сложно, когда расстояние разделяет с любимым человеком. Вот я сейчас в Екатеринбурге, а Коля Лукашенко в Москве», «Я не могу, почему Коля Лукашенко такой красивый...», «Коля Лукашенко похож на принца Уильяма в том же возрасте», «Мне одной сын Трампа кажется обычным? А Коля Лукашенко реально краш», «У меня сердечко екнуло, как увидела», «Смотрю Парад ради того, чтобы увидеть его», — высказались они.

                            Николай Лукашенко родился 31 августа 2004 года. Кто именно является его матерью, неизвестно. По словам его отца, она работает врачом.

                            Александр Лукашенко прибыл в Москву вечером 23 июня. Свое участие в празднествах он подтвердил в ходе телефонного разговора с Путиным 19 июня. После мероприятия российский лидер пригласил его на открытие памятника Советскому солдату под Ржевом, которое состоится 30 июня.
                            """),
        NewsModel(newsTitle: "Контрабанду с атомной подлодкой попытались вывезти из России в Китай",
                  newsText: """
                            Российские таможенники задержали 106 тонн лома металлов утилизированной атомной подводной лодки при попытке его вывоза в Китай без лицензии. Об этом сообщила пресс-служба Федеральной таможенной службы (ФТС).

                            Сталь после разделки корпуса подлодки пыталась экспортировать частная компания под видом лома черных металлов. Как отметили в ведомстве, для вывоза за границу металлов, которые путем плавки и последующей ковки могут быть использованы повторно при создании военной техники, требуется лицензия Федеральной службы по военно-техническому сотрудничеству России.

                            Было установлено, что лом от подлодки был приобретен на судоремонтном заводе-изготовителе в рамках аукциона. Директор компании участвовал в нем, воспользовавшись лицензией другой фирмы. Она выдается специализированным государственным организациям, получившим право на внешнеторговую деятельность с продукцией специальной категории.

                            В отношении руководителя компании-экспортера возбуждено уголовное дело по статье 226.1 УК РФ (Контрабанда военной техники).
                            """),
        NewsModel(newsTitle: "Сын Никиты Хрущева покончил с собой в США",
                  newsText: """
                            Политолог Сергей Хрущев, сын бывшего первого секретаря ЦК КПСС Никиты Хрущева, покончил с собой. О подробностях его смерти сообщает The New York Times.

                            Отмечается, что его тело было найдено с огнестрельным ранением в голову. По данным полиции, очевидных признаков следов насилия не обнаружено.

                            О смерти Хрущева-младшего сообщалось еще 18 июня, но тогда не поступало информации о самоубийстве.

                            Сергей Хрущев имел российское и американское гражданство — в 1991 году известного ученого и публициста пригласили в университет Брауна для чтения лекций по истории холодной войны. Впоследствии он остался жить в США.

                            В СССР Хрущев-младший занимался разработкой проектов крылатых и баллистических ракет, участвовал в создании систем приземления космических кораблей.
                            """)]
    }
}
