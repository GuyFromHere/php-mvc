<div class="col sm12 m7">
	<div id="toolBar1">
		<select
			onchange="formatDoc('formatblock',this[this.selectedIndex].value);this.selectedIndex=0;"
			class="moztext-select"
		>
			<option selected>- formatting -</option>
			<option value="h1">Title 1 &lt;h1&gt;</option>
			<option value="h2">Title 2 &lt;h2&gt;</option>
			<option value="h3">Title 3 &lt;h3&gt;</option>
			<option value="h4">Title 4 &lt;h4&gt;</option>
			<option value="h5">Title 5 &lt;h5&gt;</option>
			<option value="h6">Subtitle &lt;h6&gt;</option>
			<option value="p">Paragraph &lt;p&gt;</option>
			<option value="pre">Preformatted &lt;pre&gt;</option>
		</select>
		<select
			onchange="formatDoc('fontname',this[this.selectedIndex].value);this.selectedIndex=0;"
			class="moztext-select"
		>
			<option class="heading" selected>- font -</option>
			<option>Arial</option>
			<option>Arial Black</option>
			<option>Courier New</option>
			<option>Times New Roman</option>
		</select>
		<select
			onchange="formatDoc('fontsize',this[this.selectedIndex].value);this.selectedIndex=0;"
			class="moztext-select"
			
		>
			<option class="heading" selected>- size -</option>
			<option value="1">Very small</option>
			<option value="2">A bit small</option>
			<option value="3">Normal</option>
			<option value="4">Medium-large</option>
			<option value="5">Big</option>
			<option value="6">Very big</option>
			<option value="7">Maximum</option>
		</select>
		<select
			onchange="formatDoc('forecolor',this[this.selectedIndex].value);this.selectedIndex=0;"
			class="moztext-select"
		>
			<option class="heading" selected>- color -</option>
			<option value="red">Red</option>
			<option value="blue">Blue</option>
			<option value="green">Green</option>
			<option value="black">Black</option>
		</select>
		<select
			onchange="formatDoc('backcolor',this[this.selectedIndex].value);this.selectedIndex=0;"
			class="moztext-select"
		>
			<option class="heading" selected>- background -</option>
			<option value="red">Red</option>
			<option value="green">Green</option>
			<option value="black">Black</option>
		</select>
	</div>
</div>
<div class="col sm12 m5">
	<div id="toolBar2">
		<img
			class="intLink"
			title="Bold"
			onclick="formatDoc('bold');"
			src="data:image/gif;base64,R0lGODlhFgAWAID/AMDAwAAAACH5BAEAAAAALAAAAAAWABYAQAInhI+pa+H9mJy0LhdgtrxzDG5WGFVk6aXqyk6Y9kXvKKNuLbb6zgMFADs="
		/>
		<img
			class="intLink"
			title="Italic"
			onclick="formatDoc('italic');"
			src="data:image/gif;base64,R0lGODlhFgAWAKEDAAAAAF9vj5WIbf///yH5BAEAAAMALAAAAAAWABYAAAIjnI+py+0Po5x0gXvruEKHrF2BB1YiCWgbMFIYpsbyTNd2UwAAOw=="
		/>
		<img
			class="intLink"
			title="Underline"
			onclick="formatDoc('underline');"
			src="data:image/gif;base64,R0lGODlhFgAWAKECAAAAAF9vj////////yH5BAEAAAIALAAAAAAWABYAAAIrlI+py+0Po5zUgAsEzvEeL4Ea15EiJJ5PSqJmuwKBEKgxVuXWtun+DwxCCgA7"
		/>
		<img
			class="intLink"
			title="Left align"
			onclick="formatDoc('justifyleft');"
			src="data:image/gif;base64,R0lGODlhFgAWAID/AMDAwAAAACH5BAEAAAAALAAAAAAWABYAQAIghI+py+0Po5y02ouz3jL4D4JMGELkGYxo+qzl4nKyXAAAOw=="
		/>
		<img
			class="intLink"
			title="Center align"
			onclick="formatDoc('justifycenter');"
			src="data:image/gif;base64,R0lGODlhFgAWAID/AMDAwAAAACH5BAEAAAAALAAAAAAWABYAQAIfhI+py+0Po5y02ouz3jL4D4JOGI7kaZ5Bqn4sycVbAQA7"
		/>
		<img
			class="intLink"
			title="Right align"
			onclick="formatDoc('justifyright');"
			src="data:image/gif;base64,R0lGODlhFgAWAID/AMDAwAAAACH5BAEAAAAALAAAAAAWABYAQAIghI+py+0Po5y02ouz3jL4D4JQGDLkGYxouqzl43JyVgAAOw=="
		/>
		<img
			class="intLink"
			title="Numbered list"
			onclick="formatDoc('insertorderedlist');"
			src="data:image/gif;base64,R0lGODlhFgAWAMIGAAAAADljwliE35GjuaezxtHa7P///////yH5BAEAAAcALAAAAAAWABYAAAM2eLrc/jDKSespwjoRFvggCBUBoTFBeq6QIAysQnRHaEOzyaZ07Lu9lUBnC0UGQU1K52s6n5oEADs="
		/>
		<img
			class="intLink"
			title="Dotted list"
			onclick="formatDoc('insertunorderedlist');"
			src="data:image/gif;base64,R0lGODlhFgAWAMIGAAAAAB1ChF9vj1iE33mOrqezxv///////yH5BAEAAAcALAAAAAAWABYAAAMyeLrc/jDKSesppNhGRlBAKIZRERBbqm6YtnbfMY7lud64UwiuKnigGQliQuWOyKQykgAAOw=="
		/>
		<img
			class="intLink"
			title="Quote"
			onclick="formatDoc('formatblock','blockquote');"
			src="data:image/gif;base64,R0lGODlhFgAWAIQXAC1NqjFRjkBgmT9nqUJnsk9xrFJ7u2R9qmKBt1iGzHmOrm6Sz4OXw3Odz4Cl2ZSnw6KxyqO306K63bG70bTB0rDI3bvI4P///////////////////////////////////yH5BAEKAB8ALAAAAAAWABYAAAVP4CeOZGmeaKqubEs2CekkErvEI1zZuOgYFlakECEZFi0GgTGKEBATFmJAVXweVOoKEQgABB9IQDCmrLpjETrQQlhHjINrTq/b7/i8fp8PAQA7"
		/>
		<img
			class="intLink"
			title="Add indentation"
			onclick="formatDoc('outdent');"
			src="data:image/gif;base64,R0lGODlhFgAWAMIHAAAAADljwliE35GjuaezxtDV3NHa7P///yH5BAEAAAcALAAAAAAWABYAAAM2eLrc/jDKCQG9F2i7u8agQgyK1z2EIBil+TWqEMxhMczsYVJ3e4ahk+sFnAgtxSQDqWw6n5cEADs="
		/>
		<img
			class="intLink"
			title="Delete indentation"
			onclick="formatDoc('indent');"
			src="data:image/gif;base64,R0lGODlhFgAWAOMIAAAAADljwl9vj1iE35GjuaezxtDV3NHa7P///////////////////////////////yH5BAEAAAgALAAAAAAWABYAAAQ7EMlJq704650B/x8gemMpgugwHJNZXodKsO5oqUOgo5KhBwWESyMQsCRDHu9VOyk5TM9zSpFSr9gsJwIAOw=="
		/>
		<img
			class="intLink"
			title="Hyperlink"
			onclick="var sLnk=prompt('Write the URL here','http:\/\/');if(sLnk&&sLnk!=''&&sLnk!='http://'){formatDoc('createlink',sLnk)}"
			src="data:image/gif;base64,R0lGODlhFgAWAOMKAB1ChDRLY19vj3mOrpGjuaezxrCztb/I19Ha7Pv8/f///////////////////////yH5BAEKAA8ALAAAAAAWABYAAARY8MlJq7046827/2BYIQVhHg9pEgVGIklyDEUBy/RlE4FQF4dCj2AQXAiJQDCWQCAEBwIioEMQBgSAFhDAGghGi9XgHAhMNoSZgJkJei33UESv2+/4vD4TAQA7"
		/>
	</div>
</div>