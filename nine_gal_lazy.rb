#!/usr/bin/env ruby
require 'yaml'
require 'mechanize'

def nine_gal_click
  account = YAML.load_file 'account.yml'

  m = Mechanize.new
  m.user_agent_alias = 'Windows Chrome'

  m.get('http://bbs.9gal.com/') do |index|
    index.form_with(:action => 'login.php?') do |f|
      f.pwuser = account['9gal']['username']
      f.pwpwd = account['9gal']['password']
    end.click_button
    secret_box_page = m.click(index.link_with(text: /神秘盒子/))

    # secret box
    secret_box_page.links[-2].click
    # ad
    # though we only need click once to get 10000 scores everyday
    # but this is convenient to put here together with secret box
    # and do not separate into two scripts
    secret_box_page.links[5].click

    # refresh page in order to get KFB value
    m.get('http://bbs.9gal.com/') { |page| puts /KFB[\d]+/.match(page.body)[0] }
  end
end