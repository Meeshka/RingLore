<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Homepage.Master" AutoEventWireup="true" CodeBehind="MagicalCreatures.aspx.cs" Inherits="VelvetSound.Pages.Magical_creatures" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .magical-creatures-page {
            max-width: 1100px;
            margin: 0 auto;
        }

        .magical-creatures-page h1 {
            color: goldenrod;
            font-size: 45px;
            text-align: center;
        }

        .creature {
            margin-bottom: 36px;
        }

        .magical-creatures-page h3 {
            color: goldenrod;
            font-size: 28px;
            margin: 34px 0 10px;
        }

        .magical-creatures-page p {
            color: goldenrod;
            font-size: 19px;
            line-height: 1.7;
            margin: 0 0 18px 0;
            text-indent: 32px;
        }

        .creature-image {
            display: block;
            max-width: 100%;
            height: auto;
            margin-top: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="magical-creatures-page">
        <h1>Magical Creatures</h1>

        <div class="creature">
            <h3>Treebeard</h3>
            <p>
                Oldest of the Ents, protector of the forests.
            </p>
            <img src="/images/Treebeard.jpg" alt="Treebeard" class="creature-image" style="width: 318px" />
        </div>

        <div class="creature">
            <h3>Smaug</h3>
            <p>
                The greatest fire-drake of the Third Age; a powerful, cunning dragon who destroyed Erebor and Dale.
            </p>
            <img src="/images/Smaug.jpg" alt="Smaug" class="creature-image" style="width: 343px" />
        </div>

        <div class="creature">
            <h3>Durin's Bane</h3>
            <p>
                The Balrog that dwelt in Moria; a fiery, shadowy demon, one of the corrupted Maia spirits.
            </p>
            <img src="/images/Durins%20Bane.jpg" alt="Durin's Bane" class="creature-image" style="width: 319px" />
        </div>

        <div class="creature">
            <h3>Shelob</h3>
            <p>
                An enormous ancient spider, last child of Ungoliant, dwelling in the pass of Cirith Ungol.
            </p>
            <img src="/images/Shelob.jpg" alt="Shelob" class="creature-image" style="width: 342px" />
        </div>

        <div class="creature">
            <h3>Gwaihir</h3>
            <p>
                The Windlord, a great eagle of immense size and intelligence who aids Gandalf.
            </p>
            <img src="/images/Gwaihir.jpg" alt="Gwaihir" class="creature-image" style="width: 476px" />
        </div>

        <div class="creature">
            <h3>Landroval</h3>
            <p>
                Brother of Gwaihir, a mighty eagle who helps rescue Frodo and Sam from Mount Doom.
            </p>
            <img src="/images/Landroval.jpg" alt="Landroval" class="creature-image" style="width: 445px" />
        </div>

        <div class="creature">
            <h3>Watcher in the Water</h3>
            <p>
                A mysterious, tentacled monster guarding the entrance to Moria; origins unknown.
            </p>
            <img src="/images/Watcher%20in%20the%20Water.jpg" alt="Watcher in the Water" class="creature-image" style="width: 401px" />
        </div>

        <div class="creature">
            <h3>Ancalagon the Black</h3>
            <p>
                The greatest dragon ever to live, a massive winged fire-drake destroyed in the First Age.
            </p>
            <img src="/images/Ancalagon%20the%20Black.jpg" alt="Ancalagon the Black" class="creature-image" style="width: 298px" />
        </div>

        <div class="creature">
            <h3>Glaurung</h3>
            <p>
                The first of the great dragons, a wingless fire-drake with powerful malice and mind-domination.
            </p>
            <img src="/images/Glaurung.jpg" alt="Glaurung" class="creature-image" style="width: 330px" />
        </div>

        <div class="creature">
            <h3>Scatha</h3>
            <p>
                A long-worm dragon of the Grey Mountains, slain prior to LOTR; his hoard was claimed by the ancestors of the Rohirrim.
            </p>
            <img src="/images/Scatha.jpg" alt="Scatha" class="creature-image" style="width: 279px" />
        </div>
    </div>
</asp:Content>
