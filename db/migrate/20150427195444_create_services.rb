class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :user, index: true
      t.boolean :bk_web
      t.boolean :bk_glpi
      t.boolean :bk_diarias
      t.boolean :bk_ldap
      t.boolean :bkp_dns
      t.boolean :bk_pagina
      t.boolean :bk_mentor
      t.boolean :bk_dhcp
      t.boolean :bk_opera
      t.boolean :bk_abacus
      t.boolean :bk_sisconsig
      t.boolean :bk_antivirus
      t.boolean :bk_sigadaer
      t.boolean :bk_email
      t.boolean :bk_atis
      t.boolean :ck_sala
      t.boolean :ck_xen
      t.boolean :ck_virtuais
      t.boolean :ck_intraer
      t.boolean :ck_internet
      t.boolean :ck_pagina
      t.boolean :ck_email
      t.boolean :ck_sigadaer
      t.boolean :ck_sims
      t.string :dia_semana
      t.text :alteracoes

      t.timestamps null: false
    end
    add_foreign_key :services, :users
  end
end
