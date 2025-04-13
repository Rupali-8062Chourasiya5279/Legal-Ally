<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Law Details - Kanun</title>
    <link href="/views/css/style.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="wrapper">
        <jsp:include page="header.jsp" />

        <div class="page-header">
            <div class="container">
                <h2>Law Details</h2>
                <p><a href="index.jsp">Home</a> > <a href="#">Details</a></p>
            </div>
        </div>

        <div class="container my-5">
            <%
                String id = (String)session.getAttribute("id");
                String title = "Law Area";
                String description = "Details not available.";

                if (id != null) {
                    switch (id) {
                        case "civil":
                            title = "Civil Law";
                            description = "Civil laws in India, also referred to as private laws or non-criminal laws, govern disputes between individuals, organizations, or both. These laws focus on resolving issues where compensation may be awarded to the victim rather than punishing the offender.\n\n"
                                + "Key Civil Laws in India:\n"
                                + "1. Indian Contract Act, 1872 – Governs contracts and agreements.\n"
                                + "2. Hindu Marriage Act, 1955 – Pertains to marriage and divorce among Hindus.\n"
                                + "3. Hindu Succession Act, 1956 – Deals with inheritance and property rights.\n"
                                + "4. Indian Easements Act, 1882 – Concerns rights over another’s property.\n"
                                + "5. Land Acquisition Act, 1894 – Pertains to acquisition of land by the government.\n"
                                + "6. Limitation Act, 1963 – Sets time limits for filing civil cases.\n"
                                + "7. Indian Contract Act, 1872 – Governs contracts and agreements.\n"
                                + "8. Negotiable Instruments Act, 1881 – Deals with promissory notes, cheques, etc.\n"
                                + "9. Registration Act, 1908 – Governs registration of documents.\n"
                                + "10. Sale of Goods Act, 1930 – Deals with the sale of goods.\n\n"
                                + "Examples:\n"
                                + "- A property dispute between two neighbors.\n"
                                + "- A breach of contract case.\n"
                                + "- A divorce or child custody matter.\n";
                            break;

                        case "family":
                            title = "Family Law";
                            description = "Family law in India deals with matters such as marriage, divorce, adoption, inheritance, and child custody. These laws vary based on religion, with distinct regulations for Hindus, Muslims, Christians, and Parsis.\n\n"
                                + "Key Aspects:\n"
                                + "- Hindu Marriage Act, 1955\n"
                                + "- Hindu Succession Act, 1956\n"
                                + "- Muslim Personal Law (Shariat) Application Act, 1937\n"
                                + "- Christian Marriage Act, 1872\n"
                                + "- Parsi Marriage and Divorce Act, 1936\n"
                                + "- Special Marriage Act, 1954 (for inter-religion marriages)\n"
                                + "- Guardians and Wards Act, 1890\n"
                                + "- Protection of Women from Domestic Violence Act, 2005\n\n"
                                + "Issues Addressed:\n"
                                + "- Marriage registration and validity\n"
                                + "- Maintenance and alimony\n"
                                + "- Domestic violence\n"
                                + "- Child custody and guardianship\n"
                                + "- Property and inheritance rights\n";
                            break;

                        case "business":
                            title = "Business Law";
                            description = "Business law in India encompasses laws that regulate how businesses operate, including company formation, contracts, mergers, taxation, and labor laws.\n\n"
                                + "Major Legislations:\n"
                                + "- Indian Contract Act, 1872\n"
                                + "- Companies Act, 2013\n"
                                + "- Limited Liability Partnership Act, 2008\n"
                                + "- Competition Act, 2002\n"
                                + "- Goods and Services Tax Act\n"
                                + "- Income Tax Act, 1961\n"
                                + "- Insolvency and Bankruptcy Code, 2016\n"
                                + "- Consumer Protection Act, 2019\n\n"
                                + "Key Areas:\n"
                                + "- Formation and regulation of companies\n"
                                + "- Corporate governance\n"
                                + "- Mergers and acquisitions\n"
                                + "- Contract enforcement\n"
                                + "- Tax compliance\n"
                                + "- Intellectual property rights\n";
                            break;

                        case "education":
                            title = "Education Law";
                            description = "Education law in India primarily revolves around ensuring the right to education for all and regulating institutions providing education.\n\n"
                                + "Right to Education Act (RTE), 2009:\n"
                                + "- Ensures free and compulsory education to children aged 6 to 14\n"
                                + "- Prohibits physical punishment and mental harassment\n"
                                + "- No child shall be held back, expelled, or required to pass a board exam till Class 8\n"
                                + "- Mandates 25% reservation in private schools for disadvantaged children\n"
                                + "- Establishes norms for teacher-student ratio and infrastructure\n\n"
                                + "Other Laws and Bodies:\n"
                                + "- University Grants Commission Act\n"
                                + "- National Education Policy (NEP) 2020\n"
                                + "- Various state education boards and regulatory agencies\n";
                            break;

                        case "criminal":
                            title = "Criminal Law";
                            description = "Criminal law in India deals with acts that are offenses against the state or public. These laws aim to maintain law and order by punishing wrongdoers.\n\n"
                                + "Major Laws (Effective from July 1, 2024):\n"
                                + "- Bharatiya Nyaya Sanhita (BNS) – Replaces Indian Penal Code\n"
                                + "- Bharatiya Nagarik Suraksha Sanhita (BNSS) – Replaces Criminal Procedure Code\n"
                                + "- Bharatiya Sakshya Adhiniyam (BSA) – Replaces Indian Evidence Act\n\n"
                                + "Other Acts:\n"
                                + "- NDPS Act, 1985 – Drug-related offenses\n"
                                + "- POCSO Act – Protection of children from sexual offenses\n"
                                + "- Domestic Violence Act, 2005\n"
                                + "- Dowry Prohibition Act\n"
                                + "- Juvenile Justice Act\n"
                                + "- SC/ST (Prevention of Atrocities) Act\n"
                                + "- Fugitive Economic Offenders Act, 2018\n\n"
                                + "Examples:\n"
                                + "- Theft, murder, assault, rape, corruption\n"
                                + "- Online fraud or identity theft\n";
                            break;

                        case "cyber":
                            title = "Cyber Law";
                            description = "Cyber law, or IT law, deals with the internet, digital communication, and cybercrime. It governs crimes involving computers, networks, and data.\n\n"
                                + "IT Act, 2000:\n"
                                + "- Provides legal recognition of electronic records and digital signatures\n"
                                + "- Deals with hacking, identity theft, data breaches, and online fraud\n"
                                + "- Establishes cyber regulations appellate tribunal\n"
                                + "- Regulates e-commerce and cyber contracts\n\n"
                                + "Common Cyber Offenses:\n"
                                + "- Hacking and unauthorized access\n"
                                + "- Cyberstalking and cyberbullying\n"
                                + "- Identity theft and phishing\n"
                                + "- Online defamation\n"
                                + "- Child pornography\n"
                                + "- Data privacy violations\n";
                            break;

                        default:
                            title = "Unknown Area";
                            description = "Sorry, we couldn't find details for this law area.";
                    }
                }
            %>

            <h3><%= title %></h3>
            <pre style="white-space: pre-wrap; font-size: 16px;"><%= description %></pre>
        </div>

        <jsp:include page="footer.jsp" />
    </div>
</body>
</html>
