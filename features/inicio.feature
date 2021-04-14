Feature: Toque y fama

Scenario: Bienvenida
When inicio de la aplicación
Then muestra "Bienvenido a toque y fama"

Scenario: Elije un numero y gana
Given inicio de la aplicación
When elije el 2153
Then muestra mensaje "YOU WIN"

Scenario: Sin toques
Given inicio de la aplicación
When elije el 4678
Then muestra mensaje ""

Scenario: Dos toques
Given inicio de la aplicación
When elije el 5378
Then muestra mensaje "**"

Scenario: Cuatro toques
Given inicio de la aplicación
When elije el 5321
Then muestra mensaje "****"

Scenario: Una Fama
Given inicio de la aplicación
When elije el 2678
Then muestra mensaje "!"