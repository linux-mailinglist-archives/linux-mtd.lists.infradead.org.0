Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC68181CDB
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 16:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtkF4QJi7ENt+8XkRyxzdIFR94YJ32L/VEQM3B4ydRE=; b=lATleaR+cwVEAs
	4ZhNnT5NhsFEGQqlqjn+AJHoobAuwuYaTIRmePW8yR3X5PPrGk2XjlLE+l/5MKT8LmP0V5oGZZIpk
	wx7oCUsGsP7GYPGuVDg+JKuFjg7NLCr+mmVr6KBIG75ek9iJ3YuA4iJLe6o3JVgkPUvCH7mIhwLDa
	KQShnWkk09Wvj/LaDwZxtMNQZIBeJFrXQzrHQmFdEjEslju8zDbMkC+Snf/NAYjTD9xJcX9oubAED
	GW3nbQ2CDuujVTTB4hmtBbQvakGAEzX7qOzSUgKoU1S0sH3Rjx0AZVLnxDqcduDPHaL9yt3/wbsfM
	K97f/h8bYcT+zlDKFcaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3cs-00014i-Sk; Wed, 11 Mar 2020 15:50:30 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3ck-00014C-Fn
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 15:50:23 +0000
X-Originating-IP: 90.89.41.158
Received: from xps13 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id B843BE0004;
 Wed, 11 Mar 2020 15:50:11 +0000 (UTC)
Date: Wed, 11 Mar 2020 16:50:11 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>
Subject: Re: [PATCH v4 0/2] mtd: spinand: toshiba: Support for new Kioxia
 Serial NAND
Message-ID: <20200311165011.63a3d82e@xps13>
In-Reply-To: <cover.1583834323.git.ytc-mb-yfuruyama7@kioxia.com>
References: <cover.1583834323.git.ytc-mb-yfuruyama7@kioxia.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_085022_665748_557D8173 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
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
Cc: linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgWW9zaGlvLAoKWW9zaGlvIEZ1cnV5YW1hIDx5dGMtbWIteWZ1cnV5YW1hN0BraW94aWEuY29t
PiB3cm90ZSBvbiBXZWQsIDExIE1hcgoyMDIwIDEwOjQ3OjA0ICswOTAwOgoKPiBGaXJzdCBwYXRj
aCBpcyB0byByZW5hbWUgZnVuY3Rpb24gbmFtZSBiZWNhc2Ugb2YgYWRkIG5ldyBkZXZpY2UuCj4g
U2Vjb25kIHBhdGNoIGlzIHRvIHN1cHByb3QgZm9yIG5ldyBkZXZpY2UuCj4gCj4gWW9zaGlvIEZ1
cnV5YW1hICgyKToKPiAgIG10ZDogc3BpbmFuZDogdG9zaGliYTogUmVuYW1lIGZ1bmN0aW9uIG5h
bWUgdG8gY2hhbmdlIHN1ZmZpeCBhbmQKPiAgICAgcHJlZml4ICg4R2JpdCkKPiAgIG10ZDogc3Bp
bmFuZDogdG9zaGliYTogU3VwcG9ydCBmb3IgbmV3IEtpb3hpYSBTZXJpYWwgTkFORAo+IAo+ICBk
cml2ZXJzL210ZC9uYW5kL3NwaS90b3NoaWJhLmMgfCAxNzMgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEzMCBpbnNlcnRpb25zKCsp
LCA0MyBkZWxldGlvbnMoLSkKPiAKCkkgYW0gdmVyeSBzb3JyeSBidXQgYWN0dWFsbHkgSSBoYWQg
aXNzdWVzIGFwcGx5aW5nIGFsbCB5b3VyIHBhdGNoZXMgbm90CmJlY2F1c2UgdGhleSB3ZXJlIG5v
dCBiYXNlZCBvbiB2NS42LXJjMSwgYnV0IGJlY2F1c2Ugc2luY2UgdGhlbiBJCmFwcGxpZWQgYSBw
YXRjaCBjaGFuZ2luZyB0aGUgZGV0ZWN0aW9uIHRoYXQgY2hhbmdlZCB0aGUgY29udGVudCBvZiBh
CmxvdCBvZiBzdHJ1Y3R1cmVzIChpbmNsdWRpbmcgaW4gVG9zaGliYSdzIGRyaXZlcikuCgpDYW4g
eW91IHBsZWFzZSByZWJhc2UgYWdhaW4gb24gdG9wIG9mIHRoZSBjdXJyZW50IG5hbmQvbmV4dD8g
SSBhbSB2ZXJ5CnNvcnJ5IGZvciB0aGlzIGV4dHJhIHdvcmssIHRoaXMgaXMgbXkgbWlzdGFrZS4K
CkhlYWQgc2hvdWxkIGJlOgoKCWE1ZDUzYWQyNmE4YiAoIm10ZDogcmF3bmFuZDogYnJjbW5hbmQ6
IEFkZCBzdXBwb3J0IGZvciBmbGFzaC1lZHUgZm9yIGRtYSB0cmFuc2ZlcnMiKQoKQW5kIHRoZSBj
dWxwcml0IGNvbW1pdCBpczoKCglmMTU0MTc3M2FmNDkgKCJtdGQ6IHNwaW5hbmQ6IHJld29yayBk
ZXRlY3QgcHJvY2VkdXJlIGZvciBkaWZmZXJlbnQgUkVBRF9JRCBvcGVyYXRpb24iKQoKVGhhbmtz
LApNaXF1w6hsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
