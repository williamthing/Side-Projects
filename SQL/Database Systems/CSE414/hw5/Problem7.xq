(: William Thing (1266987)
   CSE 414
   Homework 5
:)

(: Problem 7. :)

<result>
<waterbody> <name>Pacific Ocean </name>
{
for $x in doc("mondial.xml")/mondial
for	$y in $x/sea[name = "Pacific Ocean"]
	let $a := fn:tokenize($y/@country, " ")	
	return
		<adjacent_countries>
		{
			for $b in $a
			return <country><name>{ $x/country[@car_code = $b]/name/text()}</name></country>
		}
		</adjacent_countries>
}
</waterbody>
</result>

(: Results
<?xml version="1.0" encoding="UTF-8"?>
<result>
  <waterbody>
    <name>Pacific Ocean </name>
    <adjacent_countries>
      <country>
        <name>Russia</name>
      </country>
      <country>
        <name>Japan</name>
      </country>
      <country>
        <name>Maldives</name>
      </country>
      <country>
        <name>Philippines</name>
      </country>
      <country>
        <name>Taiwan</name>
      </country>
      <country>
        <name>Guatemala</name>
      </country>
      <country>
        <name>Mexico</name>
      </country>
      <country>
        <name>Canada</name>
      </country>
      <country>
        <name>United States</name>
      </country>
      <country>
        <name>Costa Rica</name>
      </country>
      <country>
        <name>Nicaragua</name>
      </country>
      <country>
        <name>Panama</name>
      </country>
      <country>
        <name>El Salvador</name>
      </country>
      <country>
        <name>Honduras</name>
      </country>
      <country>
        <name>Colombia</name>
      </country>
      <country>
        <name>Australia</name>
      </country>
      <country>
        <name>Fiji</name>
      </country>
      <country>
        <name>Kiribati</name>
      </country>
      <country>
        <name>Marshall Islands</name>
      </country>
      <country>
        <name>Micronesia</name>
      </country>
      <country>
        <name>Nauru</name>
      </country>
      <country>
        <name>New Zealand</name>
      </country>
      <country>
        <name>Palau</name>
      </country>
      <country>
        <name>Solomon Islands</name>
      </country>
      <country>
        <name>Tonga</name>
      </country>
      <country>
        <name>Tuvalu</name>
      </country>
      <country>
        <name>Vanuatu</name>
      </country>
      <country>
        <name>Samoa</name>
      </country>
      <country>
        <name>Chile</name>
      </country>
      <country>
        <name>Peru</name>
      </country>
      <country>
        <name>Ecuador</name>
      </country>
      <country>
        <name>Indonesia</name>
      </country>
      <country>
        <name>Papua New Guinea</name>
      </country>
      <country>
        <name>New Caledonia</name>
      </country>
      <country>
        <name>Niue</name>
      </country>
      <country>
        <name>Northern Mariana Islands</name>
      </country>
      <country>
        <name>Pitcairn Islands</name>
      </country>
      <country>
        <name>Wallis and Futuna</name>
      </country>
      <country>
        <name>American Samoa</name>
      </country>
      <country>
        <name>Cook Islands</name>
      </country>
      <country>
        <name>French Polynesia</name>
      </country>
      <country>
        <name>Guam</name>
      </country>
      <country>
        <name>Norfolk Island</name>
      </country>
    </adjacent_countries>
  </waterbody>
</result>

:)