export type Category = {
  id: number;
  name: string;
};

export type Product = {
  id: number;
  name: string;
  price: number;
  _idCategory: number;
};

export type SoldProduct = {
  id: number;
  _idProduct: number;
  _idSaleInvoice: number;
  _idUnit: number;
};

export type PurchasedProduct = {
  id: number;
  _idProduct: number;
  _idSaleInvoice: number;
  _idUnit: number;
};

export type Unit = {
  id: number;
  _idProduct: number;
};

export type ProviderInvoice = {
  id: number;
  _idProvider: number;
  date: Date;
  total: number;
};

export type Provider = {
  id: number;
  name: string;
  address: string;
  phone: string;
};

export type SaleInvoice = {
  id: number;
  NIT: string;
  _idEmployee: number;
  _idCashRegister: number;
  date: Date;
  total: number;
};

export type Client = {
  NIT: string;
  name: string;
  lastName: string;
  address: string;
};

export type CashRegister = {
  id: number;
  cashRegisterType: string;
};

export type Employee = {
  id: number;
  salary: number;
  name: string;
  lastName: string;
  phone: string;
  _idCashRegister: number;
};
