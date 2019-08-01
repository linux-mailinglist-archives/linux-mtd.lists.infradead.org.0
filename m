Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA347D621
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 09:13:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDEzTU2RNUv6klMUtxRWqATCrzzqaorVzZiQrBt+Qi4=; b=rhR4BB9asj7Ajq
	TnRTN50Xuxi1ixsLnpBpbxSvnzpv9AkZOhUyScViXrkWqotFOYWm9qQ8y7AupbmmoXnRINEKn3aYT
	Qb6UUFB9590KLvb7WISaVNHa5bQtLa031pi5IBqxoS/4lpsC2sppIyv4F0XhsR4zw/eJRu8RRGEB+
	6hMoTPMO93VKAyzJC+MBqxZ03Tbq5MoObUyKn2PBaPay1P6bB0Cvja3QAvv5p8/cm0NV6ek41SKEO
	Vw4P51E1kE+Xk4MXbZBq0Ge4Q9FL0Z01lgYexIhEjZuDA7WjfqwwngOEyYianxTbCD+z7HdD+Bp4d
	FzE8ScrTAfvULqS2fiaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5HS-0000y9-83; Thu, 01 Aug 2019 07:13:42 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5H3-0000xY-9g
 for linux-mtd@lists.infradead.org; Thu, 01 Aug 2019 07:13:18 +0000
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id B3C0A100005;
 Thu,  1 Aug 2019 07:13:12 +0000 (UTC)
Date: Thu, 1 Aug 2019 09:13:10 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mason Yang <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v6 2/2] dt-bindings: mtd: Document Macronix raw NAND
 controller bindings
Message-ID: <20190801091310.035bc824@xps13>
In-Reply-To: <1564631710-30276-3-git-send-email-masonccyang@mxic.com.tw>
References: <1564631710-30276-1-git-send-email-masonccyang@mxic.com.tw>
 <1564631710-30276-3-git-send-email-masonccyang@mxic.com.tw>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_001317_524012_DF7EB16F 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, anders.roxell@linaro.org,
 vigneshr@ti.com, bbrezillon@kernel.org, juliensu@mxic.com.tw, richard@nod.at,
 christophe.kerello@st.com, linux-kernel@vger.kernel.org, stefan@agner.ch,
 paul@crapouillou.net, marek.vasut@gmail.com, paul.burton@mips.com,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, liang.yang@amlogic.com,
 lee.jones@linaro.org, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFzb24sCgpNYXNvbiBZYW5nIDxtYXNvbmNjeWFuZ0BteGljLmNvbS50dz4gd3JvdGUgb24g
VGh1LCAgMSBBdWcgMjAxOSAxMTo1NToxMAorMDgwMDoKCj4gRG9jdW1lbnQgdGhlIGJpbmRpbmdz
IHVzZWQgYnkgdGhlIE1hY3Jvbml4IHJhdyBOQU5EIGNvbnRyb2xsZXIuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogTWFzb24gWWFuZyA8bWFzb25jY3lhbmdAbXhpYy5jb20udHc+Cj4gLS0tCj4gIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvbXhpYy1uYW5kLnR4dCB8IDE5ICsrKysr
KysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvbXhp
Yy1uYW5kLnR4dAo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbXRkL214aWMtbmFuZC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbXRkL214aWMtbmFuZC50eHQKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAw
MDAuLmRlMzdkNjAKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL210ZC9teGljLW5hbmQudHh0Cj4gQEAgLTAsMCArMSwxOSBAQAo+ICtNYWNy
b25peCBSYXcgTkFORCBDb250cm9sbGVyIERldmljZSBUcmVlIEJpbmRpbmdzCj4gKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiArCj4gK1JlcXVpcmVk
IHByb3BlcnRpZXM6Cj4gKy0gY29tcGF0aWJsZTogc2hvdWxkIGJlICJteGljeSxtdWx0aS1pdGZj
LXYwMDktbmFuZC1tb3JwaCIKPiArLSByZWc6IHNob3VsZCBjb250YWluIDEgZW50cnkgZm9yIHRo
ZSByZWdpc3RlcnMKPiArLSBpbnRlcnJ1cHRzOiBpbnRlcnJ1cHQgbGluZSBjb25uZWN0ZWQgdG8g
dGhpcyByYXcgTkFORCBjb250cm9sbGVyCj4gKy0gY2xvY2stbmFtZXM6IHNob3VsZCBjb250YWlu
ICJwcyIsICJzZW5kIiBhbmQgInNlbmRfZGx5Igo+ICstIGNsb2Nrczogc2hvdWxkIGNvbnRhaW4g
MyBwaGFuZGxlcyBmb3IgdGhlICJwcyIsICJzZW5kIiBhbmQKPiArCSAic2VuZF9kbHkiIGNsb2Nr
cwo+ICsKPiArRXhhbXBsZToKPiArCj4gKwluYW5kOiBuYW5kLWNvbnRyb2xsZXJANDNjMzAwMDAg
ewo+ICsJCWNvbXBhdGlibGUgPSAibXhpY3ksbXVsdGktaXRmYy12MDA5LW5hbmQtbW9ycGgiOwoK
Im14aWN5IiBsb29rcyBzdHJhbmdlIHRvIG1lLCBJIGtub3cgaXQgaGFzIGJlZW4gdXNlZCBpbiB0
aGUgcGFzdCBhbmQKY2Fubm90IGJlIHJlbW92ZWQsIGJ1dCBJIGRvbid0IHRoaW5rIGl0IGlzIHdp
c2UgdG8gY29udGludWUgdXNpbmcgaXQKd2hpbGUgeW91ciB1c2UgIm14aWMiIGluIGFsbCB5b3Vy
IG90aGVyIGNvbnRyaWJ1dGlvbnMuIEkgd291bGQgdXBkYXRlCnRoZSBwcmVmaXggdG8gbXhpYyBo
ZXJlIGFuZCBmaWxsLWluIHRoZSByZWxldmFudCBkb2MuCgpBbHNvLCB3aGF0IGlzIG5hbmQtbW9y
cGg/IEkgdGhvdWdodCB3ZSB3ZXJlIG9rYXkgZm9yCnRoZSAiLW5hbmQtY29udHJvbGxlciIgc3Vm
Zml4LgoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
