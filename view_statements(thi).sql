CREATE VIEW invoiceinfo
AS 
   SELECT i.invoice_id, s.session_id, p.project_id, artist_name, project_song_name, 
   invoice_client_name, r.room_id, room_name, session_date, invoice_deadline, invoice_total_amount 
   
   FROM mps.invoices i
   
   JOIN mps.sessions s ON s.session_id = i.session_id
   JOIN mps.studio_room r ON r.room_id = s.room_id
   JOIN mps.projects p ON p.project_id = s.project_id
   JOIN mps.artists a ON a.artist_id = p.artist_id
   ORDER BY i.invoice_id, s.session_id;
   
SELECT * FROM mps.invoiceinfo;



CREATE VIEW producerworks
AS
	SELECT pr.producer_id, producer_name, p.project_id, artist_name, p.project_song_name, 
    album_name, project_status
    
    FROM mps.producers pr
    
    JOIN mps.projects p ON pr.producer_id = p.producer_id
    JOIN mps.artists a ON a.artist_id = p.artist_id
    ORDER BY pr.producer_id, p.project_id;
    
SELECT * FROM mps.producerworks;
