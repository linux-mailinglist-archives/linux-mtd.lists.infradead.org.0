Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2579191C7F
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Mar 2020 23:06:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlHMO0i7zFTLUrziAELYPdzRma7V9JKIn3zoqkxgD6M=; b=timdnWA+kB8j/h
	boaC9tTqWKb8WVjpUuVwVQPcTtZyKkwGqhQHBOiQn/IIx9yk+Vn3HcgN2f5d0JecniPak6L2Dydq+
	tJah4W02JQlx2dWziFYmlcyyZTxv1IAuca7ykhJWmX+tBf1/WK38hkXrK+0p5TGryzMImBSkwAWv+
	x1CZf/rb1JV3/qRCXi/iOpUiADYj83cn1dANMQz08c5TF7gB0qSLGY0zcAgVYOucj3rbyVZ1iiqUR
	VkOG5Mr0nEkHf1i+CKfjtn2K2iazvCKyqnN88XJyGBnpY9onIuuehp+X4WKrP1S+c3h1mIlNeZ4AF
	71j5QulVc2OzDTKYLKaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGrhC-0006vn-ID; Tue, 24 Mar 2020 22:06:50 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGrgm-0006iD-Mv
 for linux-mtd@lists.infradead.org; Tue, 24 Mar 2020 22:06:26 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 0B774FF802;
 Tue, 24 Mar 2020 22:06:21 +0000 (UTC)
Date: Tue, 24 Mar 2020 23:06:20 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaoming Ni <nixiaoming@huawei.com>
Subject: Re: [PATCH] mtd:Fix issue where write_cached_data() fails but
 write() still returns success
Message-ID: <20200324230620.174db1a7@xps13>
In-Reply-To: <1584674111-101462-1-git-send-email-nixiaoming@huawei.com>
References: <1584674111-101462-1-git-send-email-nixiaoming@huawei.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_150624_928630_D2361FB0 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: zhangweimin12@huawei.com, vigneshr@ti.com, richard@nod.at,
 wangle6@huawei.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgWGlhb21pbmcsCgpYaWFvbWluZyBOaSA8bml4aWFvbWluZ0BodWF3ZWkuY29tPiB3cm90ZSBv
biBGcmksIDIwIE1hciAyMDIwIDExOjE1OjExCiswODAwOgoKPiBtdGRibG9ja19mbHVzaCgpCj4g
CS0tPndyaXRlX2NhY2hlZF9kYXRhKCkKPiAJCS0tLT5lcmFzZV93cml0ZSgpICAKPiAJCSAgICAg
bXRkYmxvY2s6IGVyYXNlIG9mIHJlZ2lvbiBbMHg0MDAwMCwgMHgyMDAwMF0gb24gInh4eCIgZmFp
bGVkCj4gCj4gQmVjYXVzZSBtdGRibG9ja19mbHVzaCgpIGFsd2F5cyByZXR1cm5zIDAsCj4gZXZl
biBpZiB3cml0ZV9jYWNoZWRfZGF0YSgpIGZhaWxzIGFuZCBkYXRhIGlzIG5vdCB3cml0dGVuIHRv
IHRoZSBkZXZpY2UsCj4gc3lzY2FsbF93cml0ZSgpIHN0aWxsIHJldHVybnMgc3VjY2VzcwoKSSBy
ZXdvcmRlZCBhIGJpdCB0aGUgY29tbWl0IGxvZyBhbmQgYWxzbyBhZGRlZCBhICcgJyBhZnRlciAn
bXRkOicgaW4KdGhlIHRpdGxlIHdoZW4gYXBwbHlpbmcuCgpUaGFua3MsCk1pcXXDqGwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBN
VEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
