@AbapCatalog.sqlViewName: 'ZMONTHEXERCISE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Tutorial example: Juri Kostik'
define view Z_MONTH_EXERCISE_1_JK
  with parameters
    p_mydate : ebdat
  as select from ekko
{
  ebeln as ebeln,
  bedat as bedat
}
where bedat > DATS_ADD_MONTHS(:p_mydate, -24, 'NULL') and bedat < DATS_ADD_MONTHS(:p_mydate, -12, 'NULL')
