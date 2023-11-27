import { Routes } from '@angular/router';

import { FirstPageComponent, SecondPageComponent } from './components';

export const routes: Routes = [
  { path: 'second', component: SecondPageComponent },
  { path: 'first', component: FirstPageComponent },
  { path: '**', pathMatch: 'full', redirectTo: 'first' },
  { path: '', pathMatch: 'full', redirectTo: 'first' },
];
