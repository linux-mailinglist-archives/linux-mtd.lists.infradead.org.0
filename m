Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEAE1AE129
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Apr 2020 17:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6oM+Nh3IMkgRuR7aIUIKsapNKFz8Xg2M9W32bAc7eE8=; b=YyI0KBhV/sl5Lp
	b59E/DNoLC6G2dUeuCkWV/d2poC/m5rN4d3PIrgEl5WVou2vNyx1PQp5IynuYNFDPtmMPpBLsaKRg
	4Imjg+25HKSVkA94RqVqg2nhI9plTTXxiaLiKc6OoK6KU7Y9SItuxgs2713HMQeeALqyzPhLg25n5
	EsaTPrjoMJ+xvz9pz9hFPjupxOnf3CzJTUYnx/pLHRpKG7ugd5wm0zumTFIGXZDZ2eIAFuaseDUF3
	IfeoO3agg2C2jciyYE9SXYkhozT15VmOLAn4JLxoJPJLymzV9PT1R+c2B9uqkI8PESA7DIHniO1Rh
	QXMPEVeyJ/524MKesOdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPSyK-0003ud-2x; Fri, 17 Apr 2020 15:32:04 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSyD-0003so-1H
 for linux-mtd@lists.infradead.org; Fri, 17 Apr 2020 15:31:58 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 493g7D0JF5z1rtyg;
 Fri, 17 Apr 2020 17:31:51 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 493g7C5ZqDz1qr4G;
 Fri, 17 Apr 2020 17:31:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id GUUUdMPMKaWa; Fri, 17 Apr 2020 17:31:50 +0200 (CEST)
X-Auth-Info: ukL+QQvR1R43aIroK+RGm7l/Kp938KyMrR7ZkknM+ig=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri, 17 Apr 2020 17:31:50 +0200 (CEST)
Subject: Re: [PATCH v2 03/12] bus: stm32-fmc2-ebi: add STM32 FMC2 EBI
 controller driver
To: Christophe Kerello <christophe.kerello@st.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
References: <1586966256-29548-1-git-send-email-christophe.kerello@st.com>
 <1586966256-29548-4-git-send-email-christophe.kerello@st.com>
 <20200416215328.53982fef@collabora.com>
 <e4a21df4-b01b-1215-7a3b-fea94f099b8f@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <c69f86f4-5904-3f35-dac1-87080402a096@denx.de>
Date: Fri, 17 Apr 2020 17:31:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <e4a21df4-b01b-1215-7a3b-fea94f099b8f@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_083157_233268_47437561 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 tony@atomide.com, richard@nod.at, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 lee.jones@linaro.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gNC8xNy8yMCA1OjI5IFBNLCBDaHJpc3RvcGhlIEtlcmVsbG8gd3JvdGU6Cj4gCj4gCj4gT24g
NC8xNi8yMCA5OjUzIFBNLCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6Cj4+IE9uIFdlZCwgMTUgQXBy
IDIwMjAgMTc6NTc6MjcgKzAyMDAKPj4gQ2hyaXN0b3BoZSBLZXJlbGxvIDxjaHJpc3RvcGhlLmtl
cmVsbG9Ac3QuY29tPiB3cm90ZToKPj4KPj4+IFRoZSBkcml2ZXIgYWRkcyB0aGUgc3VwcG9ydCBm
b3IgdGhlIFNUTWljcm9lbGVjdHJvbmljcyBGTUMyIEVCSQo+Pj4gY29udHJvbGxlcgo+Pj4gZm91
bmQgb24gU1RNMzJNUCBTT0NzLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgS2Vy
ZWxsbyA8Y2hyaXN0b3BoZS5rZXJlbGxvQHN0LmNvbT4KPj4+IFRlc3RlZC1ieTogTWFyZWsgVmFz
dXQgPG1hcmV4QGRlbnguZGU+Cj4+PiAtLS0KPj4+IENoYW5nZXMgaW4gdjI6Cj4+PiDCoCAtIGNh
bGwgMiBBUElzIHRvIG1hbmFnZSBGTUMyIGVuYWJsZS9kaXNhYmxlIGluc3RlYWQgb2Ygb3BzCj4+
PiDCoCAtIGNhbGwgMiBBUElzIHRvIG1hbmFnZSBGTUMyIE5XQUlUIHNoYXJlZCBzaWduYWwgaW5z
dGVhZCBvZiBvcHMKPj4+Cj4+PiDCoCBkcml2ZXJzL2J1cy9LY29uZmlnwqDCoMKgwqDCoMKgwqDC
oMKgIHzCoMKgIDExICsKPj4+IMKgIGRyaXZlcnMvYnVzL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDC
oCB8wqDCoMKgIDEgKwo+Pj4gwqAgZHJpdmVycy9idXMvc3RtMzItZm1jMi1lYmkuYyB8IDEwOTEK
Pj4+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pgo+PiBIbSwg
SSBzZWUgdGhhdCBvdGhlciBtZW1vcnkgYnVzIGNvbnRyb2xsZXIgZHJpdmVycyBhcmUgcGxhY2Vk
IHVuZGVyCj4+IGRyaXZlcnMvbWVtb3J5LywgYW55IHJlYXNvbiBmb3IgY2hvb3NpbmcgZHJpdmVy
cy9idXMvPyBJZiB0aGF0J3Mgd2hlcmUKPj4gd2Ugd2FudCB0byBoYXZlIGFsbCBnZW5lcmljIG1l
bW9yeSBidXMgY29udHJvbGxlcnMgdG8gbGl2ZSBpdCBtaWdodCBiZQo+PiB3b3J0aCBtb3Zpbmcg
ZXhpc3RpbmcgZHJpdmVycyB0byB0aGUgZHJpdmVycy9idXMvIGRpcmVjdG9yeSBhdCBzb21lCj4+
IHBvaW50Lgo+Pgo+IAo+IEhpIEJvcmlzLAo+IAo+IEkgc2VlIHRoaXMgY29udHJvbGxlciBhcyBh
biBleHRlcm5hbCBidXMgaW50ZXJmYWNlIGFzIHdlIGFyZSBhYmxlIHRvCj4gYXR0YWNoIGRpZmZl
cmVudCBkZXZpY2VzIG9uIGl0LCBsaWtlIGEgUFNSQU0sIGFuIGV0aGVybmV0IGNvbnRyb2xsZXIs
IGEKPiBGUEdBLCBhIExDRCBkaXNwbGF5LCAuLi4KPiAKPiBXaGVuIEkgaGFkIGEgbG9vayBhdCBi
dXMvS2NvbmZpZyBmaWxlLCBJIGhhdmUgZm91bmQgc2ltaWxhciBkcml2ZXJzCj4gKGxpa2UgSU1Y
X1dFSU0gb3IgUUNPTV9FQkkyIGRyaXZlcnMpLiBUaGVzZSBkcml2ZXJzIGFyZSBhYmxlIHRvIGNv
bm5lY3QKPiBkZXZpY2VzIGxpa2UgTkFORCBGbGFzaCwgU1JBTSwgZXRoZXJuZXQgYWRhcHRlcnMs
IEZQR0FzIGFuZCBMQ0QgZGlzcGxheXMKPiBhcyBpdCBpcyB3cml0dGVuIGluIHRoZSBLY29uZmln
IGZpbGUuCj4gCj4gQnV0LCBhZnRlciBjaGVja2luZyBtZW1vcnkvS2NvbmZpZyBmaWxlLCBpdCBp
cyBhbHNvIHBvc3NpYmxlIHRvIGZpbmQKPiBzaW1pbGFyIGRyaXZlcnMgKGxpa2UgQVRNRUxfRUJJ
IGRyaXZlciB0aGF0IGlzIGluc3BpcmVkIGJ5IHRoZSBXRUlNIGJ1cwo+IGRyaXZlcikuCj4gCj4g
U28sIEkgd2lsbCBmb2xsb3cgdGhlIHJlY29tbWVuZGF0aW9uIGFuZCBJIHdpbGwgbW92ZSBpdCB0
bwo+IGRyaXZlcnMvbWVtb3J5IGZvbGRlciBpZiBpdCBpcyB0aGUgcGxhY2Ugd2hlcmUgdGhpcyBk
cml2ZXIgc2hvdWxkIGJlLgoKVGhlIEVCSSBpc24ndCBhIG1lbW9yeSBidXMsIHlvdSBjYW4gdmVy
eSB3ZWxsIGhhdmUgYSBub24tbWVtb3J5IGRldmljZSwKbGlrZSBhbiBleHRlcm5hbCBwYXJhbGxl
bCBidXMgbWVtb3J5IGNvbnRyb2xsZXIgb24gaXQuIFNvIHdoeSBzaG91bGQgaXQKYmUgaW4gZHJp
dmVycy9tZW1vcnkgPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
