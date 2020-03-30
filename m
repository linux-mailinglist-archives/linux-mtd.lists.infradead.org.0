Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2E31976E8
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Mar 2020 10:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4iVSZUfHzz8QknN2moGNpMW5ZcnVUkZLxXu0OsZdRY=; b=M0a9Q6Z4vnaYdB
	3mvG7rrHjGMGBTw1tbKHTWWMbAQkDqSKmrv39jwCtkFtQea01XjjyqA8olpuwOzB6R3uunD4RQIcS
	7XNkvezih8nEQCFBI/FGSd4VmugsdzQmhkv799BXKvvj+gl0wWG7ti8gJicsRITHDuBGEoZdoaOJs
	j25OP9URUdwFqjiaLx/G3D/pzGmSUO13dDshJJ0YFBOAicUQlhDUk65YZfdqvJAdmwNqUjMC8PU7b
	2e8dn3YlpD9pZeWaNodR3jsh6YWMwSDlY0f6ZG8xHPCSeurHjLRC8gccivsvp8BHfy3LCeZucS7t4
	rv6NpsRrbDDpQfIsHsgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIq5O-0008ER-CA; Mon, 30 Mar 2020 08:47:58 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIq5F-0008DK-3e
 for linux-mtd@lists.infradead.org; Mon, 30 Mar 2020 08:47:50 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 682A6240008;
 Mon, 30 Mar 2020 08:47:42 +0000 (UTC)
Date: Mon, 30 Mar 2020 10:47:41 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaoming Ni <nixiaoming@huawei.com>
Subject: Re: [PATCH] mtd:clear cache_state to avoid writing to bad clocks
 repeatedly
Message-ID: <20200330104741.2f48378d@xps13>
In-Reply-To: <a012c55f-e7c4-fd6d-3e3f-f132474a0b06@huawei.com>
References: <1585400477-65705-1-git-send-email-nixiaoming@huawei.com>
 <20200330095341.284048c3@xps13>
 <a012c55f-e7c4-fd6d-3e3f-f132474a0b06@huawei.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_014749_286403_EB0901DB 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: wangle6@huawei.com, vigneshr@ti.com, richard@nod.at,
 zhangweimin12@huawei.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, houtao1@huawei.com, yebin10@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgWGlhb21pbmcsCgpYaWFvbWluZyBOaSA8bml4aWFvbWluZ0BodWF3ZWkuY29tPiB3cm90ZSBv
biBNb24sIDMwIE1hciAyMDIwIDE2OjQ0OjI5CiswODAwOgoKPiBPbiAyMDIwLzMvMzAgMTU6NTMs
IE1pcXVlbCBSYXluYWwgd3JvdGU6Cj4gPiBIaSBYaWFvbWluZywKPiA+IAo+ID4gWGlhb21pbmcg
TmkgPG5peGlhb21pbmdAaHVhd2VpLmNvbT4gd3JvdGUgb24gU2F0LCAyOCBNYXIgMjAyMCAyMTow
MToxNwo+ID4gKzA4MDA6Cj4gPiAgIAo+ID4+IFRoZSBmdW5jdGlvbiBjYWxsIHByb2Nlc3MgaXMg
YXMgZm9sbG93czoKPiA+PiAJbXRkX2Jsa3RyYW5zX3dvcmsoKQo+ID4+IAkgIHdoaWxlICgxKSAg
Cj4gLi4uLgo+IAo+ID4+ICsJICoKPiA+PiArCSAqIGlmIHRoaXMgY2FjaGVfb2Zmc2V0IHBvaW50
cyB0byBhIGJhZCBibG9jayAgCj4gPiAKPiA+IENhbiB5b3Ugc3RhcnQgeW91ciBzZW50ZW5jZXMg
d2l0aCBhIGNhcGl0YWwgbGV0dGVyIHBsZWFzZT8KPiA+IAo+ID4gCSAqIElmCj4gPiAgIAo+ID4+
ICsJICogZGF0YSBjYW5ub3QgYmUgd3JpdHRlbiB0byB0aGUgZGV2aWNlLgo+ID4+ICsJICogY2xl
YXIgY2FjaGVfc3RhdGUgdG8gYXZvaWQgd3JpdGluZyB0byBiYWQgY2xvY2tzIHJlcGVhdGVkbHkg
IAo+ID4gCj4gPiAJICogQ2xlYXIKPiA+IAo+ID4gQW5kIGFsc28gcGxlYXNlIGJyZWFrIHlvdXIg
bGluZXMgw6AgODAsIG5vdCA3MC4KPiA+ICAgCj4gPj4gICAJICovCj4gPj4gLQltdGRibGstPmNh
Y2hlX3N0YXRlID0gU1RBVEVfRU1QVFk7Cj4gPj4gLQlyZXR1cm4gMDsKPiA+PiArCWlmIChyZXQg
PT0gMCB8fCByZXQgPT0gLUVJTykKPiA+PiArCQltdGRibGstPmNhY2hlX3N0YXRlID0gU1RBVEVf
RU1QVFk7ICAKPiBTaG91bGQgSSBhZGQgYSB3YXJuaW5nIHByaW50IGZvciBFSU8gaGVyZQoKSSBk
b24ndCB0aGluayBzby4KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW10ZC8K
