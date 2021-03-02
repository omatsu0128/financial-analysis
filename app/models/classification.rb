class Classification < ActiveHash::Base
  self.data = [
      {id: 1, name: '正常先'},
      {id: 2, name: 'その他要注意先'},
      {id: 3, name: '要管理先'},
      {id: 4, name: '破綻懸念先'},
      {id: 5, name: '実質破綻先'},
      {id: 6, name: '破綻先'},
  ]

end