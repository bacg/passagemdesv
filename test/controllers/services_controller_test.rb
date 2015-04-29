require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post :create, service: { alteracoes: @service.alteracoes, bk_abacus: @service.bk_abacus, bk_antivirus: @service.bk_antivirus, bk_atis: @service.bk_atis, bk_dhcp: @service.bk_dhcp, bk_diarias: @service.bk_diarias, bk_email: @service.bk_email, bk_glpi: @service.bk_glpi, bk_ldap: @service.bk_ldap, bk_mentor: @service.bk_mentor, bk_opera: @service.bk_opera, bk_pagina: @service.bk_pagina, bk_sigadaer: @service.bk_sigadaer, bk_sisconsig: @service.bk_sisconsig, bk_web: @service.bk_web, bkp_dns: @service.bkp_dns, ck_email: @service.ck_email, ck_internet: @service.ck_internet, ck_intraer: @service.ck_intraer, ck_pagina: @service.ck_pagina, ck_sala: @service.ck_sala, ck_sigadaer: @service.ck_sigadaer, ck_sims: @service.ck_sims, ck_virtuais: @service.ck_virtuais, ck_xen: @service.ck_xen, dia_semana: @service.dia_semana, user_id: @service.user_id }
    end

    assert_redirected_to service_path(assigns(:service))
  end

  test "should show service" do
    get :show, id: @service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service
    assert_response :success
  end

  test "should update service" do
    patch :update, id: @service, service: { alteracoes: @service.alteracoes, bk_abacus: @service.bk_abacus, bk_antivirus: @service.bk_antivirus, bk_atis: @service.bk_atis, bk_dhcp: @service.bk_dhcp, bk_diarias: @service.bk_diarias, bk_email: @service.bk_email, bk_glpi: @service.bk_glpi, bk_ldap: @service.bk_ldap, bk_mentor: @service.bk_mentor, bk_opera: @service.bk_opera, bk_pagina: @service.bk_pagina, bk_sigadaer: @service.bk_sigadaer, bk_sisconsig: @service.bk_sisconsig, bk_web: @service.bk_web, bkp_dns: @service.bkp_dns, ck_email: @service.ck_email, ck_internet: @service.ck_internet, ck_intraer: @service.ck_intraer, ck_pagina: @service.ck_pagina, ck_sala: @service.ck_sala, ck_sigadaer: @service.ck_sigadaer, ck_sims: @service.ck_sims, ck_virtuais: @service.ck_virtuais, ck_xen: @service.ck_xen, dia_semana: @service.dia_semana, user_id: @service.user_id }
    assert_redirected_to service_path(assigns(:service))
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete :destroy, id: @service
    end

    assert_redirected_to services_path
  end
end
