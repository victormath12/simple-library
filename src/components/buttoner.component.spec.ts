import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ButtonerComponent } from './buttoner.component';

describe('ButtonerComponent', () => {
  let component: ButtonerComponent;
  let fixture: ComponentFixture<ButtonerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ButtonerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ButtonerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
