Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303871CE5BD
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 22:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8PdsgkbdGKITcjNtboMWNXR650SKQLihbDqj8YwOic=; b=jWbJlapLBhegSL
	svXjvIrzvh12lJWQTMCsgnKZOOjhA13CbwvjePyLdjUfVS+65YFTuAABQjc1Y1dw5qJTmVEGbgt90
	RcgOslLB/ek1tcP1C6veGyVI9xE/5/8sMJoBgfH6cOFMrh28i6+B7Fg7NGmIRINfdFEZuHXkg6TDQ
	Sa1qOBhS31peMtkOUvDJPmV/U4LRcZ5c8lVfoA3JvxZV8MPf/TJCVtWuE64l+q7peercYP3DXeOBq
	+aAgB/yThBJ2SJGisSB0W+HhQ26Xu5pQZWo6cvER0dNwvej1sD/pOQUJtt4hdqnPD96GQGQnQeJR/
	5Wm8UC5aej+RdctG1DSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFCj-0007ST-FG; Mon, 11 May 2020 20:39:13 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFCc-0007Rt-DN
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 20:39:07 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id B7F22240006;
 Mon, 11 May 2020 20:39:01 +0000 (UTC)
Date: Mon, 11 May 2020 22:39:00 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Christophe Kerello <christophe.kerello@st.com>
Subject: Re: [PATCH v4 04/10] mtd: rawnand: stm32_fmc2: cleanup
Message-ID: <20200511223900.030fe5f4@xps13>
In-Reply-To: <1588756279-17289-5-git-send-email-christophe.kerello@st.com>
References: <1588756279-17289-1-git-send-email-christophe.kerello@st.com>
 <1588756279-17289-5-git-send-email-christophe.kerello@st.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_133906_584759_1EA86EE9 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, marex@denx.de,
 vigneshr@ti.com, gregkh@linuxfoundation.org, richard@nod.at,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, boris.brezillon@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

CkNocmlzdG9waGUgS2VyZWxsbyA8Y2hyaXN0b3BoZS5rZXJlbGxvQHN0LmNvbT4gd3JvdGUgb24g
V2VkLCA2IE1heSAyMDIwCjExOjExOjEzICswMjAwOgoKPiBUaGlzIHBhdGNoIHJlbmFtZXMgZnVu
Y3Rpb25zIGFuZCBsb2NhbCB2YXJpYWJsZXMuCj4gVGhpcyBjbGVhbnVwIGlzIGRvbmUgdG8gZ2V0
IGFsbCBmdW5jdGlvbnMgc3RhcnRpbmcgYnkgc3RtMzJfZm1jMl9uZmMKPiBpbiB0aGUgRk1DMiBy
YXcgTkFORCBkcml2ZXIgd2hlbiBhbGwgZnVuY3Rpb25zIHdpbGwgc3RhcnQgYnkKPiBzdG0zMl9m
bWMyX2ViaSBpbiB0aGUgRk1DMiBFQkkgZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlz
dG9waGUgS2VyZWxsbyA8Y2hyaXN0b3BoZS5rZXJlbGxvQHN0LmNvbT4KPiBSZXZpZXdlZC1ieTog
TWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCkFwcGxpZWQgdG8gbmFu
ZC9uZXh0IGFzIHdlbGwgYnV0IGZvciBhbiB1bmtub3duIHJlYXNvbiBJIGhhZCB0byBkbyBpdApi
eSBoYW5kIGJlY2F1c2UgdGhlIHBhdGNoIHdvdWxkIG5vdCBhcHBseS4KClRoYW5rcywKTWlxdcOo
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
