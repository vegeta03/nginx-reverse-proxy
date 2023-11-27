import { CommonModule } from '@angular/common';
import { ChangeDetectionStrategy, Component } from '@angular/core';

@Component({
  selector: 'app-second-page',
  standalone: true,
  imports: [
    CommonModule,
  ],
  templateUrl: './second-page.component.html',
  styleUrl: './second-page.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class SecondPageComponent { }
