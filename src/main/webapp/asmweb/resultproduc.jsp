<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"  %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="asmweb/Websitebanhang/css/index.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.3/angular.min.js"
        integrity="sha512-KZmyTq3PLx9EZl0RHShHQuXtrvdJ+m35tuOiwlcZfs/rE7NZv29ygNA8SFCkMXTnYZQK2OX0Gm2qKGfvWEtRXA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="Websitebanhang/JSP/header.jsp"%>
<%@include file="Websitebanhang/JSP/duongdanspct.jsp"%>
<div class="container mb-5">
        <div class="row">
            <div class="col-md-5 ">
                <section class="page-content">
                    <div style="position: relative;text-align: center; class="images-container">
                        <img class="img-fluid mt-5" src="asmweb/Websitebanhang/images/${item.image}">
                         
                    </div>
                </section>
            </div>
            <div class="col-md-7 pb-right-column">
                <h3 style="font-weight: bold;">${item.name}</h3>
                <div class="mb-3" id="product_comments_block_extra">
                    <a style="text-decoration: none;color: rgb(79, 75, 75);" href="">
                        <i class="bi bi-pencil-fill"></i>
                        Write your review
                    </a>
                </div>
                <div class="product-price">
                    <span style="font-weight: bold;">${item.price}</span>
                </div>
                <p style="padding-top: 15px;color: rgb(79, 75, 75);">Donec porttitor lorem sit amet varius sagittis.
                    Etiam auctor malesuada condimentum.</p>
                <div style="margin-bottom: 15px;"><span style="font-weight: bold;">Dimension</span></div>
                <div style="margin-bottom: 15px;" class="size">
                    <select
                        style="padding: 9px 32px 9px 15px;font-size: 13px; background-color: #EBEBEB;border: #EBEBEB;color: #686464;"
                        name="name">
                        <option [selected] value="value">40x60cm</option>
                        <option [selected] value="value">60-90cm</option>
                        <option [selected] value="value">80-120cm</option>
                    </select>
                </div>
                <div class="product-add-to-cart">
                    <span class="control-label" style="font-weight: bold;">Quantity</span>
                    <div class="product-quantity">
                        <div class="qty">
                            <div class="input-group bootstrap-touchspin">
                                <span class="input-group-addon bootstrap-touchspin-prefix">
                                    <input style="border-radius: 0px;" id="quantity_wanted" type="text"
                                        class="input-group form-control">
                                </span>
                                <span class="input-group-btn-vertical">
                                    <button style="border: 1px solid #ced4da;border-radius: 0px;"
                                        class="btn btn-touchspin js-touchspin bootstrap-touchspin-up" type="button">
                                        <i class="bi bi-chevron-up"></i>
                                    </button>
                                    <button style="border: 1px solid #ced4da;border-radius: 0px;"
                                        class="btn btn-touchspin js-touchspin bootstrap-touchspin-up" type="button">
                                        <i class="bi bi-chevron-down"></i>
                                    </button>

                                </span>
                            </div>
                        </div>
                        <div class="add">
                            <button class="btn add-to-cart" type="submit"><i class="bi bi-cart3"></i> Add to
                                cart</button>
                        </div>
                        <span id="product-availability"></span>
                    </div>

                    <div class="compare">
                        <a style="text-decoration: none;color: #666666;" href="">
                            <i class="bi bi-repeat"></i>
                            <span>Compare</span>
                        </a>
                    </div>
                    <div class="wishlist">
                        <a style="text-decoration: none;color: #666666;" href="">
                            <i class="bi bi-heart-fill"></i>
                            Wishlist
                        </a>
                    </div>

                </div>
                <div class="product-additional-info">
                    <div class="social-sharing">
                        <span class="mt-1" style="float: left;margin-right: 10px;">Share</span>
                        <ul style="float: left;">
                            <li class="facebook ">
                                <a class="bi bi-facebook"></i></a>
                            </li>
                            <li class="twitter ">
                                <a class="bi bi-twitter"></i></a>
                            </li>
                            <li class="pinterest ">
                                <a class="bi bi-pinterest"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div style="float: left;padding-left: 50px;" class="blockreassurance_product">
                    <div>
                        <span class="item-desc">
                            <span class="block-title">Security policy</span>
                            <p>
                                (edit with the Customer Reassurance module)</p>
                        </span>
                        <span class="item-desc">
                            <span class="block-title">Delivery policy</span>
                            <p>
                                (edit with the Customer Reassurance module)</p>
                        </span>
                        <span class="item-desc">
                            <span class="block-title">Return policy</span>
                            <p>
                                (edit with the Customer Reassurance module)</p>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <ul class="nav nav-pills mb-1" id="pills-tab" role="tablist">
                <li class="nav-item text-center" role="presentation">
                    <button class="nav-link tab-link active" id="pills-featured-tab" data-bs-toggle="pill"
                        data-bs-target="#pills-featured" type="button" role="tab" aria-controls="pills-featured"
                        aria-selected="true">DESCRIPTION</button>
                </li>
                <li class="nav-item text-center" role="presentation">
                    <button class="nav-link tab-link" id="pills-sellers-tab" data-bs-toggle="pill"
                        data-bs-target="#pills-sellers" type="button" role="tab" aria-controls="pills-sellers"
                        aria-selected="false">PRODUCT DETAILS</button>
                </li>
            </ul>
            <div class="tab-content" id="pills-tabContent">
                <div style="border: 1px solid #EBEBEB;" class="tab-pane fade show active p-3" id="pills-featured"
                    role="tabpanel" aria-labelledby="pills-featured-tab" tabindex="0">
                    <p style="color: #686464;">Donec porttitor lorem sit amet varius sagittis. Etiam auctor malesuada
                        condimentum. Nullam convallis rhoncus diam, sit amet facilisis erat tempus id.
                        Nulla placerat iaculis gravida. In non felis eget erat ornare rhoncus vehicula quis ligula.
                        Donec eu ex ullamcorper tortor mollis sagittis id vitae elit.
                        Fusce ante odio, condimentum id tincidunt sit amet, pulvinar sed mi.</p>
                </div>
                <div class="tab-pane fade" id="pills-sellers" role="tabpanel" aria-labelledby="pills-sellers-tab"
                    tabindex="0">
                    <div style="border: 1px solid #EBEBEB;" class="container p-3">
                        <p>Reference demo_5</p>
                        <p>In stock 899 Items</p>
                        <h5>Data sheet </h5>
                        <table style="color: #666666;" class="table table-striped table-bordered">
                            <tbody>
                                <tr>
                                    <td>Item Height</td>
                                    <td>14 Millimeters</td>
                                </tr>
                                <tr>
                                    <td>Item Width</td>
                                    <td>28 Centimeters</td>
                                </tr>
                                <tr>
                                    <td>Item Size</td>
                                    <td>18 Inches</td>
                                </tr>
                                <tr>
                                    <td>Item Weight</td>
                                    <td>2 Kg</td>
                                </tr>
                                <tr>
                                    <td>Product Dimensions</td>
                                    <td>21.9 x 31.4 x 1.8 cm</td>
                                </tr>
                                <tr>
                                    <td>Model number</td>
                                    <td>SMFe2r41HN/A</td>
                                </tr>
                                <tr>
                                    <td>RAM Size</td>
                                    <td> 64 GB</td>
                                </tr>
                                <tr>
                                    <td>Hard Drive Size</td>
                                    <td>32 GB</td>
                                </tr>
                                <tr>
                                    <td>Processor Speed</td>
                                    <td>2.9 GHz</td>
                                </tr>
                                <tr>
                                    <td>Operating System</td>
                                    <td>DoUbuntue</td>
                                </tr>
                                <tr>
                                    <td>Graphics Coprocessor</td>
                                    <td>Intel Integrated Graphics</td>
                                </tr>
                                <tr>
                                    <td>Hardware Platform</td>
                                    <td>Mac</td>
                                </tr>
                                <tr>
                                    <td>Processor Type</td>
                                    <td>Core i7</td>
                                </tr>
                                <tr>
                                    <td>Battery Life (in hours)</td>
                                    <td>54</td>
                                </tr>
                                <tr>
                                    <td>Hard Disk Technology</td>
                                    <td>Solid State Drive</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
         
    </div>
	<%-- <div class="container p-5"> 
	 	<div class="row slickSliders">
            <div class="mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
					 <div class="card text-center item">
					 <img src="asmweb/Websitebanhang/images/${item.image}" class="card-img-top" alt="...">
                                <div class="p-2">
                                <a href="/asm1/detproduc?id=${item.id}" class="text-dark ">
                                    <p class="card-text text-start text-decoration: none " style="font-style: 12px" >
                                         ${item.name}
                                    </p>
                                    </a>
                                    <div class="icon-rate text-start" style="font-size: 12px;">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p class="text-start" style="color: red; font-weight: 500;">
								${item.price} <sub style="color: green; font-weight: 500;"></sub>
							</p>
                                     
                                </div>
	                    

                	</div>
			<c:set var="id" value="${id+1}"></c:set>
				  
            </div>
             
         </div>  
			 
	</div> --%>
	<%@include file="Websitebanhang/JSP/booter.jsp"%>
</body>
</html>