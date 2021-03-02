class CompanySize < ActiveHash::Base
  self.data = [
      {id: 1, name: '大企業'},
      {id: 2, name: '中規模企業'},
      {id: 3, name: '小規模事業者'},
      {id: 4, name: '個人'},
  ]

end