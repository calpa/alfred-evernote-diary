JsOsaDAS1.001.00bplist00�Vscripto� / /   A u t h o r :   C a l p a   L i u 
 / /   E m a i l :   c a l p a l i u @ g m a i l . c o m 
 
 c o n s t   d a t e   =   n e w   D a t e ( ) ; 
 c o n s t   n o t e b o o k   =   'e� ' ; 
 
 f u n c t i o n   a d d Z ( n ) { 
 	 r e t u r n   n < 1 0   ?   ' 0 ' + n   : ' '   +   n ; 
 } 
 
 c o n s t   c r e a t e N o t e   =   ( { n a m e ,   h t m l C o n t e n t   =   'bv�e�� ' ,   t a g s   =   [ ] ,   t i t l e ,   n o t e b o o k } )   = >   { 
 	 c o n s t   a p p   =   A p p l i c a t i o n ( ' E v e r n o t e ' ) ; 
 	 a p p . c r e a t e N o t e ( { 
 	 	 w i t h H t m l :   h t m l C o n t e n t , 
 	 	 t a g s , 
 	 	 t i t l e , 
 	 	 n o t e b o o k 
 	 } ) ; 	 
 } 
 
 f u n c t i o n   r u n ( a r g v )   { 
 	 c o n s t   a p p   =   A p p l i c a t i o n ( ' E v e r n o t e ' ) ; 
 
 	 / /   Y Y Y Y M M D D 
 	 c o n s t   t i t l e   =   ` $ { d a t e . g e t F u l l Y e a r ( ) } $ { a d d Z ( d a t e . g e t M o n t h ( )   +   1 ) } $ { a d d Z ( d a t e . g e t D a t e ( ) ) } ` ; 
 
 	 c o n s t   n o t e   =   a p p . f i n d N o t e s ( t i t l e ) [ 0 ] ; 
 
 	 i f   ( n o t e )   { 
 	 	 
 	 	 c o n s t   t e m p l a t e   =   ` < p > $ { a r g v [ 0 ] } < / p > ` ; 
 	 	 
 	 	 r e t u r n   n o t e . a p p e n d ( { 
 	 	 	 h t m l :   t e m p l a t e 
 	 	 } ) ; 
 	 }   e l s e   { 
 	 	 r e t u r n   c r e a t e N o t e ( { 
 	 	 	 t i t l e , 
 	 	 	 n o t e b o o k 
 	 	 } ) 
 	 } 
 }                              �jscr  ��ޭ