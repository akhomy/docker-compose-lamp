<?php
if( mail('mail@serversforhackers.com', 'Feedback', 'This is so useful, thanks!') )
{
    echo "Mail Sent!";
}else{
   echo "Mail don't sent!";
}

