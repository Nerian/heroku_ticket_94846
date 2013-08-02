class Test < Thor
  include Thor::Actions

  # ➜  heroku_ruby_version git:(master) ✗ thor test:example1
  #      run  heroku run ruby -v from "."
  # Your Ruby version is 1.9.3, but your Gemfile specified 2.0.0

  desc "example1", ''
  def example1
    run('heroku run ruby -v')
  end

  # ➜  heroku_ruby_version git:(master) ✗ thor test:example2
  #      run  heroku run ruby -v -a kwjfbkaewjffhaskjlejfhjkrsfgrskjaLDENFJRWHVJENEKLNKLnlknlkdnlskvnslknvlksenlsk from "."
  # Your Ruby version is 1.9.3, but your Gemfile specified 2.0.0

  desc "example2", 'It fails at the heroku toolbelt level'
  def example2
    run('heroku run ruby -v -a kwjfbkaewjffhaskjlejfhjkrsfgrskjaLDENFJRWHVJENEKLNKLnlknlkdnlskvnslknvlksenlsk')
  end

  # ➜  heroku_ruby_version git:(master) ✗ thor test:example3
  #          run  ruby -v from "."
  # ruby 2.0.0p247 (2013-06-27 revision 41674) [x86_64-darwin12.4.0]
  desc "example3", ''
  def example3
    run("ruby -v")
  end

  # ➜  heroku_ruby_version git:(master) ✗ thor test:example4
  #          run  heroku ps --help from "."
  # Your Ruby version is 1.9.3, but your Gemfile specified 2.0.0
  desc "example4", ''
  def example4
    run("heroku ps --help")
  end

end