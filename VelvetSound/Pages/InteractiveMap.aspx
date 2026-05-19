<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Homepage.Master" AutoEventWireup="true" CodeBehind="InteractiveMap.aspx.cs" Inherits="VelvetSound.Pages.Interactive_map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <style>
     @font-face {
    font-family: 'Elven Common Speak';          
    src: url('fonts/elvencommonspeak.ttf') format('truetype');
}
        h1,h2,p,button{
            color:goldenrod;
           font-family:'Elven Common Speak';
        }
    </style>
    <h1>Interactive Map Of Middle-Earth!</h1>
    <p style="height: 54px; width: 1943px;">
 On this page you can explore an interactive map of Middle-earth. <br />
        You can click on different places on the map to learn more about them and see where important events from The Lord of the Rings happened.
    </p>
    <div style="display:flex; gap:20px; align-items:flex-start; flex-wrap:wrap;">
    <div style="position:relative; width:800px;">
 
        <img src="///images/MiddleEarthMap.jpg" alt="Map of Middle-earth" style="max-width:600px; width:132%; height:auto; border:2px solid #fff; border-radius:8px; margin-left: 212px;" />
   
    
        <button type="button" class="map-btn"
                style="top:203px; left:455px;"
                onclick="showInfo('The Shire', 'A peaceful land where the hobbits live. This is where Frodo, Sam, Merry and Pippin come from.');">
            The Shire
        </button>

      
        <button type="button"  class="map-btn"
                style="top:459px; left:714px;"
                onclick="showInfo('Rohan', 'The land of the horse-lords who ride into battle against Sauron’s forces.');">
            Rohan
        </button>

        <button type="button" class="map-btn"
                style="top:547px; left:655px; margin-top: 1px;"
                onclick="showInfo('Gondor', 'A great kingdom of men with the white city of Minas Tirith on the front line against Mordor.');">
            Gondor</button>

    
        <button type="button" class="map-btn"
                style="top:599px; left:1050px; height: 24px; width: 52px;"
                onclick="showInfo('Mordor', 'The dark land of Sauron. Mount Doom is here, where the One Ring must be destroyed.');">
            Mordor
        </button>
        <button type="button"  class="map-btn" style="top:309px; left:412px;"
    onclick="showInfo('Hobbiton', 'A village inside the Shire. Bag End is located here.');">
    Hobbiton
</button>
<button type="button"  class="map-btn" style="top:398px; left:478px;"
    onclick="showInfo('Bree', 'A town where Men and Hobbits live together. Frodo meets Aragorn at the Prancing Pony.');">
    Bree
</button>
        <button type="button"  class="map-btn" style="top:141px; left:741px; height: 0px;"
    onclick="showInfo('Weathertop', 'A ruined watchtower where Frodo is attacked by the Nazgûl.');">
    Weathertop
</button>
        <button type="button"  class="map-btn" style="top:163px; left:637px; margin-top: 0px;"
    onclick="showInfo('Moria', 'The ancient dwarven kingdom of Khazad-dûm, filled with orcs and the Balrog.');">
    Moria</button>
        <button type="button"  class="map-btn" style="top:234px; left:566px;"
    onclick="showInfo('Lothlorien', 'A beautiful elven forest ruled by Galadriel and Celeborn.');">
    Lothlórien</button>
        <button type="button"  class="map-btn" style="top:459px; left:519px;"
    onclick="showInfo('Fangorn Forest', 'A dense ancient forest. Home of Treebeard and the Ents.');">
    Fangorn</button>
        <button type="button"  class="map-btn" style="top:449px; left:864px;"
    onclick="showInfo('Helm’s Deep', 'A great fortress where the people of Rohan make their last stand.');">
    Helm’s Deep</button>
        <button type="button"  class="map-btn" style="top:603px; left:803px;"
    onclick="showInfo('Osgiliath', 'A ruined city between Gondor and Mordor, fought over during the war.');">
    Osgiliath
</button>
        <button type="button"  class="map-btn" style="top:91px; left:777px; height: 19px;"
    onclick="showInfo('Rivendell', 'The elven home of Elrond. The Fellowship of the Ring is formed here.');">
    Rivendell
</button>
    </div>

 
    <div style="flex:1; min-width:220px; border:2px solid #fff; padding:10px; border-radius:8px;">
        <h2 id="placeTitle">Choose a place</h2>
        <p id="placeText">
            Click one of the buttons on the map to see information about that place.
        </p>
    </div>
</div>
    <script type="text/javascript">
        function showInfo(title, text) {
          

            var titleEl = document.getElementById('placeTitle');
            var textEl = document.getElementById('placeText');

            if (titleEl && textEl) {
                titleEl.innerText = title;
                textEl.innerText = text;
            }
        }
</script>
<style>
    .map-btn {
        position:absolute;
        transform: translate(-50%, -50%);
        padding:4px 8px;
        font-size:12px;
        cursor:pointer;
    }
</style>
</asp:Content>
