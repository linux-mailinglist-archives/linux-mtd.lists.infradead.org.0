Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C98439FB9A
	for <lists+linux-mtd@lfdr.de>; Wed, 28 Aug 2019 09:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSa/0bUtumSmLS90cocZCQj7+hiubStrj6dyUiO5x34=; b=O6Fb5HY1ZaIj/P
	Zj+AJuvkfKHFhAnVBzeJGoThm/wvzARA8OkKbEIXH5AP587iV/6acF5a+FwGqsqQELzGLRqYGUqFV
	EodrrZkSM8gvjDdwPz20aVLymgOdKBVg/jFhN2BtcscMYQ7lfuJfU60LiQCHrt2WWcMEM3mw+rzSt
	f6XjQcqjqfA0BaidFYumYD1a2ebcCzmxwdhznt6vxNCpXLoLWz8QGqZTgaKEJYwBJuKRIKA9KY6UU
	EehNqx6jS90wFwGZGZaeT3mGbza6v5Pa9qpzODpDmC5qvORWiZN/Aqruc1b4YQi/V9KMOG5IoLsXC
	OCRrER9EH/WO9IL8tx0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sKh-0002K9-Ki; Wed, 28 Aug 2019 07:25:31 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2sJo-0001pR-LY
 for linux-mtd@lists.infradead.org; Wed, 28 Aug 2019 07:24:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 75B906083139;
 Wed, 28 Aug 2019 09:24:26 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id BohZBxlg8vLS; Wed, 28 Aug 2019 09:24:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id BB38E608313E;
 Wed, 28 Aug 2019 09:24:25 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Scw3hM_Av0Sa; Wed, 28 Aug 2019 09:24:25 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 84A0A6083139;
 Wed, 28 Aug 2019 09:24:25 +0200 (CEST)
Date: Wed, 28 Aug 2019 09:24:25 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: chengzhihao1 <chengzhihao1@huawei.com>
Message-ID: <990736007.75294.1566977065451.JavaMail.zimbra@nod.at>
In-Reply-To: <0B80F9D4116B2F4484E7279D5A66984F7D875E@dggemi524-mbx.china.huawei.com>
References: <1565431061-145460-1-git-send-email-chengzhihao1@huawei.com>
 <CAFLxGvzOMfqJJ+ZKTUavxEx+0_OJO_VcrNu1nn2rrvcypAxAAA@mail.gmail.com>
 <0B80F9D4116B2F4484E7279D5A66984F7D875E@dggemi524-mbx.china.huawei.com>
Subject: =?utf-8?Q?Re:_=E7=AD=94=E5=A4=8D:_[PATCH_RFC_v2]_?=
 =?utf-8?Q?ubi:_ubi=5Fwl=5Fget=5Fpeb:_In?=
 =?utf-8?Q?crease_the_number_of_attempts_while_getting_PEB?=
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: ubi_wl_get_peb: Increase the number of attempts while getting PEB
Thread-Index: AQHVT2EsTJNmHoCNk0y5Wp2VB7/tCKb5GeuAgBbPnRBaZNfHxQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_002436_919032_E8B982D9 
X-CRM114-Status: UNSURE (   3.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, yi zhang <yi.zhang@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogImNoZW5nemhpaGFvMSIgPGNo
ZW5nemhpaGFvMUBodWF3ZWkuY29tPgo+IEFuOiAiUmljaGFyZCBXZWluYmVyZ2VyIiA8cmljaGFy
ZC53ZWluYmVyZ2VyQGdtYWlsLmNvbT4KPiBDQzogInJpY2hhcmQiIDxyaWNoYXJkQG5vZC5hdD4s
ICJ5aSB6aGFuZyIgPHlpLnpoYW5nQGh1YXdlaS5jb20+LCAibGludXgtbXRkIiA8bGludXgtbXRk
QGxpc3RzLmluZnJhZGVhZC5vcmc+LAo+ICJsaW51eC1rZXJuZWwiIDxsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnPgo+IEdlc2VuZGV0OiBNaXR0d29jaCwgMjguIEF1Z3VzdCAyMDE5IDAzOjU5
OjM3Cj4gQmV0cmVmZjog562U5aSNOiBbUEFUQ0ggUkZDIHYyXSB1Ymk6IHViaV93bF9nZXRfcGVi
OiBJbmNyZWFzZSB0aGUgbnVtYmVyIG9mIGF0dGVtcHRzIHdoaWxlIGdldHRpbmcgUEVCCgo+IFRo
aXMgcGF0Y2ggbWlzc2VkIHRoZSBmaXhlcyBwdWxsIHJlcXVlc3QoNS4zLXJjNiksIHdpbGwgaXQg
YmUgaW4gdjUuMy1yYzc/CgpUaGlzIHdhcyBvbiBwdXJwb3NlLiBJdCB3aWxsIGJlIHBhcnQgb2Yg
dGhlIG5leHQgbWVyZ2Ugd2luZG93LgoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vz
c2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1tdGQvCg==
