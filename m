Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7E8FC712
	for <lists+linux-mtd@lfdr.de>; Thu, 14 Nov 2019 14:13:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7Flk7CrL5T3UY8EFuJyZEiWvGZf18ns//fqsmfwcd4=; b=Z3UeMyXtt3sxGA
	505Wf1E7v9ZliPCfSa/W/qRqIA+7yb4LrCRpGdzlqSOXVZOqOIVHWJUXnj1l8xXCx5ooYMDE7g6cM
	eR6clBA7yMTEeJawoDqawFUDdgwhQRAHMTiMtbPXl87r7oPEtEoG9g9K5WqafImZ6cE9lOUZ2g/I6
	lFTKuWjEiaRAS+E1nO7t//9jvIhw+h2MiEKVn/L26tKvW/YP7z8UylI7EqCAAWOI/AIkGgbYOMhxm
	1kC9KwHhxuuWTYJSzwheM7wbtKhKNrtU+FYKBWevuB+WJv5Uxxr+TIdWQoK28WiBk+zCJybVo90Le
	GT1qO6pLZ5LIkUV+oGoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVEwH-0002yX-Nq; Thu, 14 Nov 2019 13:13:33 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEw8-0002xd-F4
 for linux-mtd@lists.infradead.org; Thu, 14 Nov 2019 13:13:27 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 18CACFB1E458C6647982;
 Thu, 14 Nov 2019 21:13:16 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 14 Nov 2019 21:13:13 +0800
Subject: Re: [PATCH -next] ubi: remove unused variable 'err'
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <20191114072236.15104-1-yuehaibing@huawei.com>
 <20191114110053.4fbeb918@xps13>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <f9a8e5f3-cea9-a251-9627-63dfb34149c7@huawei.com>
Date: Thu, 14 Nov 2019 21:13:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20191114110053.4fbeb918@xps13>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_051326_311851_A5A1343A 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gMjAxOS8xMS8xNCAxODowMCwgTWlxdWVsIFJheW5hbCB3cm90ZToKPiBIaSBZdWUsCj4gCj4g
WXVlSGFpYmluZyA8eXVlaGFpYmluZ0BodWF3ZWkuY29tPiB3cm90ZSBvbiBUaHUsIDE0IE5vdiAy
MDE5IDE1OjIyOjM2Cj4gKzA4MDA6Cj4gCj4+IGRyaXZlcnMvbXRkL3ViaS9kZWJ1Zy5jOjUxMjo2
OiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUgJ2VycicgWy1XdW51c2VkLXZhcmlhYmxlXQo+Pgo+
PiBjb21taXQgMzQyN2RkMjEzMjU5ICgibXRkOiBubyBuZWVkIHRvIGNoZWNrIHJldHVybiB2YWx1
ZQo+PiBvZiBkZWJ1Z2ZzX2NyZWF0ZSBmdW5jdGlvbnMiKSBsZWF2ZSB0aGlzIHZhcmlhYmxlIG5v
dCB1c2VkLgo+IAo+IFRoYW5rcyBmb3IgdGhlIGZpeCBidXQgSSBhbHJlYWR5IGZpeGVkIHRoaXMg
dHJpdmlhbCBpc3N1ZSwgSSBqdXN0Cj4gZGlkIG5vdCBoYWQgdGltZSB5ZXN0ZXJkYXkgbmlnaHQg
dG8gcHVzaCBpdCwgbm93IGl0IGlzIGRvbmUuIEl0IHdpbGwKPiBiZSBwYXJ0IG9mIHRvbW9ycm93
J3MgbGludXgtbmV4dCByZWxlYXNlLgoKT2ssIHRoYW5rcyBmb3IgdGhlIGluZm8uCgo+IAo+IENo
ZWVycywKPiBNaXF1w6hsCj4gCj4gLgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxp
c3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQv
Cg==
