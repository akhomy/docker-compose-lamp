### Example of run full stack lamp
Includes PhpMyAdmin, PHP-FPM(5 or 7), NGINX, Apache2-MPM, MailHog.

### How to run
Run as usual, inside folder with docker-compose.yml: <code>docker-compose up -d</code>

### Special info
<p>This example include php5-fpm, nginx(optional), apache2 mpm, mysql, mailhog, phpmyadmin.</p>
<p>You could view site info with <stong>NGINX</stong> by link http://locahost:8005/info.php or by ip http://172.55.0.6/info.php</p>
<p>You could view site info with <strong>Apache2-MPM</strong> by link http://locahost:8004/info.php or by ip http://172.55.0.5/info.php</p>
<p> <stong>PhpMyAdmin</stong> is available under 172.55.0.3</p>
<p> <stong>MailHog</stong> is available under 172.55.0.7:8025 </p>
<p> More details about avaialable ENV variables are inside images READMEs: </p>
<ul>
<li>https://github.com/a-kom/alpine-php_fpm</li>
<li>https://github.com/a-kom/alpine-nginx</li>
<li>https://github.com/a-kom/alpine-apache</li>
</ul>
