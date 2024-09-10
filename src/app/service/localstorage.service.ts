import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class LocalstorageService {
  private storage!: Storage;
  constructor() {
    this.storage = window.localStorage;
  }
  set(key: string, value: any): boolean {
    if (this.storage) {
      this.storage.setItem(key, JSON.stringify(value));
      return true;
    }
    return false;
  }
  get(key: string): any {
    if (this.storage) {
      let valor = '';
      try {
        valor = JSON.parse(String(this.storage.getItem(key)));
      } catch (e: any) {
        console.error(e.getMessage());
      } finally {
        return valor;
      }
    }
 
  }
  remove(key: string): boolean {
    if (this.storage) {
      this.storage.removeItem(key);
      return true;
    }
    return false;
  }
  clear(): boolean {
    if (this.storage) {
      this.storage.clear();
      return true;
    }
    return false;
  }
}
