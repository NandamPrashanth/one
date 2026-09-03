<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Shop Smarter for yourself</title>

    <meta name="description"
          content="NexusShop — Discover premium products, trending technology, fashion and accessories at great prices.">

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap"
          rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>
        :root {
            --primary: #111827;
            --secondary: #6b7280;
            --accent: #635bff;
            --accent-dark: #5148e5;
            --success: #10b981;
            --danger: #ef4444;
            --warning: #f59e0b;

            --bg: #ffffff;
            --surface: #f8fafc;
            --card: #ffffff;
            --border: #e5e7eb;

            --shadow-sm: 0 4px 15px rgba(15, 23, 42, .06);
            --shadow-md: 0 12px 30px rgba(15, 23, 42, .10);
            --shadow-lg: 0 25px 60px rgba(15, 23, 42, .15);

            --radius: 18px;
            --container: 1240px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Inter, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.6;
        }

        body.no-scroll {
            overflow: hidden;
        }

        button,
        input {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            max-width: 100%;
            display: block;
        }

        .container {
            width: min(var(--container), calc(100% - 40px));
            margin: auto;
        }

        /* =========================
           HEADER
        ========================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255,255,255,.92);
            backdrop-filter: blur(18px);
            border-bottom: 1px solid var(--border);
        }

        .header {
            height: 74px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 25px;
        }

        .logo {
            font-family: Poppins, sans-serif;
            font-size: 23px;
            font-weight: 800;
            white-space: nowrap;
        }

        .logo span {
            color: var(--accent);
        }

        .desktop-nav {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .desktop-nav a {
            padding: 9px 13px;
            border-radius: 10px;
            color: #374151;
            font-size: 14px;
            font-weight: 600;
            transition: .2s;
        }

        .desktop-nav a:hover,
        .desktop-nav a.active {
            color: var(--accent);
            background: #f1f0ff;
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .search {
            width: 260px;
            height: 42px;
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: 12px;
            display: flex;
            align-items: center;
            padding: 0 12px;
        }

        .search i {
            color: var(--secondary);
        }

        .search input {
            width: 100%;
            border: 0;
            outline: none;
            background: transparent;
            padding: 0 9px;
            font-size: 14px;
        }

        .icon-button {
            width: 42px;
            height: 42px;
            border: 1px solid var(--border);
            background: white;
            border-radius: 12px;
            color: var(--primary);
            position: relative;
            transition: .2s;
        }

        .icon-button:hover {
            color: var(--accent);
            border-color: #c7c3ff;
            transform: translateY(-2px);
        }

        .cart-count {
            position: absolute;
            right: -5px;
            top: -5px;
            width: 19px;
            height: 19px;
            display: grid;
            place-items: center;
            background: var(--danger);
            color: white;
            border-radius: 50%;
            font-size: 10px;
            font-weight: 700;
        }

        .menu-button {
            display: none;
        }

        /* =========================
           HERO
        ========================= */

        .hero {
            min-height: 570px;
            display: flex;
            align-items: center;
            color: white;
            background:
                linear-gradient(90deg, rgba(10,15,30,.90), rgba(10,15,30,.45)),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85")
                center/cover;
        }

        .hero-content {
            max-width: 680px;
            padding: 70px 0;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(255,255,255,.12);
            border: 1px solid rgba(255,255,255,.2);
            backdrop-filter: blur(10px);
            padding: 8px 13px;
            border-radius: 999px;
            font-size: 13px;
            margin-bottom: 22px;
        }

        .hero h1 {
            font-family: Poppins, sans-serif;
            font-size: clamp(38px, 6vw, 68px);
            line-height: 1.08;
            letter-spacing: -2px;
            margin-bottom: 20px;
        }

        .hero h1 span {
            color: #9b96ff;
        }

        .hero p {
            color: rgba(255,255,255,.82);
            max-width: 580px;
            font-size: 17px;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            border: 0;
            padding: 13px 20px;
            border-radius: 12px;
            font-weight: 700;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            transition: .2s;
        }

        .btn-primary {
            color: white;
            background: var(--accent);
        }

        .btn-primary:hover {
            background: var(--accent-dark);
            transform: translateY(-2px);
        }

        .btn-white {
            background: white;
            color: var(--primary);
        }

        .btn-white:hover {
            transform: translateY(-2px);
        }

        /* =========================
           TRUST BAR
        ========================= */

        .trust-bar {
            border-bottom: 1px solid var(--border);
            background: white;
        }

        .trust-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            padding: 24px 0;
            gap: 20px;
        }

        .trust-item {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .trust-icon {
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border-radius: 12px;
            color: var(--accent);
            background: #f1f0ff;
        }

        .trust-item strong {
            display: block;
            font-size: 14px;
        }

        .trust-item span {
            color: var(--secondary);
            font-size: 12px;
        }

        /* =========================
           SECTIONS
        ========================= */

        section {
            scroll-margin-top: 90px;
        }

        .section {
            padding: 80px 0;
        }

        .section-header {
            margin-bottom: 35px;
            display: flex;
            justify-content: space-between;
            align-items: end;
            gap: 20px;
        }

        .section-title {
            font-family: Poppins, sans-serif;
            font-size: 30px;
        }

        .section-subtitle {
            color: var(--secondary);
            margin-top: 5px;
        }

        .view-all {
            color: var(--accent);
            font-size: 14px;
            font-weight: 700;
        }

        /* =========================
           CATEGORIES
        ========================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }

        .category {
            border: 1px solid var(--border);
            background: white;
            padding: 25px 15px;
            border-radius: var(--radius);
            text-align: center;
            transition: .25s;
        }

        .category:hover {
            transform: translateY(-6px);
            border-color: #c7c3ff;
            box-shadow: var(--shadow-md);
        }

        .category-icon {
            width: 58px;
            height: 58px;
            margin: auto;
            display: grid;
            place-items: center;
            border-radius: 16px;
            color: var(--accent);
            background: #f1f0ff;
            font-size: 22px;
        }

        .category h3 {
            font-size: 14px;
            margin-top: 12px;
        }

        .category p {
            color: var(--secondary);
            font-size: 12px;
            margin-top: 3px;
        }

        /* =========================
           PRODUCTS
        ========================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product {
            position: relative;
            border: 1px solid var(--border);
            background: white;
            border-radius: var(--radius);
            overflow: hidden;
            transition: .25s;
        }

        .product:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-md);
        }

        .product-image {
            height: 250px;
            background: #f5f6f8;
            position: relative;
            overflow: hidden;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: .4s;
        }

        .product:hover .product-image img {
            transform: scale(1.05);
        }

        .badge {
            position: absolute;
            left: 12px;
            top: 12px;
            z-index: 2;
            background: var(--accent);
            color: white;
            padding: 5px 9px;
            border-radius: 7px;
            font-size: 11px;
            font-weight: 700;
        }

        .badge.sale {
            background: var(--danger);
        }

        .wishlist {
            position: absolute;
            right: 12px;
            top: 12px;
            width: 36px;
            height: 36px;
            border: 0;
            border-radius: 50%;
            background: rgba(255,255,255,.95);
            color: #374151;
            z-index: 3;
        }

        .wishlist.active {
            color: var(--danger);
        }

        .product-body {
            padding: 17px;
        }

        .product-category {
            color: var(--secondary);
            font-size: 12px;
            margin-bottom: 5px;
        }

        .product-title {
            font-size: 15px;
            margin-bottom: 8px;
        }

        .rating {
            color: #f59e0b;
            font-size: 12px;
            margin-bottom: 13px;
        }

        .rating span {
            color: var(--secondary);
        }

        .product-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
        }

        .price {
            font-weight: 800;
            font-size: 18px;
        }

        .old-price {
            color: #9ca3af;
            text-decoration: line-through;
            font-size: 12px;
            margin-left: 5px;
        }

        .add-cart {
            border: 0;
            background: var(--primary);
            color: white;
            width: 40px;
            height: 40px;
            border-radius: 10px;
            transition: .2s;
        }

        .add-cart:hover {
            background: var(--accent);
            transform: scale(1.05);
        }

        .empty-state {
            grid-column: 1/-1;
            text-align: center;
            padding: 60px 20px;
            color: var(--secondary);
        }

        /* =========================
           DEAL
        ========================= */

        .deal {
            display: grid;
            grid-template-columns: 1fr 1fr;
            background: #111827;
            color: white;
            border-radius: 24px;
            overflow: hidden;
        }

        .deal-image {
            min-height: 430px;
        }

        .deal-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            padding: 55px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-label {
            color: #a5b4fc;
            font-size: 13px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .deal h2 {
            font-family: Poppins, sans-serif;
            font-size: 38px;
            margin: 10px 0;
        }

        .deal p {
            color: #cbd5e1;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin: 25px 0;
        }

        .time {
            width: 70px;
            height: 70px;
            background: #1f2937;
            border: 1px solid #374151;
            border-radius: 12px;
            display: grid;
            place-items: center;
            align-content: center;
        }

        .time strong {
            font-size: 21px;
        }

        .time small {
            color: #9ca3af;
            font-size: 10px;
        }

        .deal-price {
            font-size: 28px;
            font-weight: 800;
            margin-bottom: 20px;
        }

        /* =========================
           TESTIMONIALS
        ========================= */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .testimonial {
            padding: 25px;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            background: white;
        }

        .stars {
            color: #f59e0b;
            margin-bottom: 14px;
        }

        .testimonial p {
            color: #4b5563;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .customer {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .customer img {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            object-fit: cover;
        }

        .customer strong {
            display: block;
            font-size: 13px;
        }

        .customer span {
            font-size: 11px;
            color: var(--secondary);
        }

        /* =========================
           NEWSLETTER
        ========================= */

        .newsletter {
            background: linear-gradient(135deg, #635bff, #8b5cf6);
            color: white;
            border-radius: 24px;
            padding: 55px 30px;
            text-align: center;
        }

        .newsletter h2 {
            font-family: Poppins, sans-serif;
            font-size: 32px;
        }

        .newsletter p {
            color: #e0e7ff;
            margin: 8px 0 25px;
        }

        .newsletter-form {
            max-width: 520px;
            margin: auto;
            display: flex;
            background: white;
            padding: 5px;
            border-radius: 12px;
        }

        .newsletter-form input {
            flex: 1;
            border: 0;
            outline: none;
            padding: 10px 13px;
            min-width: 0;
        }

        /* =========================
           FOOTER
        ========================= */

        footer {
            background: #0f172a;
            color: white;
            padding: 60px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 50px;
        }

        .footer-brand p {
            color: #94a3b8;
            max-width: 330px;
            margin-top: 12px;
            font-size: 14px;
        }

        .footer h4 {
            margin-bottom: 15px;
        }

        .footer a {
            display: block;
            color: #94a3b8;
            margin-bottom: 9px;
            font-size: 13px;
        }

        .footer a:hover {
            color: white;
        }

        .social {
            display: flex !important;
            gap: 10px;
            margin-top: 18px;
        }

        .social i {
            width: 35px;
            height: 35px;
            display: grid;
            place-items: center;
            border: 1px solid #334155;
            border-radius: 9px;
        }

        .copyright {
            text-align: center;
            border-top: 1px solid #1e293b;
            margin-top: 45px;
            padding-top: 20px;
            color: #64748b;
            font-size: 12px;
        }

        /* =========================
           CART DRAWER
        ========================= */

        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.45);
            z-index: 1500;
            opacity: 0;
            visibility: hidden;
            transition: .25s;
        }

        .overlay.show {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: fixed;
            top: 0;
            right: -430px;
            width: min(430px, 100%);
            height: 100vh;
            background: white;
            z-index: 1600;
            display: flex;
            flex-direction: column;
            transition: .3s;
            box-shadow: -15px 0 50px rgba(0,0,0,.15);
        }

        .cart-drawer.open {
            right: 0;
        }

        .cart-header {
            padding: 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-bottom: 1px solid var(--border);
        }

        .cart-header h3 {
            font-family: Poppins, sans-serif;
        }

        .close-cart {
            width: 35px;
            height: 35px;
            border: 0;
            background: var(--surface);
            border-radius: 9px;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 20px;
        }

        .cart-item {
            display: grid;
            grid-template-columns: 65px 1fr auto;
            gap: 12px;
            padding-bottom: 15px;
            margin-bottom: 15px;
            border-bottom: 1px solid var(--border);
        }

        .cart-item img {
            width: 65px;
            height: 65px;
            object-fit: cover;
            border-radius: 10px;
        }

        .cart-item h4 {
            font-size: 13px;
        }

        .cart-item-price {
            font-size: 13px;
            font-weight: 700;
        }

        .quantity {
            display: flex;
            align-items: center;
            gap: 7px;
            margin-top: 7px;
        }

        .quantity button {
            width: 24px;
            height: 24px;
            border: 1px solid var(--border);
            background: white;
            border-radius: 5px;
        }

        .remove {
            color: var(--danger);
            border: 0 !important;
        }

        .cart-footer {
            border-top: 1px solid var(--border);
            padding: 20px;
        }

        .cart-total {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
            font-weight: 800;
        }

        .checkout {
            width: 100%;
        }

        .empty-cart {
            text-align: center;
            color: var(--secondary);
            padding: 60px 20px;
        }

        .empty-cart i {
            font-size: 45px;
            margin-bottom: 15px;
            color: #cbd5e1;
        }

        /* =========================
           TOAST
        ========================= */

        .toast {
            position: fixed;
            bottom: 25px;
            right: 25px;
            background: #111827;
            color: white;
            padding: 13px 18px;
            border-radius: 10px;
            box-shadow: var(--shadow-lg);
            transform: translateY(100px);
            opacity: 0;
            transition: .3s;
            z-index: 3000;
            font-size: 13px;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* =========================
           MOBILE MENU
        ========================= */

        .mobile-menu {
            display: none;
            border-top: 1px solid var(--border);
            padding: 15px 0;
            background: white;
        }

        .mobile-menu a {
            display: block;
            padding: 11px 0;
            font-weight: 600;
        }

        /* =========================
           RESPONSIVE
        ========================= */

        @media(max-width:1100px) {

            .desktop-nav {
                display: none;
            }

            .menu-button {
                display: block;
            }

            .search {
                width: 220px;
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            .footer-grid {
                grid-template-columns: 2fr 1fr 1fr;
            }
        }

        @media(max-width:800px) {

            .header {
                height: 68px;
            }

            .header-right .search {
                display: none;
            }

            .trust-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal-image {
                min-height: 280px;
            }

            .deal-content {
                padding: 35px 25px;
            }

            .testimonials {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width:560px) {

            .container {
                width: min(100% - 28px, var(--container));
            }

            .logo {
                font-size: 19px;
            }

            .hero {
                min-height: 540px;
            }

            .hero h1 {
                font-size: 39px;
            }

            .hero p {
                font-size: 15px;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: 1fr;
            }

            .product-image {
                height: 270px;
            }

            .trust-grid {
                grid-template-columns: 1fr;
            }

            .section {
                padding: 55px 0;
            }

            .section-title {
                font-size: 25px;
            }

            .section-header {
                align-items: start;
                flex-direction: column;
            }

            .timer {
                gap: 6px;
            }

            .time {
                width: 62px;
                height: 62px;
            }

            .newsletter-form {
                flex-direction: column;
                background: transparent;
                gap: 8px;
            }

            .newsletter-form input {
                height: 48px;
                border-radius: 10px;
            }

            .newsletter-form button {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }

            .toast {
                left: 15px;
                right: 15px;
                bottom: 15px;
                text-align: center;
            }
        }
    </style>
</head>

<body>

<!-- =========================
     HEADER
========================= -->

<header>

    <div class="container header">

        <div style="display:flex;align-items:center;gap:12px;">

            <button class="icon-button menu-button" id="menuButton" aria-label="Open menu">
                <i class="fas fa-bars"></i>
            </button>

            <a href="#" class="logo">
                Nexus<span>Shop</span>
            </a>

        </div>

        <nav class="desktop-nav">

            <a href="#" class="active">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Trending</a>
            <a href="#deals">Deals</a>
            <a href="#reviews">Reviews</a>

        </nav>

        <div class="header-right">

            <div class="search">

                <i class="fas fa-search"></i>

                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    aria-label="Search products">

            </div>

            <button class="icon-button" title="Wishlist">
                <i class="far fa-heart"></i>
            </button>

            <button class="icon-button" id="cartButton" title="Shopping cart">

                <i class="fas fa-shopping-bag"></i>

                <span class="cart-count" id="cartCount">0</span>

            </button>

        </div>

    </div>

    <div class="mobile-menu" id="mobileMenu">

        <div class="container">

            <a href="#">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Trending</a>
            <a href="#deals">Deals</a>
            <a href="#reviews">Reviews</a>

        </div>

    </div>

</header>


<!-- =========================
     HERO
========================= -->

<main>

<section class="hero">

    <div class="container">

        <div class="hero-content">

            <div class="hero-badge">
                <i class="fas fa-bolt"></i>
                New season arrivals are here
            </div>

            <h1>
                Shop smarter.<br>
                Live <span>better.</span>
            </h1>

            <p>
                Discover carefully selected technology, fashion and everyday
                essentials — all in one beautiful shopping experience.
            </p>

            <div class="hero-buttons">

                <button class="btn btn-primary" id="shopNow">
                    Explore Products
                    <i class="fas fa-arrow-right"></i>
                </button>

                <button class="btn btn-white" id="heroDeals">
                    View Deals
                </button>

            </div>

        </div>

    </div>

</section>


<!-- =========================
     TRUST BAR
========================= -->

<section class="trust-bar">

    <div class="container trust-grid">

        <div class="trust-item">

            <div class="trust-icon">
                <i class="fas fa-truck-fast"></i>
            </div>

            <div>
                <strong>Free Shipping</strong>
                <span>On orders over ₹999</span>
            </div>

        </div>

        <div class="trust-item">

            <div class="trust-icon">
                <i class="fas fa-shield-halved"></i>
            </div>

            <div>
                <strong>Secure Payments</strong>
                <span>100% protected checkout</span>
            </div>

        </div>

        <div class="trust-item">

            <div class="trust-icon">
                <i class="fas fa-rotate-left"></i>
            </div>

            <div>
                <strong>Easy Returns</strong>
                <span>7-day return policy</span>
            </div>

        </div>

        <div class="trust-item">

            <div class="trust-icon">
                <i class="fas fa-headset"></i>
            </div>

            <div>
                <strong>24/7 Support</strong>
                <span>We're here to help</span>
            </div>

        </div>

    </div>

</section>


<!-- =========================
     CATEGORIES
========================= -->

<section class="section" id="categories">

    <div class="container">

        <div class="section-header">

            <div>
                <h2 class="section-title">Shop by Category</h2>

                <p class="section-subtitle">
                    Find exactly what you're looking for.
                </p>
            </div>

        </div>

        <div class="categories" id="categoriesGrid"></div>

    </div>

</section>


<!-- =========================
     PRODUCTS
========================= -->

<section class="section" id="products" style="background:#f8fafc;">

    <div class="container">

        <div class="section-header">

            <div>
                <h2 class="section-title">Trending Products</h2>

                <p class="section-subtitle">
                    Popular picks our customers love.
                </p>
            </div>

            <a href="#products" class="view-all">
                View all →
            </a>

        </div>

        <div class="products" id="productsGrid"></div>

    </div>

</section>


<!-- =========================
     DEAL
========================= -->

<section class="section" id="deals">

    <div class="container">

        <div class="deal">

            <div class="deal-image">

                <img
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
                    alt="MacBook Air">

            </div>

            <div class="deal-content">

                <span class="deal-label">
                    Limited time offer
                </span>

                <h2>
                    MacBook Air M2
                </h2>

                <p>
                    Powerful performance in an incredibly thin and lightweight
                    design. Grab today's exclusive deal before it ends.
                </p>

                <div class="timer">

                    <div class="time">
                        <strong id="days">00</strong>
                        <small>Days</small>
                    </div>

                    <div class="time">
                        <strong id="hours">00</strong>
                        <small>Hours</small>
                    </div>

                    <div class="time">
                        <strong id="minutes">00</strong>
                        <small>Minutes</small>
                    </div>

                    <div class="time">
                        <strong id="seconds">00</strong>
                        <small>Seconds</small>
                    </div>

                </div>

                <div class="deal-price">
                    ₹84,999
                    <span class="old-price">₹99,999</span>
                </div>

                <button class="btn btn-primary" id="dealButton">
                    Add Deal to Cart
                    <i class="fas fa-shopping-bag"></i>
                </button>

            </div>

        </div>

    </div>

</section>


<!-- =========================
     REVIEWS
========================= -->

<section class="section" id="reviews" style="background:#f8fafc;">

    <div class="container">

        <div class="section-header">

            <div>
                <h2 class="section-title">
                    Loved by shoppers
                </h2>

                <p class="section-subtitle">
                    See what our customers have to say.
                </p>
            </div>

        </div>

        <div class="testimonials">

            <div class="testimonial">

                <div class="stars">★★★★★</div>

                <p>
                    "The website is incredibly easy to use and my order arrived
                    much faster than expected. Great experience!"
                </p>

                <div class="customer">

                    <img
                        src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                        alt="Priya">

                    <div>
                        <strong>Priya Sharma</strong>
                        <span>Verified customer</span>
                    </div>

                </div>

            </div>

            <div class="testimonial">

                <div class="stars">★★★★★</div>

                <p>
                    "Excellent product quality and very smooth checkout.
                    I'll definitely be shopping here again."
                </p>

                <div class="customer">

                    <img
                        src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                        alt="Rahul">

                    <div>
                        <strong>Rahul Mehta</strong>
                        <span>Verified customer</span>
                    </div>

                </div>

            </div>

            <div class="testimonial">

                <div class="stars">★★★★☆</div>

                <p>
                    "Good prices, great selection and the support team was
                    helpful when I had a question."
                </p>

                <div class="customer">

                    <img
                        src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80"
                        alt="Ananya">

                    <div>
                        <strong>Ananya Rao</strong>
                        <span>Verified customer</span>
                    </div>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================
     NEWSLETTER
========================= -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <h2>Get the good stuff.</h2>

            <p>
                Subscribe for new arrivals, special offers and exclusive deals.
            </p>

            <form class="newsletter-form" id="newsletterForm">

                <input
                    type="email"
                    id="email"
                    placeholder="Your email address"
                    required>

                <button class="btn btn-primary" type="submit">
                    Subscribe
                </button>

            </form>

        </div>

    </div>

</section>

</main>


<!-- =========================
     FOOTER
========================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <div class="logo">
                    Nexus<span>Shop</span>
                </div>

                <p>
                    A modern shopping experience built for people who value
                    quality, simplicity and great products.
                </p>

                <div class="social">

                    <a href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-x-twitter"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-youtube"></i>
                    </a>

                </div>

            </div>

            <div>
                <h4>Shop</h4>

                <a href="#products">Trending</a>
                <a href="#deals">Deals</a>
                <a href="#categories">Categories</a>
                <a href="#">New Arrivals</a>
            </div>

            <div>
                <h4>Company</h4>

                <a href="#">About us</a>
                <a href="#">Careers</a>
                <a href="#">Contact</a>
                <a href="#">Privacy</a>
            </div>

            <div>
                <h4>Support</h4>

                <a href="#">Help Center</a>
                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">FAQs</a>
            </div>

        </div>

        <div class="copyright">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>

    </div>

</footer>


<!-- =========================
     CART
========================= -->

<div class="overlay" id="overlay"></div>

<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">

        <h3>Your Cart</h3>

        <button class="close-cart" id="closeCart">
            <i class="fas fa-xmark"></i>
        </button>

    </div>

    <div class="cart-items" id="cartItems"></div>

    <div class="cart-footer">

        <div class="cart-total">

            <span>Total</span>

            <span id="cartTotal">
                ₹0
            </span>

        </div>

        <button class="btn btn-primary checkout">
            Proceed to Checkout
            <i class="fas fa-arrow-right"></i>
        </button>

    </div>

</aside>


<!-- Toast -->

<div class="toast" id="toast"></div>


<script>

    /* =========================
       PRODUCT DATA
    ========================= */

    const PRODUCTS = [

        {
            id: 1,
            title: "iPhone 15 Pro",
            category: "Smartphones",
            price: 129999,
            oldPrice: 139999,
            rating: 5,
            reviews: 128,
            badge: "New",
            image: "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 2,
            title: "MacBook Pro 14",
            category: "Laptops",
            price: 149999,
            oldPrice: 169999,
            rating: 5,
            reviews: 86,
            badge: "Popular",
            image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 3,
            title: "Apple Watch Series 9",
            category: "Accessories",
            price: 41999,
            oldPrice: 44999,
            rating: 5,
            reviews: 214,
            badge: "Sale",
            image: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 4,
            title: "Nike Air Max",
            category: "Footwear",
            price: 9999,
            oldPrice: 11999,
            rating: 4,
            reviews: 53,
            image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 5,
            title: "Sony A7 IV Camera",
            category: "Gadgets",
            price: 184999,
            rating: 5,
            reviews: 42,
            badge: "Pro",
            image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 6,
            title: "Sony WH-1000XM5",
            category: "Gadgets",
            price: 29999,
            oldPrice: 34999,
            rating: 5,
            reviews: 156,
            badge: "Best Seller",
            image: "https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 7,
            title: "Premium Backpack",
            category: "Accessories",
            price: 4999,
            oldPrice: 6999,
            rating: 4,
            reviews: 67,
            image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 8,
            title: "Classic Hoodie",
            category: "Fashion",
            price: 2499,
            oldPrice: 3499,
            rating: 5,
            reviews: 91,
            image: "https://images.unsplash.com/photo-1556821840-3a63f95609a7?auto=format&fit=crop&w=700&q=85"
        }

    ];


    const CATEGORIES = [

        {
            name: "Smartphones",
            icon: "fa-mobile-screen-button"
        },

        {
            name: "Laptops",
            icon: "fa-laptop"
        },

        {
            name: "Fashion",
            icon: "fa-shirt"
        },

        {
            name: "Gadgets",
            icon: "fa-headphones"
        },

        {
            name: "Footwear",
            icon: "fa-shoe-prints"
        },

        {
            name: "Accessories",
            icon: "fa-watch"
        }

    ];


    let cart = [];


    /* =========================
       DOM
    ========================= */

    const productsGrid =
        document.getElementById("productsGrid");

    const categoriesGrid =
        document.getElementById("categoriesGrid");

    const searchInput =
        document.getElementById("searchInput");

    const cartDrawer =
        document.getElementById("cartDrawer");

    const overlay =
        document.getElementById("overlay");

    const cartItems =
        document.getElementById("cartItems");

    const cartCount =
        document.getElementById("cartCount");

    const cartTotal =
        document.getElementById("cartTotal");


    /* =========================
       FORMAT PRICE
    ========================= */

    function formatPrice(price) {

        return new Intl.NumberFormat("en-IN", {
            style: "currency",
            currency: "INR",
            maximumFractionDigits: 0
        }).format(price);

    }


    /* =========================
       CATEGORIES
    ========================= */

    function renderCategories() {

        categoriesGrid.innerHTML = "";

        CATEGORIES.forEach(category => {

            const element =
                document.createElement("button");

            element.className = "category";

            element.innerHTML = `

                <div class="category-icon">

                    <i class="fas ${category.icon}"></i>

                </div>

                <h3>${category.name}</h3>

                <p>Explore products</p>

            `;

            element.addEventListener("click", () => {

                searchInput.value = category.name;

                filterProducts(category.name);

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            });

            categoriesGrid.appendChild(element);

        });

    }


    /* =========================
       PRODUCTS
    ========================= */

    function renderProducts(products) {

        productsGrid.innerHTML = "";

        if (!products.length) {

            productsGrid.innerHTML = `

                <div class="empty-state">

                    <i class="fas fa-box-open"
                       style="font-size:40px;margin-bottom:15px;"></i>

                    <h3>No products found</h3>

                    <p>Try searching for something else.</p>

                </div>

            `;

            return;

        }


        products.forEach(product => {

            const card =
                document.createElement("article");

            card.className = "product";

            card.innerHTML = `

                <div class="product-image">

                    ${
                        product.badge
                        ?
                        `<span class="badge ${
                            product.badge === "Sale"
                            ? "sale"
                            : ""
                        }">${product.badge}</span>`
                        :
                        ""
                    }

                    <button
                        class="wishlist"
                        aria-label="Add to wishlist">

                        <i class="far fa-heart"></i>

                    </button>

                    <img
                        src="${product.image}"
                        alt="${product.title}"
                        loading="lazy">

                </div>


                <div class="product-body">

                    <div class="product-category">
                        ${product.category}
                    </div>

                    <h3 class="product-title">
                        ${product.title}
                    </h3>

                    <div class="rating">

                        ${"★".repeat(product.rating)}

                        <span>
                            (${product.reviews})
                        </span>

                    </div>

                    <div class="product-bottom">

                        <div>

                            <span class="price">
                                ${formatPrice(product.price)}
                            </span>

                            ${
                                product.oldPrice
                                ?
                                `<span class="old-price">
                                    ${formatPrice(product.oldPrice)}
                                </span>`
                                :
                                ""
                            }

                        </div>

                        <button
                            class="add-cart"
                            aria-label="Add to cart">

                            <i class="fas fa-plus"></i>

                        </button>

                    </div>

                </div>
            `;


            const addButton =
                card.querySelector(".add-cart");

            addButton.addEventListener("click", () => {

                addToCart(product.id);

            });


            const wishlist =
                card.querySelector(".wishlist");

            wishlist.addEventListener("click", () => {

                wishlist.classList.toggle("active");

                const icon =
                    wishlist.querySelector("i");

                icon.classList.toggle("far");
                icon.classList.toggle("fas");

                showToast(
                    wishlist.classList.contains("active")
                    ? "Added to wishlist ❤️"
                    : "Removed from wishlist"
                );

            });


            productsGrid.appendChild(card);

        });

    }


    /* =========================
       SEARCH
    ========================= */

    function filterProducts(query) {

        const value =
            query.trim().toLowerCase();

        if (!value) {

            renderProducts(PRODUCTS);

            return;

        }


        const filtered =
            PRODUCTS.filter(product =>

                product.title
                    .toLowerCase()
                    .includes(value)

                ||

                product.category
                    .toLowerCase()
                    .includes(value)

            );


        renderProducts(filtered);

    }


    searchInput.addEventListener("input", e => {

        filterProducts(e.target.value);

    });


    /* =========================
       CART
    ========================= */

    function addToCart(productId) {

        const product =
            PRODUCTS.find(
                item => item.id === productId
            );

        if (!product) return;


        const existing =
            cart.find(
                item => item.id === productId
            );


        if (existing) {

            existing.quantity++;

        } else {

            cart.push({
                ...product,
                quantity: 1
            });

        }


        updateCart();

        showToast(
            `${product.title} added to cart`
        );

    }


    function updateCart() {

        const totalItems =
            cart.reduce(
                (sum, item) =>
                    sum + item.quantity,
                0
            );


        cartCount.textContent = totalItems;


        if (!cart.length) {

            cartItems.innerHTML = `

                <div class="empty-cart">

                    <i class="fas fa-shopping-bag"></i>

                    <h3>Your cart is empty</h3>

                    <p>Add something you love.</p>

                </div>

            `;

            cartTotal.textContent = "₹0";

            return;

        }


        cartItems.innerHTML = "";


        let total = 0;


        cart.forEach(item => {

            total +=
                item.price * item.quantity;


            const element =
                document.createElement("div");

            element.className = "cart-item";

            element.innerHTML = `

                <img
                    src="${item.image}"
                    alt="${item.title}">

                <div>

                    <h4>${item.title}</h4>

                    <div class="cart-item-price">
                        ${formatPrice(item.price)}
                    </div>

                    <div class="quantity">

                        <button
                            data-action="minus">
                            −
                        </button>

                        <span>
                            ${item.quantity}
                        </span>

                        <button
                            data-action="plus">
                            +
                        </button>

                    </div>

                </div>

                <button
                    class="remove"
                    data-action="remove">

                    <i class="fas fa-trash"></i>

                </button>

            `;


            element
                .querySelector('[data-action="minus"]')
                .onclick = () => {

                    changeQuantity(
                        item.id,
                        -1
                    );

                };


            element
                .querySelector('[data-action="plus"]')
                .onclick = () => {

                    changeQuantity(
                        item.id,
                        1
                    );

                };


            element
                .querySelector('[data-action="remove"]')
                .onclick = () => {

                    cart =
                        cart.filter(
                            product =>
                                product.id !== item.id
                        );

                    updateCart();

                };


            cartItems.appendChild(element);

        });


        cartTotal.textContent =
            formatPrice(total);

    }


    function changeQuantity(id, change) {

        const item =
            cart.find(
                product => product.id === id
            );

        if (!item) return;


        item.quantity += change;


        if (item.quantity <= 0) {

            cart =
                cart.filter(
                    product => product.id !== id
                );

        }


        updateCart();

    }


    /* =========================
       CART DRAWER
    ========================= */

    function openCart() {

        cartDrawer.classList.add("open");

        overlay.classList.add("show");

        document.body.classList.add("no-scroll");

    }


    function closeCart() {

        cartDrawer.classList.remove("open");

        overlay.classList.remove("show");

        document.body.classList.remove("no-scroll");

    }


    document
        .getElementById("cartButton")
        .addEventListener("click", openCart);


    document
        .getElementById("closeCart")
        .addEventListener("click", closeCart);


    overlay.addEventListener("click", closeCart);


    /* =========================
       TOAST
    ========================= */

    let toastTimer;


    function showToast(message) {

        const toast =
            document.getElementById("toast");

        toast.textContent = message;

        toast.classList.add("show");


        clearTimeout(toastTimer);


        toastTimer =
            setTimeout(() => {

                toast.classList.remove("show");

            }, 2500);

    }


    /* =========================
       MOBILE MENU
    ========================= */

    document
        .getElementById("menuButton")
        .addEventListener("click", () => {

            const menu =
                document.getElementById("mobileMenu");

            menu.style.display =
                menu.style.display === "block"
                ? "none"
                : "block";

        });


    document
        .querySelectorAll(".mobile-menu a")
        .forEach(link => {

            link.addEventListener("click", () => {

                document
                    .getElementById("mobileMenu")
                    .style.display = "none";

            });

        });


    /* =========================
       HERO BUTTONS
    ========================= */

    document
        .getElementById("shopNow")
        .addEventListener("click", () => {

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    document
        .getElementById("heroDeals")
        .addEventListener("click", () => {

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    /* =========================
       DEAL BUTTON
    ========================= */

    document
        .getElementById("dealButton")
        .addEventListener("click", () => {

            addToCart(2);

            openCart();

        });


    /* =========================
       NEWSLETTER
    ========================= */

    document
        .getElementById("newsletterForm")
        .addEventListener("submit", e => {

            e.preventDefault();

            const email =
                document
                    .getElementById("email")
                    .value.trim();


            if (!email) return;


            showToast(
                "You're subscribed! 🎉"
            );


            e.target.reset();

        });


    /* =========================
       COUNTDOWN
    ========================= */

    const dealEnd =
        new Date(
            Date.now() +
            2 * 24 * 60 * 60 * 1000 +
            6 * 60 * 60 * 1000
        );


    function updateCountdown() {

        const difference =
            dealEnd - new Date();


        if (difference <= 0) return;


        const days =
            Math.floor(
                difference /
                (1000 * 60 * 60 * 24)
            );


        const hours =
            Math.floor(
                difference /
                (1000 * 60 * 60)
            ) % 24;


        const minutes =
            Math.floor(
                difference /
                (1000 * 60)
            ) % 60;


        const seconds =
            Math.floor(
                difference / 1000
            ) % 60;


        document.getElementById("days")
            .textContent =
            String(days).padStart(2, "0");


        document.getElementById("hours")
            .textContent =
            String(hours).padStart(2, "0");


        document.getElementById("minutes")
            .textContent =
            String(minutes).padStart(2, "0");


        document.getElementById("seconds")
            .textContent =
            String(seconds).padStart(2, "0");

    }


    updateCountdown();

    setInterval(updateCountdown, 1000);


    /* =========================
       YEAR
    ========================= */

    document.getElementById("year")
        .textContent =
        new Date().getFullYear();


    /* =========================
       INITIALIZE
    ========================= */

    renderCategories();

    renderProducts(PRODUCTS);

    updateCart();

</script>

</body>
</html>
