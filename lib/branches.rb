require "branches/version"

module Branches
  class Commands
    def show_branches_by_date
      puts %x[git for-each-ref --sort=-committerdate refs/heads/ --format='%(committerdate:short) %(refname:short)']
    end
  end
end
