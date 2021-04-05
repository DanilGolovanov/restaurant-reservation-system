select count (tableid) as TablesAvaliable,
		ts.SittingId,
		s.StartDateTime,
		s.EndDateTime, 
		s.Capacity as totalSittingCapacity,
		sum(r.Guests) as TotatGuessBooked,
		(s.Capacity -sum(r.Guests)) as RemainingSittingCapacity,
		tr.TableSittingId


from TableSittings ts

join Sittings s on ts.SittingId = s.Id
full outer join TableReserations tr on tr.TableSittingId = ts.Id
join [Tables] t on ts.TableId = t.Id
full outer join Reservations r on tr.ReservationId = r.Id
where tr.ReservationId is null

group by ts.SittingId,
		s.EndDateTime, 
		s.StartDateTime,
		s.Capacity,
		tr.TableSittingId


