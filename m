Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 878ED135CED
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 16:38:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZyo+Mlc9vmDvb7G0DN717kQ4tajhlIO+NeSEuMjays=; b=jp+mkBHQ5WsvWI
	iMMXz7r7Pv0p/UFVgzMWqZ8Zf5sy1AbOD/Ys3QdKsIJnVfp+ZzqXY+RjQ9tQu1aLkqf+OMvwkuEe2
	ZtO2SdBwLro7ULzCMP4gVBQ2hYwNPHhYcfE38UwtYxRD7eIetNUTQrf5P5H4PNRPmDBBHZUeK9l6N
	PxSDEAgYD2v8AyjcYOYZN8gV2BWovshplItPaGfPM3HSZa31OQnEAMMpuHSizj8Rfev8WHnJYPgvv
	PRJ03VdGLEEW2QsykhAzvN1H6CSIJKaSVFU5qdT25us7uHNMDRicolWt+4QOmgmzzHGlqed2AAzY4
	jwrApT/snsfKA4cs4FFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZsx-0001bq-84; Thu, 09 Jan 2020 15:38:11 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZsn-0001bB-B9
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 15:38:03 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id D3BEF240009;
 Thu,  9 Jan 2020 15:37:53 +0000 (UTC)
Date: Thu, 9 Jan 2020 16:37:52 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Martin Devera <devik@eaxlabs.cz>
Subject: Re: [PATCH] mtd: rawnand: Fix unexpected timeouts in waitrdy
Message-ID: <20200109163752.621c6248@xps13>
In-Reply-To: <20191210150319.3125-1-devik@eaxlabs.cz>
References: <20191210150319.3125-1-devik@eaxlabs.cz>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_073801_525828_8B85ACA5 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Christophe Kerello <christophe.kerello@st.com>,
 Marek Vasut <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Boris Brezillon <boris.brezillon@bootlin.com>,
 linux-mtd@lists.infradead.org, jan.pohanka@merz.cz,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFydGluLAoKTWFydGluIERldmVyYSA8ZGV2aWtAZWF4bGFicy5jej4gd3JvdGUgb24gVHVl
LCAxMCBEZWMgMjAxOSAxNjowMzoxOAorMDEwMDoKCj4gVGhlIHVzZWQgd2F5IHRvIGNvbXB1dGUg
amlmZmllcyB0aW1lb3V0IGJyb2tlcyB3aGVuCj4gamlmZmllIGRpZmZlcmVuY2UgaXMgMS4gU2lt
cGx5IGFkZCAxIC0gaXQgaGFzIG5vIG90aGVyCj4gc2lkZSBlZmZlY3RzLgo+IEZpeGVzIFNUTTMy
TVAxIEZNQzIgTkFORCBjb250cm9sbGVyIHdoaWNoIHNvbWV0aW1lcyBmYWlsZWQKPiBleGFjdGx5
IGluIHRoaXMgd2F5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hcnRpbiBEZXZlcmEgPGRldmlrQGVh
eGxhYnMuY3o+Cj4gLS0tCj4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jIHwgNiAr
KysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX2Jhc2UuYyBiL2RyaXZl
cnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jCj4gaW5kZXggZDUyN2U0NDhjZTE5Li5iZWFiM2E3
NzVjYzcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMKPiAr
KysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX2Jhc2UuYwo+IEBAIC03MjEsNyArNzIxLDEx
IEBAIGludCBuYW5kX3NvZnRfd2FpdHJkeShzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLCB1bnNpZ25l
ZCBsb25nIHRpbWVvdXRfbXMpCj4gIAlpZiAocmV0KQo+ICAJCXJldHVybiByZXQ7Cj4gIAo+IC0J
dGltZW91dF9tcyA9IGppZmZpZXMgKyBtc2Vjc190b19qaWZmaWVzKHRpbWVvdXRfbXMpOwo+ICsJ
LyogKzEgYmVsb3cgaXMgbmVjZXNzYXJ5IGJlY2F1c2UgaWYgd2UgYXJlIG5vdyBpbiB0aGUgbGFz
dCBmcmFjdGlvbgo+ICsJICogb2YgamlmZnkgYW5kIG1zZWNzX3RvX2ppZmZpZXMgaXMgMSB0aGVu
IHdlIHdpbGwgd2FpdCBvbmx5IHRoYXQKPiArCSAqIHNtYWxsIGppZmZ5IGZyYWN0aW9uIC0gcG9z
c2libHkgbGVhZGluZyB0byBmYWxzZSB0aW1lb3V0Cj4gKwkgKi8KPiArCXRpbWVvdXRfbXMgPSBq
aWZmaWVzICsgbXNlY3NfdG9famlmZmllcyh0aW1lb3V0X21zKSArIDE7Cj4gIAlkbyB7Cj4gIAkJ
cmV0ID0gbmFuZF9yZWFkX2RhdGFfb3AoY2hpcCwgJnN0YXR1cywgc2l6ZW9mKHN0YXR1cyksIHRy
dWUpOwo+ICAJCWlmIChyZXQpCgpJIGRvbid0IHJlYWxseSB3aGF0IHlvdSBhcmUgZml4aW5nIGhl
cmUsIEkgc3VzcGVjdCB0aGUgcm9vdCBjYXVzZSB0byBiZQphIHdyb25nbHkgY2FsY3VsYXRlZCB0
aW1lb3V0X21zIGluIHRoZSBjYWxsaW5nIGRyaXZlci4KCkl0IGlzIHRoZSByZXNwb25zaWJpbGl0
eSBvZiB0aGUgY2FsbGVyIHRvIHVzZSB0aGlzIGZ1bmN0aW9uIHdpdGggYQpyZWxldmFudCB0aW1l
b3V0X21zIHBhcmFtZXRlci4gTWF5YmUgQ2hyaXN0b3BoZSBjYW4gaGVscCB5b3UgaGVyZT8KCgpU
aGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
