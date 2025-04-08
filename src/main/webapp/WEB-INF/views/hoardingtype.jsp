
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select Type Of Hoarding</title>
</head>
<body>
<h2>Select Hoarding Type</h2>

<form action="hoarding.jsp" method="GET">
    <label for="hoardingtype">Hoarding Type:</label>
    <select id="hoardingtype" name="hoardingtype">
        <option value="">-- Select Hoarding Type --</option>
        <option value="Billboard">Billboard Hoarding</option>
        <option value="Digital">Digital Hoarding</option>
        <option value="Bridge">Bridge Panel Hoarding</option>
        <option value="Transit">Transit Hoarding</option>
        <option value="Mall">Mall Branding Hoarding</option>
    </select>
    <button type="submit">Next</button>
</form>

</body>
</html>
