Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB891DBA16
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 18:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eqF5sVtIOiQma46049yhuSXzRLsJlYDhq4S7H53zo0=; b=H6KGM/G4vtB4fO
	qQ0Mj1lwatQxFoIIroVeHrOhuIKPXD2pVBCsZzqhGgAlt5a6349U+8MJ5eRR5wAAe39H5woSfmvfi
	qpzmwrE8VmEOyBTzh/xAU5iU1HbvPt4x9DXyRM143Pj38uEnRisWh8smLeJe4c7Jn8LW7GmdOZApX
	7snS/nsFcdqpr+hB/fu2qgCpI7OBuxkyotFtfNvZ+5Nc6H8Vij2VdNUrk7nnGDqHuIeI77aOJ9TzJ
	SMkd+vxQ1Do1DAi1L8PaVqY1G53ZQco/XEb9WzCc+EPO+9X00SJW4q+F0vq460ZNKxZNY4JLg9YpG
	8NDic8jIiNSlboL8ogtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbRso-0007L2-D6; Wed, 20 May 2020 16:47:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbRlf-0005tM-OY
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 16:40:36 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AE8672A2CE1;
 Wed, 20 May 2020 17:40:29 +0100 (BST)
Date: Wed, 20 May 2020 18:40:26 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Rickard X Andersson <Rickard.Andersson@axis.com>
Subject: Re: [PATCH v2 1/2] mtd: rawnand: Add a helper for testing data
 interface
Message-ID: <20200520184026.6629eaa8@collabora.com>
In-Reply-To: <1589986371551.27178@axis.com>
References: <20200520133854.25241-1-rickaran@axis.com>
 <20200520155529.3d959e96@xps13> <1589986371551.27178@axis.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_094032_031039_F0653995 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gV2VkLCAyMCBNYXkgMjAyMCAxNDo1Mjo1MiArMDAwMApSaWNrYXJkIFggQW5kZXJzc29uIDxS
aWNrYXJkLkFuZGVyc3NvbkBheGlzLmNvbT4gd3JvdGU6Cgo+IEhpIE1pcXVlbCwKPiAKPiBDb21t
ZW50cyBvbiB0d28gb2YgeW91ciBjb21tZW50cy4gKEkgYW0gZmluZSB3aXRoIGFsbCB0aGUgb3Ro
ZXIgY29tbWVudHMuKQo+IAo+ID4gPiArIMKgIMKgIC8qCj4gPiA+ICsgwqAgwqAgwqAqIFBhc3Mg
TkFORF9EQVRBX0lGQUNFX0NIRUNLX09OTFkgdG8gb25seSBjaGVjayBpZiB0aGUKPiA+ID4gKyDC
oCDCoCDCoCogY29udHJvbGxlciBzdXBwb3J0cyB0aGUgcmVxdWVzdGVkIHRpbWluZ3MuCj4gPiA+
ICsgwqAgwqAgwqAqLwo+ID4gPiArIMKgIMKgIHJldCA9IGNoaXAtPmNvbnRyb2xsZXItPm9wcy0+
c2V0dXBfZGF0YV9pbnRlcmZhY2UoY2hpcCwKPiA+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoE5BTkRfREFUQV9J
RkFDRV9DSEVDS19PTkxZLAo+ID4gPiArIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJmNoaXAtPmRhdGFfaW50ZXJmYWNl
KTsgIAo+ID4KPiA+IENvdWxkIHlvdSBhbGlnbiB0aGVzZSBsaW5lcyB0byB0aGUgb3BlbmVkIHBh
cmVudGhlc2lzPyAgCj4gCj4gVGhlbiB0aGUgbGluZXMgd2lsbCBoYXZlIDgwKyBjaGFyYWN0ZXJz
LgoKSnVzdCBhZGQgYSBsb2NhbCBvcHMgdmFyLgoKCWNvbnN0IHN0cnVjdCBuYW5kX2NvbnRyb2xs
ZXJfb3BzICpvcHMgPSBjaGlwLT5jb250cm9sbGVyLT5vcHM7CgoJcmV0ID0gb3BzLT5zZXR1cF9k
YXRhX2ludGVyZmFjZShjaGlwLMKgTkFORF9EQVRBX0lGQUNFX0NIRUNLX09OTFksCgkJCQkJwqAm
Y2hpcC0+ZGF0YV9pbnRlcmZhY2UpOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
