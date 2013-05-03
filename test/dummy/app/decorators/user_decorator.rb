class UserDecorator < Draper::Decorator
  delegate_all

  include Draper::LazyHelpers

  def avatar(size = nil)
    if provider == 'neubt'
      "http://bt.neu6.edu.cn/uc_server/avatar.php?uid=#{source.uid}&size=#{size}"
    end
  end

end
