﻿
#Область ПрограммныйИнтерфейс

// Выполняет загрузку демо-данных из макета ДемоДанные.
//
Процедура ЗагрузитьДемоДанные() Экспорт

	ЗаполнитьДемоДанныеПрограммно();

	ИдентификаторСообщения = Новый УникальныйИдентификатор();
	ДанныеСообщения = 
		Новый ХранилищеЗначения(ПолучитьОбщийМакет("ДемоДанные"), Новый СжатиеДанных(9));

	РегистрыСведений.ПолученныеДанныеОбмена.ДобавитьЗапись(
		ИдентификаторСообщения, 1, ДанныеСообщения);

КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Процедура ЗаполнитьДемоДанныеПрограммно()

	СтруктураДемоЗаписиКалендаря = Новый Структура("Ид, ВесьДень, ДатаНачала, ДатаОкончания, Описание, Состояние, Цвет");
	СтруктураДемоЗаписиКалендаря.ВесьДень  = Ложь;
	СтруктураДемоЗаписиКалендаря.Состояние = Перечисления.СостоянияЗаписейРабочегоКалендаря.Принято;
	СтруктураДемоЗаписиКалендаря.Цвет      = Перечисления.ЦветаОбъектов.Нет;

	// День 1
	ТекущаяДатаЗаполнения = НачалоДня(ТекущаяДата());
	СкорректироватьДемоДату(ТекущаяДатаЗаполнения);
	
	СтруктураДемоЗаписиКалендаря.Ид            = Новый УникальныйИдентификатор("352726af-e13c-11e5-ac2b-bcaec5d977c9");
	СтруктураДемоЗаписиКалендаря.ДатаНачала    = ТекущаяДатаЗаполнения + 36000; // 10:00
	СтруктураДемоЗаписиКалендаря.ДатаОкончания = ТекущаяДатаЗаполнения + 45000; // 12:30
	СтруктураДемоЗаписиКалендаря.Описание      = НСтр("ru = 'Зарегистрировать ""Рекламные материалы""'
														|;en = 'Register ""Advertising materials""'");

	СоздатьДемоЗаписьКалендаря(СтруктураДемоЗаписиКалендаря);

	СтруктураДемоЗаписиКалендаря.Ид            = Новый УникальныйИдентификатор("355766af-e43c-1412-ac2b-bcaec5d977c9");
	СтруктураДемоЗаписиКалендаря.ДатаНачала    = ТекущаяДатаЗаполнения + 50400; // 14:00
	СтруктураДемоЗаписиКалендаря.ДатаОкончания = ТекущаяДатаЗаполнения + 52200; // 14:30
	СтруктураДемоЗаписиКалендаря.Описание      = НСтр("ru = 'Перезвонить Савельеву П.М.'; en = 'Call back to Savelyev P. M.'");
	СтруктураДемоЗаписиКалендаря.Цвет          = Перечисления.ЦветаОбъектов.Красный;

	СоздатьДемоЗаписьКалендаря(СтруктураДемоЗаписиКалендаря);
	
	СтруктураДемоЗаписиКалендаря.Ид            = Новый УникальныйИдентификатор("354666af-e43c-1762-ab2b-bcaec5d977c9");
	СтруктураДемоЗаписиКалендаря.ДатаНачала    = ТекущаяДатаЗаполнения + 55800; // 15:30
	СтруктураДемоЗаписиКалендаря.ДатаОкончания = ТекущаяДатаЗаполнения + 63000; // 17:30
	СтруктураДемоЗаписиКалендаря.Описание      = НСтр("ru = 'Подготовить список видов документов по всем подразделениям'
												|;en = 'Prepare the list of types of documents on all divisions'");
	СтруктураДемоЗаписиКалендаря.Цвет          = Перечисления.ЦветаОбъектов.Нет;

	СоздатьДемоЗаписьКалендаря(СтруктураДемоЗаписиКалендаря);
	
	// День 2
	ТекущаяДатаЗаполнения = ТекущаяДатаЗаполнения + 86400;
	СкорректироватьДемоДату(ТекущаяДатаЗаполнения);
	
	СтруктураДемоЗаписиКалендаря.Ид            = Новый УникальныйИдентификатор("355766b3-e86c-1414-ac7b-bcaec5d977c9");
	СтруктураДемоЗаписиКалендаря.ДатаНачала    = ТекущаяДатаЗаполнения + 43200; // 12:00
	СтруктураДемоЗаписиКалендаря.ДатаОкончания = ТекущаяДатаЗаполнения + 54000; // 15:00
	СтруктураДемоЗаписиКалендаря.Описание      = НСтр("ru = 'Перепроверить документы, по которым поступали претензии от ОАО Плазма'
													|; en = 'Recheck documents according to which claims from JSC Plazma arrived'");

	СоздатьДемоЗаписьКалендаря(СтруктураДемоЗаписиКалендаря);

	СтруктураДемоЗаписиКалендаря.Ид            = Новый УникальныйИдентификатор("355466af-12bc-1aa2-ac2b-bcaec5d977c9");
	СтруктураДемоЗаписиКалендаря.ДатаНачала    = ТекущаяДатаЗаполнения + 57600; // 16:00
	СтруктураДемоЗаписиКалендаря.ДатаОкончания = ТекущаяДатаЗаполнения + 59400; // 16:30
	СтруктураДемоЗаписиКалендаря.Описание      = НСтр("ru = 'Адвокатское бюро ""Аплана"" - необходимо позвонить'
												|; en = 'Lawyer bureau ""Aplana"" - it is necessary to call'");
	СтруктураДемоЗаписиКалендаря.Цвет          = Перечисления.ЦветаОбъектов.Желтый;

	СоздатьДемоЗаписьКалендаря(СтруктураДемоЗаписиКалендаря);
	
	// День 3
	ТекущаяДатаЗаполнения = ТекущаяДатаЗаполнения + 86400;
	СкорректироватьДемоДату(ТекущаяДатаЗаполнения);
	
	СтруктураДемоЗаписиКалендаря.Ид            = Новый УникальныйИдентификатор("35421baf-e12c-b412-ac2b-bcaec5d977c9");
	СтруктураДемоЗаписиКалендаря.ДатаНачала    = ТекущаяДатаЗаполнения + 36000; // 10:00
	СтруктураДемоЗаписиКалендаря.ДатаОкончания = ТекущаяДатаЗаполнения + 39600; // 11:00
	СтруктураДемоЗаписиКалендаря.Описание      = НСтр("ru = 'Актуализировать ""График дежурств""'
													|; en = 'Staticize ""The schedule of watches""'");
	СтруктураДемоЗаписиКалендаря.Цвет          = Перечисления.ЦветаОбъектов.Нет;

	СоздатьДемоЗаписьКалендаря(СтруктураДемоЗаписиКалендаря);

	СтруктураДемоЗаписиКалендаря.Ид            = Новый УникальныйИдентификатор("3557653f-e43c-1512-ac7b-bcaec5d977c9");
	СтруктураДемоЗаписиКалендаря.Состояние     = Перечисления.СостоянияЗаписейРабочегоКалендаря.ПодВопросом;
	СтруктураДемоЗаписиКалендаря.ДатаНачала    = ТекущаяДатаЗаполнения + 43200; // 12:00
	СтруктураДемоЗаписиКалендаря.ДатаОкончания = ТекущаяДатаЗаполнения + 50400; // 14:00
	СтруктураДемоЗаписиКалендаря.Описание      = НСтр("ru = 'Подведение итогов работы секретариата за май'
												|; en = 'Summing up work of the secretariat for May'");

	СоздатьДемоЗаписьКалендаря(СтруктураДемоЗаписиКалендаря);

	// День 4
	ТекущаяДатаЗаполнения = ТекущаяДатаЗаполнения + 86400;
	СкорректироватьДемоДату(ТекущаяДатаЗаполнения);

	СтруктураДемоЗаписиКалендаря.Ид            = Новый УникальныйИдентификатор("355b431f-eb3c-1454-ac2b-bcaec5d977c9");
	СтруктураДемоЗаписиКалендаря.Состояние     = Перечисления.СостоянияЗаписейРабочегоКалендаря.Принято;
	СтруктураДемоЗаписиКалендаря.ВесьДень      = Истина;
	СтруктураДемоЗаписиКалендаря.ДатаНачала    = НачалоДня(ТекущаяДатаЗаполнения);
	СтруктураДемоЗаписиКалендаря.ДатаОкончания = КонецДня(ТекущаяДатаЗаполнения);
	СтруктураДемоЗаписиКалендаря.Описание      = НСтр("ru = 'Посещение выставки'; en = 'Visit of an exhibition'");

	СоздатьДемоЗаписьКалендаря(СтруктураДемоЗаписиКалендаря);

КонецПроцедуры

Процедура СкорректироватьДемоДату(ТекущаяДатаЗаполнения)

	Если ДеньНедели(ТекущаяДатаЗаполнения) = 6 Тогда
		ТекущаяДатаЗаполнения = ТекущаяДатаЗаполнения + 86400 * 2;

	ИначеЕсли ДеньНедели(ТекущаяДатаЗаполнения) = 7 Тогда
		ТекущаяДатаЗаполнения = ТекущаяДатаЗаполнения + 86400;

	КонецЕсли;

КонецПроцедуры

Процедура СоздатьДемоЗаписьКалендаря(СтруктураДемоЗаписиКалендаря)

	Ссылка = Справочники.ЗаписиРабочегоКалендаря.ПолучитьСсылку(СтруктураДемоЗаписиКалендаря.ид);
	Объект = Ссылка.ПолучитьОбъект();

	Если Объект = Неопределено Тогда
		Объект = Справочники.ЗаписиРабочегоКалендаря.СоздатьЭлемент();
		Объект.УстановитьСсылкуНового(Ссылка);
	КонецЕсли;

	Объект.ТипЗаписиКалендаря = Перечисления.ТипЗаписиКалендаря.Событие;

	ЗаполнитьЗначенияСвойств(Объект, СтруктураДемоЗаписиКалендаря);

	Объект.Записать();

	ЦентральныйУзелОбмена = ОбменВызовСервераПовтИсп.ПолучитьЦентральныйУзелОбмена();
	ПланыОбмена.УдалитьРегистрациюИзменений(ЦентральныйУзелОбмена, Объект.Ссылка);

КонецПроцедуры

#КонецОбласти


