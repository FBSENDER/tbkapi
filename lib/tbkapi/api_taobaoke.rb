module Tbkapi
  class Taobaoke

    include Tbkapi

    def taobao_tbk_items_get(keyword, api_key, secret, page_size = 20)
      action_params = {
        fields: "num_iid,seller_id,nick,title,volume,pic_url,item_url,shop_url,click_url",
        keyword: keyword,
        page_size: page_size
      }
      params = system_params("taobao.tbk.items.get",api_key).merge(action_params)
      my_sign = get_sign(params, secret).upcase
      HTTParty.get(TBURI, query: params.merge({sign: my_sign}))
    end

  end
end
