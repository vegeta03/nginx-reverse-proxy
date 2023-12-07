import { CommonModule } from '@angular/common';
import { ChangeDetectionStrategy, Component } from '@angular/core';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-second-page',
  standalone: true,
  imports: [
    CommonModule,
    RouterLink
  ],
  templateUrl: './second-page.component.html',
  styleUrl: './second-page.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class SecondPageComponent { }
