import { OrderState } from './orderstate'
import { Product } from './product'
import { User } from './user'
export class Order {
  "id": number;
  "description": string;
  "orderDate": string;
  "user": User;
  "orderState": OrderState;
  "products": Product[];
}