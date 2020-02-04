Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A854152587
	for <lists+linux-mtd@lfdr.de>; Wed,  5 Feb 2020 05:11:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6T2zAq2ftBxkcQtooov0tac1clARejKuV1RnGxXyjjk=; b=L0CILsjxYjzsp7M3bhPzDWofb
	xNO52VSUzjEXos4zGlGZFv9LLG/vZoMWR1VXiMcyaIhGGOhZvppvQ4NuflC+cTPn1fB6aVo/P7Lgy
	+3cZOlXpN3TvFtL+hRn3LCz19Ox9/M/xcM3KR0LEkqLdf81mTtP9Po71vlluUS0sGvfZWRa/RZDD6
	WSzpz/y+Vyd+LE208wZ5B21okIet98FpD03kapn9dgvrJHVzjtQbpxPe4Jadk5+RpDe/z70E5+PDU
	HDX73RAqR/dFtH4SPB7jIMpD1aYGVimVtw+6lOG6i/grkaSWIuZyKZIwOyW92mc3zcQyeFDRbbH15
	YeJ/GcgBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izC22-0002uY-1G; Wed, 05 Feb 2020 04:11:18 +0000
Received: from mo-csw1114.securemx.jp ([210.130.202.156]
 helo=mo-csw.securemx.jp)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izC1t-0002jX-WC
 for linux-mtd@lists.infradead.org; Wed, 05 Feb 2020 04:11:11 +0000
Received: by mo-csw.securemx.jp (mx-mo-csw1114) id 0154AtKH001907;
 Wed, 5 Feb 2020 13:10:55 +0900
X-Iguazu-Qid: 2wHHtzQN1IJBztet9g
X-Iguazu-QSIG: v=2; s=0; t=1580875855; q=2wHHtzQN1IJBztet9g;
 m=IQTLn51A8N4XphFMWlu/8Md0Eo6xhWTaA0lOu9rFxI4=
Received: from imx12.toshiba.co.jp (imx12.toshiba.co.jp [61.202.160.132])
 by relay.securemx.jp (mx-mr1111) id 0154AsM7031304;
 Wed, 5 Feb 2020 13:10:54 +0900
Received: from enc02.toshiba.co.jp ([61.202.160.51])
 by imx12.toshiba.co.jp  with ESMTP id 0154AslS010278;
 Wed, 5 Feb 2020 13:10:54 +0900 (JST)
Received: from hop101.toshiba.co.jp ([133.199.85.107])
 by enc02.toshiba.co.jp  with ESMTP id 0154ArdQ009010;
 Wed, 5 Feb 2020 13:10:53 +0900
Subject: Re: [PATCH] mtd: nand: Add comment about Kioxia ID
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <1580783163-5601-1-git-send-email-ytc-mb-yfuruyama7@kioxia.com>
 <20200204095214.666c71fc@xps13>
From: Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>
X-TSB-HOP: ON
Message-ID: <73dae14b-5bf0-b909-3229-aab3ed232669@kioxia.com>
Date: Tue, 4 Feb 2020 19:30:04 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200204095214.666c71fc@xps13>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_201110_309261_1AF5895E 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [210.130.202.156 listed in list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

RGVhciBNaXF1w6hsLAoKCk9uIDIwMjAvMDIvMDQgMTc6NTIsIE1pcXVlbCBSYXluYWwgd3JvdGU6
Cj4gSGkgWW9zaGlvLAo+Cj4gWW9zaGlvIEZ1cnV5YW1hIDx5dGMtbWIteWZ1cnV5YW1hN0BraW94
aWEuY29tPiB3cm90ZSBvbiBUdWUsICA0IEZlYgo+IDIwMjAgMTE6MjY6MDMgKzA5MDA6Cj4KPj4g
QWRkIGEgY29tbWVudCBhYm92ZSBOQU5EX01GUl9UT1NISUJBIGFuZCBTUElOQU5EX01GUl9UT1NI
SUJBIGRlZmluaXRpb25zCj4+IHRoYXQgVG9zaGliYSBhbmQgS2lveGlhIElEIGFyZSB0aGUgc2Ft
ZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogWW9zaGlvIEZ1cnV5YW1hIDx5dGMtbWIteWZ1cnV5YW1h
N0BraW94aWEuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9pbnRlcm5hbHMu
aCB8IDEgKwo+PiAgIGRyaXZlcnMvbXRkL25hbmQvc3BpL3Rvc2hpYmEuYyAgIHwgMSArCj4+ICAg
MiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbXRkL25hbmQvcmF3L2ludGVybmFscy5oIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvaW50ZXJu
YWxzLmgKPj4gaW5kZXggY2JhNmZlNy4uMjkxODM3NmIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
bXRkL25hbmQvcmF3L2ludGVybmFscy5oCj4+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2lu
dGVybmFscy5oCj4+IEBAIC0zMCw2ICszMCw3IEBACj4+ICAgI2RlZmluZSBOQU5EX01GUl9TQU1T
VU5HCTB4ZWMKPj4gICAjZGVmaW5lIE5BTkRfTUZSX1NBTkRJU0sJMHg0NQo+PiAgICNkZWZpbmUg
TkFORF9NRlJfU1RNSUNSTwkweDIwCj4+ICsvKiBUb3NoaWJhIGFuZCBLaW94aWEgSUQgYXJlIHRo
ZSBzYW1lLiAqLwo+PiAgICNkZWZpbmUgTkFORF9NRlJfVE9TSElCQQkweDk4Cj4+ICAgI2RlZmlu
ZSBOQU5EX01GUl9XSU5CT05ECTB4ZWYKPj4gICAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRk
L25hbmQvc3BpL3Rvc2hpYmEuYyBiL2RyaXZlcnMvbXRkL25hbmQvc3BpL3Rvc2hpYmEuYwo+PiBp
bmRleCAwZGI1ZWU0Li5hOTJlY2M4IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Nw
aS90b3NoaWJhLmMKPj4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9zcGkvdG9zaGliYS5jCj4+IEBA
IC0xMCw2ICsxMCw3IEBACj4+ICAgI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgo+PiAgICNpbmNs
dWRlIDxsaW51eC9tdGQvc3BpbmFuZC5oPgo+PiAgIAo+PiArLyogVG9zaGliYSBhbmQgS2lveGlh
IElEIGFyZSB0aGUgc2FtZS4gKi8KPj4gICAjZGVmaW5lIFNQSU5BTkRfTUZSX1RPU0hJQkEJCTB4
OTgKPj4gICAjZGVmaW5lIFRPU0hfU1RBVFVTX0VDQ19IQVNfQklURkxJUFNfVAkoMyA8PCA0KQo+
PiAgIAo+Cj4gIkFyZSB0aGUgc2FtZSIgaXMgbm90IHZlcnkgZGVzY3JpcHRpdmUsIHdoYXQgYWJv
dXQgIktpb3hpYSBpcyB0aGUgbmV3Cj4gbmFtZSBvZiBUb3NoaWJhIj8KCgpUaGF0J3MgYSBnb29k
IGlkZWEuCgpBY3R1YWxseSAsCgpJcyB3YXMgY2hhbmdlZCBhIGNvbXBhbnkgbmFtZSBmcm9tIFRv
c2hpYmEgbWVtb3J5IENvIHRvIEtpb3hpYSBDby7CoMKgwqDCoCAKU2luY2UgYmVjYW1lIGluZGVw
ZW5kZW50IGZyb20gVG9zaGliYSBncm91cC4KCkkgd2lsbCB1cGRhdGUgdGhlIGNvbW1lbnQgYXMg
Iktpb3hpYSBpcyBuZXcgbmFtZSBvZiBUb3NoaWJhIG1lbW9yeSIKCgpUaGFua3MKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1U
RCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
