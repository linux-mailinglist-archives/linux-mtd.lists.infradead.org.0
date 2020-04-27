Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D79B1BABA4
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 19:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzphxivRqfcyj4yOKVM6WSfCMQQyJAoA9FOGbLyNdtI=; b=ocXvdSdNlR/gWx
	fBFo5ovIRrlsrTuEOXVVv+JaPmK+n1++VUdCOIctdxAQRqryz2IZLy9zLj3CNzsUxYQL7CZpQIKYF
	pro/Z62UKO51EdNn5OqMIGF/5PhvoFww2zCe1p8/FtUqKzgJYhZy/smSQcPQzK7DqhN8zeBt4ls26
	Lz7nKsQj1GS6PVNgrWDN9TZuVGA2qFkV8wtaa6Vkiz5DKEKupsPQuZgP6cbZcPvlpdDfSKl/OCemt
	S/MBvS+sRw/1iCvTflHrPtQptDPnVC+uDOKaDCfS6y2AgAfo85RZmxXphs+tGq12OYmRc2hsh0Dc1
	XAplISYpeew5nKHr2v1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7s8-0005QK-OU; Mon, 27 Apr 2020 17:48:48 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7rz-0005Pj-Cx
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 17:48:40 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id CC82620005;
 Mon, 27 Apr 2020 17:48:36 +0000 (UTC)
Date: Mon, 27 Apr 2020 19:48:35 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Christophe Kerello <christophe.kerello@st.com>
Subject: Re: [PATCH v2 05/12] mtd: rawnand: stm32_fmc2: remove useless
 inline comments
Message-ID: <20200427194835.4d0e1d66@xps13>
In-Reply-To: <1586966256-29548-6-git-send-email-christophe.kerello@st.com>
References: <1586966256-29548-1-git-send-email-christophe.kerello@st.com>
 <1586966256-29548-6-git-send-email-christophe.kerello@st.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_104839_566565_916ECA89 
X-CRM114-Status: UNSURE (   5.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, marex@denx.de,
 vigneshr@ti.com, tony@atomide.com, richard@nod.at,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, lee.jones@linaro.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQ2hyaXN0b3BoZSwKCkNocmlzdG9waGUgS2VyZWxsbyA8Y2hyaXN0b3BoZS5rZXJlbGxvQHN0
LmNvbT4gd3JvdGUgb24gV2VkLCAxNSBBcHIKMjAyMCAxNzo1NzoyOSArMDIwMDoKCj4gUmVtb3Zl
IGlubGluZSBjb21tZW50cyB0aGF0IGFyZSB1c2VsZXNzIHNpbmNlIGZ1bmN0aW9uIGxhYmVsIGFy
ZQo+IHNlbGYgZXhwbGFuYXRvcnkuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoZSBLZXJl
bGxvIDxjaHJpc3RvcGhlLmtlcmVsbG9Ac3QuY29tPgo+IC0tLQoKUmV2aWV3ZWQtYnk6IE1pcXVl
bCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+CgoKVGhhbmtzLApNaXF1w6hsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
