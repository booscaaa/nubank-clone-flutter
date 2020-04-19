class PageProvider {
  Future<List> getPages() async {
    return [
      {
        "type": 1,
        "title": "Cartão de crédito",
        "value": "R\$ 3.000,00",
        "description": "Último pagamento de R\$ 1000,00"
      },
      {
        'type': 2,
        'title': 'Conta',
        'value': 'R\$ 1.550,00',
        'description': 'Último deposito de R\$ 150,00'
      },
      {
        'type': 3,
        'title': 'Rewards',
        'value': 'Nubank Rewards',
        'description':
            'Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.'
      }
    ];
  }
}
