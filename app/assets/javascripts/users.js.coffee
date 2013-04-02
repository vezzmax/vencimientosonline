# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$.extend $.fn.dataTableExt.oStdClasses,
  sSortable: "header"
  sSortAsc: "header headerSortDown"
  sSortDesc: "header headerSortUp"

$(document).ready ->
  $("#expirations").dataTable
    #bInfo: false
    #sScrollX: "100%"
    #sScrollY: "500px"
    #sPaginationType: "bootstrap"
    #bPaginate: false
  	sDom: "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span6'p>>"   
  	oLanguage:
      sLengthMenu: "Mostrar _MENU_ entradas"
      sInfo: "Se obtuvo un total de _TOTAL_ entradas para mostrar (_START_ a _END_)"
      sSearch: "Buscar:"
      sNext: "Siguiente"
      sPrevious: "Anterior"



