<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Homepage.Master" AutoEventWireup="true" CodeBehind="InteractiveMap.aspx.cs" Inherits="VelvetSound.Pages.Interactive_map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .interactive-map-page {
            max-width: 1200px;
            margin: 0 auto;
            color: goldenrod;
            font-family: 'Segoe UI', Tahoma, sans-serif;
        }

        .interactive-map-page h1 {
            color: goldenrod;
            font-size: 45px;
            text-align: center;
        }

        .interactive-map-page p {
            color: goldenrod;
            font-size: 19px;
            line-height: 1.7;
            margin: 0 0 18px 0;
            text-indent: 32px;
        }

        .map-layout {
            display: flex;
            align-items: flex-start;
            justify-content: center;
            gap: 24px;
            flex-wrap: wrap;
        }

        .map-frame {
            position: relative;
            width: min(100%, 850px);
            border: 2px solid rgba(255, 215, 0, 0.7);
            border-radius: 8px;
            overflow: hidden;
            background: #111;
        }

        .map-image {
            display: block;
            width: 100%;
            height: auto;
        }

        .map-btn {
            position: absolute;
            transform: translate(-50%, -50%);
            padding: 5px 8px;
            border: 1px solid rgba(0,0,0,0.35);
            border-radius: 6px;
            color: #111;
            background: rgba(255, 217, 102, 0.42);
            box-shadow: 0 2px 8px rgba(0,0,0,0.35);
            font-size: 12px;
            font-weight: 700;
            cursor: pointer;
            white-space: nowrap;
            z-index: 2;
            opacity: 0.45;
            backdrop-filter: blur(1px);
        }

        .map-btn:hover,
        .map-btn:focus {
            transform: translate(-50%, -52%);
            background: linear-gradient(180deg,#ffd966 0%, #e6b800 100%);
            opacity: 1;
            box-shadow: 0 4px 12px rgba(0,0,0,0.45);
        }

        .place-panel {
            flex: 1;
            min-width: 260px;
            max-width: 360px;
            border: 2px solid rgba(255, 215, 0, 0.7);
            padding: 16px;
            border-radius: 8px;
            background: rgba(0,0,0,0.16);
        }

        .place-panel h2 {
            color: #ffd700;
            margin-top: 0;
        }

        .place-panel p {
            text-indent: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="interactive-map-page">
        <h1>Interactive Map Of Middle-Earth!</h1>

        <p>
            On this page you can explore an interactive map of Middle-earth.
            Click different places on the map to learn more about them and see where important events from The Lord of the Rings happened.
        </p>

        <div class="map-layout">
            <div class="map-frame">
                <img src="/images/MiddleEarthMap.jpg" alt="Map of Middle-earth" class="map-image" />

                <button type="button" class="map-btn" style="top:32%; left:18%;"
                    onclick="showInfo('The Shire', 'A peaceful land where the hobbits live. This is where Frodo, Sam, Merry and Pippin come from.');">The Shire</button>

                <button type="button" class="map-btn" style="top:35%; left:20%;"
                    onclick="showInfo('Hobbiton', 'A village inside the Shire. Bag End is located here.');">Hobbiton</button>

                <button type="button" class="map-btn" style="top:43%; left:27%;"
                    onclick="showInfo('Bree', 'A town where Men and Hobbits live together. Frodo meets Aragorn at the Prancing Pony.');">Bree</button>

                <button type="button" class="map-btn" style="top:36%; left:38%;"
                    onclick="showInfo('Weathertop', 'A ruined watchtower where Frodo is attacked by the Nazgul.');">Weathertop</button>

                <button type="button" class="map-btn" style="top:30%; left:47%;"
                    onclick="showInfo('Rivendell', 'The elven home of Elrond. The Fellowship of the Ring is formed here.');">Rivendell</button>

                <button type="button" class="map-btn" style="top:48%; left:43%;"
                    onclick="showInfo('Moria', 'The ancient dwarven kingdom of Khazad-dum, filled with orcs and the Balrog.');">Moria</button>

                <button type="button" class="map-btn" style="top:51%; left:49%;"
                    onclick="showInfo('Lothlorien', 'A beautiful elven forest ruled by Galadriel and Celeborn.');">Lothlorien</button>

                <button type="button" class="map-btn" style="top:62%; left:47%;"
                    onclick="showInfo('Fangorn Forest', 'A dense ancient forest. Home of Treebeard and the Ents.');">Fangorn</button>

                <button type="button" class="map-btn" style="top:68%; left:55%;"
                    onclick="showInfo('Rohan', 'The land of the horse-lords who ride into battle against Sauron forces.');">Rohan</button>

                <button type="button" class="map-btn" style="top:72%; left:58%;"
                    onclick="showInfo('Helm\'s Deep', 'A great fortress where the people of Rohan make their last stand.');">Helm's Deep</button>

                <button type="button" class="map-btn" style="top:80%; left:66%;"
                    onclick="showInfo('Gondor', 'A great kingdom of men with the white city of Minas Tirith on the front line against Mordor.');">Gondor</button>

                <button type="button" class="map-btn" style="top:76%; left:73%;"
                    onclick="showInfo('Osgiliath', 'A ruined city between Gondor and Mordor, fought over during the war.');">Osgiliath</button>

                <button type="button" class="map-btn" style="top:72%; left:84%;"
                    onclick="showInfo('Mordor', 'The dark land of Sauron. Mount Doom is here, where the One Ring must be destroyed.');">Mordor</button>

                <button type="button" class="map-btn" style="top:76%; left:81%;"
                    onclick="showInfo('Mount Doom', 'Mount Doom (Amon Amarth), also called Orodruin, is more than an ordinary volcano. It responds to Sauron\'s commands and presence, becoming dormant when he is away from Mordor and active again when he returns.');">Mount Doom</button>
            </div>

            <div class="place-panel">
                <h2 id="placeTitle">Choose a place</h2>
                <p id="placeText">
                    Click one of the buttons on the map to see information about that place.
                </p>
            </div>
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
</asp:Content>
