$TTL  604800
@        IN    SOA     ns.l2-8.ephec-ti.be. kouetcheu.ephec.be (
                                  1           ; Serial
                                  604800      ; Refresh
                                  86400       ; Retry
                                  2419200     ; Expire
                                  604800 )    ; Negative Cache TTL
;
@           IN     NS      ns.l2-8.ephec-ti.be.
@           IN     MX      10 mail
;
ns          IN      A       135.125.101.192
b2b         IN      A       135.125.101.192
www         IN      A       135.125.101.192
sip         IN      A       135.125.101.192
mail        IN      A       135.125.101.192
_sip._udp		SRV	0	0	5060	sip
_sip._tcp		SRV 0	0	5060	sip
;
smtp        IN      CNAME    mail
imap        IN      CNAME    mail

;