FasdUAS 1.101.10   ��   ��    k             l      ��  ��   IC

# Instructions:

- put the two files `OO_latex.scpt` and `create_latex_pdf.py` into `~/Library/Scripts/OmniOutliner`
- then you can access the script from the script icon in the menubar


# This script requires

- a valid pdflatex installation, which is in the PATH variable set in ~/.bash_profile
- python with packages sys, os, datetime, time

# This script does:

- gets content of note of selected row
     this should be a latex - math command
- passes the string of this content to a python script
     that generates a pdf of the latex string
- pastes a pdf of your latex string at the end of the selected row (not the note, the note stays there, found to be useful for future reference)


# Thanks!

This script was possible with the help of these forum posts
	 
	 https://discussions.apple.com/thread/5873254
	 
	 http://forums.omnigroup.com/showthread.php?t=31158&highlight=latex
	 
	 http://forums.omnigroup.com/showthread.php?p=129533#post129533


__author__ = "Claus Haslauer (mail@planetwater.org)"
__version__ = "$Revision: 0.1 $"
__date__ = datetime.datetime(2014,02,12)


     � 	 	� 
 
 #   I n s t r u c t i o n s : 
 
 -   p u t   t h e   t w o   f i l e s   ` O O _ l a t e x . s c p t `   a n d   ` c r e a t e _ l a t e x _ p d f . p y `   i n t o   ` ~ / L i b r a r y / S c r i p t s / O m n i O u t l i n e r ` 
 -   t h e n   y o u   c a n   a c c e s s   t h e   s c r i p t   f r o m   t h e   s c r i p t   i c o n   i n   t h e   m e n u b a r 
 
 
 #   T h i s   s c r i p t   r e q u i r e s 
 
 -   a   v a l i d   p d f l a t e x   i n s t a l l a t i o n ,   w h i c h   i s   i n   t h e   P A T H   v a r i a b l e   s e t   i n   ~ / . b a s h _ p r o f i l e 
 -   p y t h o n   w i t h   p a c k a g e s   s y s ,   o s ,   d a t e t i m e ,   t i m e 
 
 #   T h i s   s c r i p t   d o e s : 
 
 -   g e t s   c o n t e n t   o f   n o t e   o f   s e l e c t e d   r o w 
           t h i s   s h o u l d   b e   a   l a t e x   -   m a t h   c o m m a n d 
 -   p a s s e s   t h e   s t r i n g   o f   t h i s   c o n t e n t   t o   a   p y t h o n   s c r i p t 
           t h a t   g e n e r a t e s   a   p d f   o f   t h e   l a t e x   s t r i n g 
 -   p a s t e s   a   p d f   o f   y o u r   l a t e x   s t r i n g   a t   t h e   e n d   o f   t h e   s e l e c t e d   r o w   ( n o t   t h e   n o t e ,   t h e   n o t e   s t a y s   t h e r e ,   f o u n d   t o   b e   u s e f u l   f o r   f u t u r e   r e f e r e n c e ) 
 
 
 #   T h a n k s ! 
 
 T h i s   s c r i p t   w a s   p o s s i b l e   w i t h   t h e   h e l p   o f   t h e s e   f o r u m   p o s t s 
 	   
 	   h t t p s : / / d i s c u s s i o n s . a p p l e . c o m / t h r e a d / 5 8 7 3 2 5 4 
 	   
 	   h t t p : / / f o r u m s . o m n i g r o u p . c o m / s h o w t h r e a d . p h p ? t = 3 1 1 5 8 & h i g h l i g h t = l a t e x 
 	   
 	   h t t p : / / f o r u m s . o m n i g r o u p . c o m / s h o w t h r e a d . p h p ? p = 1 2 9 5 3 3 # p o s t 1 2 9 5 3 3 
 
 
 _ _ a u t h o r _ _   =   " C l a u s   H a s l a u e r   ( m a i l @ p l a n e t w a t e r . o r g ) " 
 _ _ v e r s i o n _ _   =   " $ R e v i s i o n :   0 . 1   $ " 
 _ _ d a t e _ _   =   d a t e t i m e . d a t e t i m e ( 2 0 1 4 , 0 2 , 1 2 ) 
 
 
   
  
 l     ��������  ��  ��        l     ��  ��    * $ delete previous files if they exist     �   H   d e l e t e   p r e v i o u s   f i l e s   i f   t h e y   e x i s t      l     ��������  ��  ��        l     ����  O        e       c        n        m   	 ��
�� 
cfol  l   	 ����  I   	�� ��
�� .earsffdralis        afdr   f    ��  ��  ��    m    ��
�� 
utxt  m       �                                                                                  MACS  alis    t  Macintosh HD               ��&�H+  ��
Finder.app                                                     ��$ζ�x        ����  	                CoreServices    ���      ζ�h    ������  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��       !   l    "���� " r     # $ # n     % & % 1    ��
�� 
psxp & 1    ��
�� 
rslt $ o      ���� 0 
presentdir 
presentDir��  ��   !  ' ( ' l    )���� ) r     * + * 1    ��
�� 
rslt + o      ���� 0 presentdirstr presentDirStr��  ��   (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0 $  #! delete files if they exist    1 � 2 2 <   # !   d e l e t e   f i l e s   i f   t h e y   e x i s t /  3 4 3 l      �� 5 6��   5\V
set trashFolder to path to trash folder from user domainset myFiles to {"temp.ps", "temp.aux", "temp.dvi", "temp.log", "temp.tex", "temp.pdf"}repeat with myFile in myFiles	set myFilePath to presentDir & myFile	do shell script "mv " & quoted form of POSIX path of myFilePath & space & quoted form of POSIX path of trashFolderend repeat

    6 � 7 7� 
 s e t   t r a s h F o l d e r   t o   p a t h   t o   t r a s h   f o l d e r   f r o m   u s e r   d o m a i n  s e t   m y F i l e s   t o   { " t e m p . p s " ,   " t e m p . a u x " ,   " t e m p . d v i " ,   " t e m p . l o g " ,   " t e m p . t e x " ,   " t e m p . p d f " }  r e p e a t   w i t h   m y F i l e   i n   m y F i l e s  	 s e t   m y F i l e P a t h   t o   p r e s e n t D i r   &   m y F i l e  	 d o   s h e l l   s c r i p t   " m v   "   &   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   m y F i l e P a t h   &   s p a c e   &   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   t r a s h F o l d e r  e n d   r e p e a t 
 
 4  8 9 8 l     ��������  ��  ��   9  : ; : l     �� < =��   < @ : #! get text (a latex string) out of note of selected cell    = � > > t   # !   g e t   t e x t   ( a   l a t e x   s t r i n g )   o u t   o f   n o t e   o f   s e l e c t e d   c e l l ;  ? @ ? l     ��������  ��  ��   @  A B A l    C���� C r     D E D J    ����   E o      ���� 0 lstnote lstNote��  ��   B  F G F l   1 H���� H O   1 I J I r   & 0 K L K n   & . M N M 1   , .��
�� 
OOnt N n   & , O P O 2  * ,��
�� 
OOsr P 4  & *�� Q
�� 
docu Q m   ( )����  L o      ���� 0 lstnote lstNote J 5    #�� R��
�� 
capp R m     ! S S � T T  O O u t
�� kfrmID  ��  ��   G  U V U l  2 9 W���� W r   2 9 X Y X c   2 5 Z [ Z o   2 3���� 0 lstnote lstNote [ m   3 4��
�� 
ctxt Y o      ���� 0 strnote strNote��  ��   V  \ ] \ l  : H ^���� ^ r   : H _ ` _ n   : D a b a 1   @ D��
�� 
strq b n   : @ c d c 4   ; @�� e
�� 
cobj e m   > ?����  d o   : ;���� 0 lstnote lstNote ` o      ���� 0 strnoteq strNoteQ��  ��   ]  f g f l     �� h i��   h   if lstNote � {} then    i � j j *   i f   l s t N o t e  "`   { }   t h e n g  k l k l     ��������  ��  ��   l  m n m l     ��������  ��  ��   n  o p o l     ��������  ��  ��   p  q r q l     �� s t��   s 6 0 #! run python script to generate pdf from latex    t � u u `   # !   r u n   p y t h o n   s c r i p t   t o   g e n e r a t e   p d f   f r o m   l a t e x r  v w v l     ��������  ��  ��   w  x y x l     �� z {��   z   set lstNote to {"1+1=2"}    { � | | 2   s e t   l s t N o t e   t o   { " 1 + 1 = 2 " } y  } ~ } l     ��  ���    7 1 set strNoteQ to quoted form of item 1 of lstNote    � � � � b   s e t   s t r N o t e Q   t o   q u o t e d   f o r m   o f   i t e m   1   o f   l s t N o t e ~  � � � l     �� � ���   �  set strNoteQ to "1+1=2"    � � � � . s e t   s t r N o t e Q   t o   " 1 + 1 = 2 " �  � � � l      �� � ���   � ` Z fInclude the .bash_profile!  - otherwise latex, dvips and epstopdf do not know how to run    � � � � �   f I n c l u d e   t h e   . b a s h _ p r o f i l e !     -   o t h e r w i s e   l a t e x ,   d v i p s   a n d   e p s t o p d f   d o   n o t   k n o w   h o w   t o   r u n �  � � � l  I Z ����� � I  I Z�� ���
�� .sysoexecTEXT���     TEXT � b   I V � � � b   I R � � � b   I N � � � m   I L � � � � � 6 s o u r c e   ~ / . b a s h _ p r o f i l e ;   c d   � o   L M���� 0 presentdirstr presentDirStr � m   N Q � � � � � : ;   p y t h o n   c r e a t e _ l a t e x _ p d f . p y   � o   R U���� 0 strnoteq strNoteQ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � / ) #! select the path where the pdf resides    � � � � R   # !   s e l e c t   t h e   p a t h   w h e r e   t h e   p d f   r e s i d e s �  � � � l     ��������  ��  ��   �  � � � l  [ d ����� � r   [ d � � � b   [ ` � � � o   [ \���� 0 
presentdir 
presentDir � m   \ _ � � � � �  t e m p - c r o p . p d f � o      ���� 0 pdfpath pdfPath��  ��   �  � � � l  e q ����� � r   e q � � � 4   e m�� �
�� 
psxf � o   i l���� 0 pdfpath pdfPath � o      ���� 0 pdffile pdfFile��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � H B #! set the pdf to a file attachment of the currently selected row    � � � � �   # !   s e t   t h e   p d f   t o   a   f i l e   a t t a c h m e n t   o f   t h e   c u r r e n t l y   s e l e c t e d   r o w �  � � � l  r � ����� � O   r � � � � k   { � � �  � � � l  { {��������  ��  ��   �  � � � r   { � � � � n   { � � � � 1    ���
�� 
OOTc � 4  { �� �
�� 
OOsr � m   } ~����  � o      ���� 0 
targetcell 
targetCell �  � � � l  � ��� � ���   � &  set text of targetCell to "Bam!"    � � � � @ s e t   t e x t   o f   t a r g e t C e l l   t o   " B a m ! " �  � � � l  � ���������  ��  ��   �  � � � O   � � � � � k   � � � �  � � � I  � ����� �
�� .corecrel****      � null��   � � � �
� 
kocl � m   � ��~
�~ 
OSfA � �} � �
�} 
prdt � K   � � � � �| � �
�| 
atfn � o   � ��{�{ 0 pdffile pdfFile � �z ��y
�z 
OSin � m   � ��x
�x boovtrue�y   � �w ��v
�w 
insh � n   � � � � �  ;   � � � 2  � ��u
�u 
cha �v   �  � � � l  � ��t � ��t   � z tmake new file attachment with properties {file name:POSIX file myAttachmentPath, embedded:true} at end of characters    � � � � � m a k e   n e w   f i l e   a t t a c h m e n t   w i t h   p r o p e r t i e s   { f i l e   n a m e : P O S I X   f i l e   m y A t t a c h m e n t P a t h ,   e m b e d d e d : t r u e }   a t   e n d   o f   c h a r a c t e r s �  ��s � l  � ��r�q�p�r  �q  �p  �s   � n   � � � � � m   � ��o
�o 
ctxt � o   � ��n�n 0 
targetcell 
targetCell �  ��m � l  � ��l�k�j�l  �k  �j  �m   � n   r x � � � 4  u x�i �
�i 
docu � m   v w�h�h  � m   r u � ��                                                                                  OOut  alis    f  Macintosh HD               ��&�H+  ��8OmniOutliner.app                                               Hk���        ����  	                Applications    ���      ���    ��8  +Macintosh HD:Applications: OmniOutliner.app   "  O m n i O u t l i n e r . a p p    M a c i n t o s h   H D  Applications/OmniOutliner.app   / ��  ��  ��   �  � � � l     �g�f�e�g  �f  �e   �  � � � l     �d�c�b�d  �c  �b   �  � � � l     �a�`�_�a  �`  �_   �  � � � l     �^�]�\�^  �]  �\   �  � � � l     �[�Z�Y�[  �Z  �Y   �  � � � l     �X�W�V�X  �W  �V   �  ��U � l     �T�S�R�T  �S  �R  �U       �Q �Q    �P
�P .aevtoappnull  �   � **** �O�N�M�L
�O .aevtoappnull  �   � **** k     �       '  A		  F

  U  \  �  �  �  ��K�K  �N  �M     ( �J�I�H�G�F�E�D�C�B S�A�@�?�>�=�<�;�:�9 � ��8 ��7�6�5 ��4�3�2�1�0�/�.�-�,�+�*�)
�J .earsffdralis        afdr
�I 
cfol
�H 
utxt
�G 
rslt
�F 
psxp�E 0 
presentdir 
presentDir�D 0 presentdirstr presentDirStr�C 0 lstnote lstNote
�B 
capp
�A kfrmID  
�@ 
docu
�? 
OOsr
�> 
OOnt
�= 
ctxt�< 0 strnote strNote
�; 
cobj
�: 
strq�9 0 strnoteq strNoteQ
�8 .sysoexecTEXT���     TEXT�7 0 pdfpath pdfPath
�6 
psxf�5 0 pdffile pdfFile
�4 
OOTc�3 0 
targetcell 
targetCell
�2 
kocl
�1 
OSfA
�0 
prdt
�/ 
atfn
�. 
OSin�- 
�, 
insh
�+ 
cha �* 
�) .corecrel****      � null�L �� )j �,�&UO��,E�O�E�OjvE�O)���0 *�k/�-�,E�UO��&E` O�a k/a ,E` Oa �%a %_ %j O�a %E` O*a _ /E` Oa �k/ C*�k/a ,E` O_ �- +*a a a  a !_ a "ea #a $*a %-6a & 'OPUOPU ascr  ��ޭ