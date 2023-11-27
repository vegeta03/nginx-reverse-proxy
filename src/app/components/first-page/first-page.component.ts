import { CommonModule } from '@angular/common';
import { ChangeDetectionStrategy, Component } from '@angular/core';

@Component({
  selector: 'app-first-page',
  standalone: true,
  imports: [
    CommonModule,
  ],
  templateUrl: './first-page.component.html',
  styleUrl: './first-page.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class FirstPageComponent { }
