Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7D5147452
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Jan 2020 00:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmDPtYC6hvIzL30lJoPbI61gHkc8C7p8LbDX8CSTW+4=; b=i78cXXO5qvbmg9
	IOKaPwX1o+gv6Z13vP0GcPicD58/uRWRdSVw1V/yqIyyyYWHq+QE2kKFPJhh7oebKvLQhzMkmYD17
	Sf7rNBVCLdt4NLSztIS/CibG17VQY5v0douCVTgCLV0kg5GezTS75xsP3qZBuCpWfUU+8Z1et9KDc
	uip1HymDm4cLVMsrAMZpUDf4+TSZcEfBKWJUxQr2In+rPGl7ijfiuIXfRt/B1Y+MX4geS1xJf+RNY
	77lse6wxqaEMaFkZwfJr9uOYkwPHPu6BWDzEMQz/Yi61jx2iygxk77DCIDATnJKC+nZOOTYSkSA46
	u4P/mhNDY2XTH8sAs1JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iulbO-0005cJ-0J; Thu, 23 Jan 2020 23:09:30 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iulbF-0005bT-JL
 for linux-mtd@lists.infradead.org; Thu, 23 Jan 2020 23:09:22 +0000
Received: by mail-qk1-x744.google.com with SMTP id j20so239535qka.10
 for <linux-mtd@lists.infradead.org>; Thu, 23 Jan 2020 15:09:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=7uiCjSSCZSVUod21B2H/Tkjx2WrBUx9BhkTEN2ChC/c=;
 b=kuhRVJ24fzDCQU8OMIx4yhwrEdkZwh5BU3SnGSKbJ7KxNgbH3ux2s60q8rmlq7TSbn
 rSg+nekjAfzXabrUPbndI/iVYIfMQtwwhBRLH1nJMPedTGbwNaBAYAHRqaS4mxgCtn/i
 qBUYWJozt2GYIx7JsiYYSnb56H505kaNxg1Ftd+KiAKs/QMKZhE77EM+17l6LTF9EvK8
 ubJHirmNyQzJaEpubQsuO7GF2h98RabdsF5HSKVFm83MEhpbHJvF0D5504bFRsZqWqcF
 SmIILEmSsCqAbc+zZzJvlHQQI0QQBjEKLz60gbd5vfy3fwcuUx2c5cjFpu7g1GJkJDnZ
 6i4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=7uiCjSSCZSVUod21B2H/Tkjx2WrBUx9BhkTEN2ChC/c=;
 b=lU4m/Ps726woFBh0MPK+kX2U5eQjP4CKoaHJ6UQeq2Jga3cWMNJbdGWaDNfXE3dI7t
 KTmLziAylcXyDIPG2RxALdCX0RhDaBaktTUhLDRcHSx8ihRaLFMNCmlNLw5NOw+hcEPW
 v45dGVjQ5uGULLI5gId0JnDRpk/uDLeQ1qvhK/Y3nLRAgiX9BlZKgXqocawQfMsG8Y0U
 WRmkuemI/UpcoBgJABhkks2597QqViuH0IqfYYWXSrwC36JwLCXzg/9zHly0BwG7Ob5s
 C/n/UpQ+JwpKrqcKyMYyTs51NQyrezXyFt21BqBxV82mqkLoueMnOhqiDafNA2S4ABpu
 Jw+A==
X-Gm-Message-State: APjAAAVECqHebmfG6OX5Zd3W6IQQdHd4DuzagPtAYcRZuTEa/ERbGz5L
 6C6uGu6Xygsb2AfczTLC3Zs=
X-Google-Smtp-Source: APXvYqxZSfz8uO5tyQlMAmcfiy8fkZlxzITlIcOQZft/gJKR6LkI7UzQPTD1whTiZCJSkP1xZyCJRQ==
X-Received: by 2002:ae9:edc8:: with SMTP id c191mr638340qkg.227.1579820958674; 
 Thu, 23 Jan 2020 15:09:18 -0800 (PST)
Received: from [10.0.0.29] (pool-98-118-94-114.bstnma.fios.verizon.net.
 [98.118.94.114])
 by smtp.gmail.com with ESMTPSA id m23sm2110648qtp.6.2020.01.23.15.09.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2020 15:09:18 -0800 (PST)
From: Kamal Dasu <kdasu.kdev@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH V3 1/3] dt: bindings: brcmnand: Add support for flash-edu
Date: Thu, 23 Jan 2020 18:09:17 -0500
Message-Id: <1F43C9DF-7176-4173-972B-99584E99C7E0@gmail.com>
References: <20200123135402.GA4763@bogus>
In-Reply-To: <20200123135402.GA4763@bogus>
To: Rob Herring <robh@kernel.org>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_150921_664480_5D1B3A03 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kdasu.kdev[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Um9iLCAKCkFkZGVkIHRhZ3MgdG8gIGxhdGVzdCB2NCBwYXRjaCBzZXQuCgpUaGFuayBZb3UKS2Ft
YWwKCj4gT24gSmFuIDIzLCAyMDIwLCBhdCA4OjU0IEFNLCBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPiB3cm90ZToKPiAKPiDvu79PbiBXZWQsIDIyIEphbiAyMDIwIDE1OjQxOjA5IC0wNTAw
LCBLYW1hbCBEYXN1IHdyb3RlOgo+PiBBZGRpbmcgc3VwcG9ydCBmb3IgRUJJIERNQSB1bml0IChF
RFUpLgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogS2FtYWwgRGFzdSA8a2Rhc3Uua2RldkBnbWFpbC5j
b20+Cj4+IC0tLQo+PiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvYnJjbSxicmNtbmFuZC50
eHQgICAgICAgICAgfCAxMCArKysrKy0tLS0tCj4+IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pCj4+IAo+IAo+IFBsZWFzZSBhZGQgQWNrZWQtYnkvUmV2aWV3
ZWQtYnkgdGFncyB3aGVuIHBvc3RpbmcgbmV3IHZlcnNpb25zLiBIb3dldmVyLAo+IHRoZXJlJ3Mg
bm8gbmVlZCB0byByZXBvc3QgcGF0Y2hlcyAqb25seSogdG8gYWRkIHRoZSB0YWdzLiBUaGUgdXBz
dHJlYW0KPiBtYWludGFpbmVyIHdpbGwgZG8gdGhhdCBmb3IgYWNrcyByZWNlaXZlZCBvbiB0aGUg
dmVyc2lvbiB0aGV5IGFwcGx5Lgo+IAo+IElmIGEgdGFnIHdhcyBub3QgYWRkZWQgb24gcHVycG9z
ZSwgcGxlYXNlIHN0YXRlIHdoeSBhbmQgd2hhdCBjaGFuZ2VkLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9u
IG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW10ZC8K
