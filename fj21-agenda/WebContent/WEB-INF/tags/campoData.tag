<%@ attribute name="id" required="true" %>
<%@ attribute name="placeholder" required="false"  %>

<input type="text" id="${id}" name="${id}" placeholder="${placeholder}" />

<script>
	$("#${id}").datepicker({dateFormat: 'dd/mm/yy'})
</script>