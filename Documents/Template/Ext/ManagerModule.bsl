﻿Функция Печать(ДокументСсылка) Экспорт
	
	ТабДок = Новый ТабличныйДокумент;
	
	Макет = ПолучитьМакет("ШаблонСтандарт");
	
	
	ОбщаяОбласть = Макет.ПолучитьОбласть("ОбщаяОбласть");
	
	ОбщаяОбласть.Параметры.СтрокаКлючевыеПартнеры 			= ПолучитьТекстПоСтрокамТЧ("KeyPartners", ДокументСсылка);
	ОбщаяОбласть.Параметры.СтрокаКлючевыеАктивности  		= ПолучитьТекстПоСтрокамТЧ("KeyActivities", ДокументСсылка);;
	ОбщаяОбласть.Параметры.СтрокаКлючевыеРесурсы      		= ПолучитьТекстПоСтрокамТЧ("KeyResources", ДокументСсылка);
	
	ОбщаяОбласть.Параметры.СтрокаЦенностныеПредложения   	= ПолучитьТекстПоСтрокамТЧ("ValuePropositions", ДокументСсылка);;
	ОбщаяОбласть.Параметры.СтрокаВзаимоотношенияСКлиентами  = ПолучитьТекстПоСтрокамТЧ("CustomerRelatonships", ДокументСсылка);;
	ОбщаяОбласть.Параметры.СтрокаКаналыСбыта                = ПолучитьТекстПоСтрокамТЧ("Channels", ДокументСсылка);;
	
	ОбщаяОбласть.Параметры.СтрокаПотребительскиеСегменты   	= ПолучитьТекстПоСтрокамТЧ("CustomerSegments", ДокументСсылка);;
	ОбщаяОбласть.Параметры.СтрокаСтруктураИздержек          = ПолучитьТекстПоСтрокамТЧ("CostStructures", ДокументСсылка);;
	ОбщаяОбласть.Параметры.СтрокаПотокиПоступленияДоходов   = ПолучитьТекстПоСтрокамТЧ("RevenueStreams", ДокументСсылка);;
	
	ОбщаяОбласть.Параметры.Дата 	= Формат(ДокументСсылка.Дата,"ДФ=dd.MM.yyyy");
	ОбщаяОбласть.Параметры.Проект 	= ДокументСсылка.Проект; 
	ТабДок.Вывести(ОбщаяОбласть);
	
	Возврат ТабДок;
	
КонецФункции

Функция ПолучитьТекстПоСтрокамТЧ(ИмяТЧ, ДокументСсылка)
	
	ТекстЯчейки = "";
	Для Каждого Стр Из ДокументСсылка[ИмяТЧ] Цикл
		ТекстЯчейки = ТекстЯчейки + Стр.Note + Символы.ПС; 	
	КонецЦикла; 
	
	Возврат ТекстЯчейки;
	
КонецФункции
