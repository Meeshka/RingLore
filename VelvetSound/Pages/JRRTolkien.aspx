<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Homepage.Master" AutoEventWireup="true" CodeBehind="JRRTolkien.aspx.cs" Inherits="VelvetSound.Pages.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="tolkien-page">
        <h1>J.R.R. Tolkien</h1>

        <img src="/images/JRR%20TOLKIEN.jpg" alt="J.R.R. Tolkien" class="tolkien-photo" />

        <p>
            John Ronald Reuel Tolkien (J.R.R. Tolkien) was born on January 3, 1892, in Bloemfontein, South Africa.
            When he was very young, his mother took him and his brother back to England, where they grew up in the countryside near Birmingham.
        </p>

        <p>
            Tolkien's father died when he was a child, and his mother passed away when he was twelve, leaving him and his brother in the care of a family friend.
            Despite this difficult beginning, Tolkien developed a deep love for languages, nature, and stories — passions that shaped his entire life and the worlds he later created.
        </p>

        <p>
            From a young age, Tolkien showed remarkable talent for language.
            He learned Latin, Greek, Gothic, Welsh, Finnish, and many others.
            Eventually he began inventing his own languages, something that would become central to his later writing.
        </p>

        <p>
            His fascination with words and mythologies led him to study at Oxford University, where he excelled in literature and philology.
        </p>

        <p>
            During World War I, Tolkien served as a British officer.
            He fought in the Battle of the Somme, one of the bloodiest battles in history.
            Many of his closest friends were killed, and the trauma of the war deeply influenced his vision of Middle-earth — especially the themes of loss and darkness found in his books.
        </p>

        <p>
            While recovering from illness during the war, Tolkien began writing the first stories that would eventually grow into his great mythology.
        </p>

        <p>
            After the war, Tolkien became a professor at the University of Leeds and later at Oxford University, where he taught Old English and medieval literature.
            He was known as a brilliant scholar and a lively teacher, famous for reciting ancient poems in their original languages.
        </p>

        <p>
            At Oxford, he joined a group of writers called The Inklings, which included C.S. Lewis.
            They met regularly to read drafts and share ideas.
        </p>

        <p>
            Tolkien’s first famous book was “The Hobbit”, published in 1937.
            He originally wrote it for his children, but its success encouraged his publisher to ask for more stories set in the same world.
        </p>

        <p>
            This eventually led to “The Lord of the Rings”, a trilogy that took Tolkien more than a decade to complete.
            It became one of the most influential fantasy works ever written.
        </p>

        <p>
            Tolkien continued building his legendarium — a vast collection of myths, histories, and languages about Middle-earth.
            Much of this work was published after his death by his son Christopher Tolkien.
        </p>

        <p>
            These books include: The Silmarillion, Unfinished Tales, and the 12-volume History of Middle-earth.
        </p>

        <p>
            Tolkien created Middle-earth not just as a setting but as a fully developed world with its own cultures, geography, and languages.
            He invented Elvish languages like Quenya and Sindarin, complete with grammar and vocabulary.
        </p>

        <p>
            His inspirations came from Norse mythology, Anglo-Saxon literature, medieval epics, nature, and his own wartime experiences.
        </p>

        <p>
            In his personal life, Tolkien married Edith Bratt, whom he had loved since he was a teenager.
            Their love inspired the story of Beren and Lúthien, one of the most beautiful tales in Tolkien’s mythology.
        </p>

        <p>
            On their shared gravestone, the names “Beren” and “Lúthien” are engraved in memory of their bond.
        </p>

        <p>
            Tolkien spent his later years editing and expanding his stories.
            He passed away on September 2, 1973, at the age of 81.
        </p>

        <p>
            Today he is remembered as the father of modern fantasy.
            His books have sold millions of copies, been translated worldwide, and inspired countless films, games, and authors.
        </p>
    </div>

    <style>
        .tolkien-page {
            max-width: 1100px;
            margin: 0 auto;
        }

        .tolkien-page h1 {
            color: goldenrod;
            font-size: 45px;
            text-align: center;
        }

        .tolkien-page p {
            color: goldenrod;
            font-size: 19px;
            line-height: 1.7;
            margin: 0 0 18px 0;
            text-indent: 32px;
        }

        .tolkien-photo {
            display: block;
            width: 314px;
            max-width: 100%;
            height: auto;
            margin: 0 auto 24px;
        }
    </style>
</asp:Content>
