# manifests/prople/manifests/decobisu.pp

# FinderやDockの設定、site.ppに追加したものをinclude宣言したりする
# githubのリポジトリからdotfileを落としてきたりもできる

class people::decobisu {

# ここに記載

	# include lib
	include java
	include php::5_4
  include wget
  include autoconf
  include libtool
  include pcre
  include libpng
  include pkgconfig

	# local application
	include iterm2::stable
  include skype

  package {
    'Kobito':
      source    => "http://kobito.qiita.com/download/Kobito_v1.8.6.zip",
      provider  => compressed_app;
  }
}
