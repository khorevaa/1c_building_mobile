﻿
#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)

	ТекстСообщения = 
		НСтр("ru = 'Выполняется обновление на версию ""%1"".
			|Это может занять несколько минут.
			|
			|Пожалуйста, подождите...'; 
			|en = 
			|'Updating on the version ""%1"" in process.
			|It can take a few minutes.
			|
			|Please, wait...'");

	ТекстЗаголовка = СтрШаблон(
			ТекстСообщения, Метаданные.Версия);

	Элементы.Обновление.Заголовок = ТекстЗаголовка;

КонецПроцедуры

&НаКлиенте
Процедура ОбработкаОповещения(ИмяСобытия, Параметр, Источник)

	Если ИмяСобытия = "ОбновлениеЗавершено" Тогда
		Закрыть();
	КонецЕсли;

КонецПроцедуры

#КонецОбласти
