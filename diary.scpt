JsOsaDAS1.001.00bplist00�Vscripto� / /   A u t h o r :   C a l p a   L i u 
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
 c o n s t   g e t F r o n t m o s t P r o c e s s   =   ( p r o c e s s e s )   = >   p r o c e s s e s . f i l t e r ( i t e m   = >   i t e m . f r o n t m o s t ( ) ) ; 
 
 f u n c t i o n   g e t C h r o m e D a t a ( )   { 
 	 c o n s t   c h r o m e   =   A p p l i c a t i o n ( ' C h r o m e ' ) ; 
 	 
 	 c o n s t   w i n d o w   =   c h r o m e . w i n d o w s [ 0 ] ; 
 	 
 	 c o n s t   a c t i v e T a b   =   w i n d o w . a c t i v e T a b ( ) ; 
 	 
 	 c o n s t   i d   =   a c t i v e T a b . i d ( ) ; 
 	 c o n s t   t i t l e   =   a c t i v e T a b . t i t l e ( ) ; 
 	 c o n s t   u r l   =   a c t i v e T a b . u r l ( ) ; 
 	 c o n s t   l o a d i n g   =   a c t i v e T a b . l o a d i n g ( ) ; 
 
 	 r e t u r n   { i d ,   t i t l e ,   u r l ,   l o a d i n g } ; 
 } 
 
 f u n c t i o n   r u n ( a r g v )   { 
 	 c o n s t   a p p   =   A p p l i c a t i o n ( ' E v e r n o t e ' ) ; 
 
 	 / /   Y Y Y Y M M D D 
 	 c o n s t   p o s t T i t l e   =   ` $ { d a t e . g e t F u l l Y e a r ( ) } $ { a d d Z ( d a t e . g e t M o n t h ( )   +   1 ) } $ { a d d Z ( d a t e . g e t D a t e ( ) ) } ` ; 
 
 	 c o n s t   n o t e   =   a p p . f i n d N o t e s ( p o s t T i t l e ) [ 0 ] ; 
 	 
 	 c o n s t   c h r o m e   =   A p p l i c a t i o n ( ' G o o g l e   C h r o m e ' ) ; 
 	 
 	 c o n s t   p r o c e s s e s   =   A p p l i c a t i o n ( ' S y s t e m   E v e n t s ' ) . p r o c e s s e s ( ) ; 
 	 
 	 c o n s t   a p p l i c a t i o n   =   g e t F r o n t m o s t P r o c e s s ( p r o c e s s e s ) [ 0 ] . n a m e ( ) ; 
 	 
 	 l e t   t i t l e ,   u r l ; 
 	 
 
 	 
 	 i f   ( n o t e )   { 
 	 	 
 	 	 l e t   t e m p l a t e   =   ` < p > $ { a r g v [ 0 ] } < / p > < p >   -  O���   $ { a p p l i c a t i o n } < / p > ` ; 
 	 	 
 	 	 i f   ( a p p l i c a t i o n   = = =   ' G o o g l e   C h r o m e ' )   { 
 	 	 	 l e t   { t i t l e ,   u r l }   =   g e t C h r o m e D a t a ( ) ; 
 	 	 	 t e m p l a t e   + =   ` < a   h r e f = " $ { u r l } " > $ { t i t l e } < / a > ` ; 
 	 	 } 
 	 	 
 	 	 r e t u r n   n o t e . a p p e n d ( { 
 	 	 	 h t m l :   t e m p l a t e 
 	 	 } ) ; 
 	 }   e l s e   { 
 	 	 r e t u r n   c r e a t e N o t e ( { 
 	 	 	 t i t l e :   p o s t T i t l e , 
 	 	 	 n o t e b o o k 
 	 	 } ) 
 	 } 
 }                              �jscr  ��ޭ