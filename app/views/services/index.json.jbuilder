json.array!(@services) do |service|
  json.extract! service, :id, :user_id, :bk_web, :bk_glpi, :bk_diarias, :bk_ldap, :bkp_dns, :bk_pagina, :bk_mentor, :bk_dhcp, :bk_opera, :bk_abacus, :bk_sisconsig, :bk_antivirus, :bk_sigadaer, :bk_email, :bk_atis, :ck_sala, :ck_xen, :ck_virtuais, :ck_intraer, :ck_internet, :ck_pagina, :ck_email, :ck_sigadaer, :ck_sims, :dia_semana, :alteracoes
  json.url service_url(service, format: :json)
end
