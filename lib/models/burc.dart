class Burc{
  String _burcAdi, _burcTarihi, _burcDetayi, _burcKucukResim, _burcBuyukResim;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucukResim,
      this._burcBuyukResim);

  get burcBuyukResim => _burcBuyukResim;

  set burcBuyukResim(value) {
    _burcBuyukResim = value;
  }

  get burcKucukResim => _burcKucukResim;

  set burcKucukResim(value) {
    _burcKucukResim = value;
  }

  get burcDetayi => _burcDetayi;

  set burcDetayi(value) {
    _burcDetayi = value;
  }

  get burcTarihi => _burcTarihi;

  set burcTarihi(value) {
    _burcTarihi = value;
  }

  String get burcAdi => _burcAdi;

  set burcAdi(String value) {
    _burcAdi = value;
  }
}