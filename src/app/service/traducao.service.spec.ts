import { TestBed } from '@angular/core/testing';

import { TraducaoService } from './traducao.service';

describe('TraducaoService', () => {
  let service: TraducaoService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(TraducaoService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
