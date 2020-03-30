Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB71198688
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Mar 2020 23:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shj3jtoin11+B7GfFlGq7wRTpuEmU+mOQRRXJYNlySs=; b=iECmseDVfNPnVt
	WNRCF8VdwpfP4m7FE2GngjLO34DoG+BUblbpatsGKy4EMbMLbNlhgzpx0pzaEWX4F3IaQyasVFhFc
	U8aEVQajS54xwadw3N5SCXkXt+Z3nd5L7oHuWGzTIo6EUhupzMWXYXUY0bxbe2u13aGNXjWNAHggE
	Oze37eJonYaPTwXvAJo7q0CJU1TC3tIjszsJQqlnbo4NEwbe8gDpWkNuybSsCt6OGPZ98dJevVwow
	9gif9KoYF6h8bXi/oEDzFWvMxr9y2gzqZADNEXHaDyp5NgHCTVNXy0KijxXAfBvABM01bzVAwIfce
	xQ2xkdh2H2Ghx1WbyQyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ1zS-0002HK-4c; Mon, 30 Mar 2020 21:30:38 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ1zJ-00028G-3f
 for linux-mtd@lists.infradead.org; Mon, 30 Mar 2020 21:30:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id D0E3C60D0872;
 Mon, 30 Mar 2020 23:30:18 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id DLFK5jK_AhlB; Mon, 30 Mar 2020 23:30:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id E572C6091853;
 Mon, 30 Mar 2020 23:30:15 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 7sb4cXn88cVf; Mon, 30 Mar 2020 23:30:15 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 634AE60D086D;
 Mon, 30 Mar 2020 23:30:15 +0200 (CEST)
Date: Mon, 30 Mar 2020 23:30:14 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <2093889665.60398.1585603814979.JavaMail.zimbra@nod.at>
In-Reply-To: <20200319224435.GA25590@embeddedor.com>
References: <20200319224435.GA25590@embeddedor.com>
Subject: Re: [PATCH][next] mtd: ubi: ubi-media.h: Replace zero-length array
 with flexible-array member
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: ubi-media.h: Replace zero-length array with flexible-array member
Thread-Index: 0me70WajGRQMgkZ2Z4V30jvr1xIZqw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_143029_298697_33D06A70 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkd1c3Rhdm8gQS4gUi4gU2ls
dmEiIDxndXN0YXZvQGVtYmVkZGVkb3IuY29tPgo+IEFuOiAicmljaGFyZCIgPHJpY2hhcmRAbm9k
LmF0PiwgIk1pcXVlbCBSYXluYWwiIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiwgIlZpZ25l
c2ggUmFnaGF2ZW5kcmEiIDx2aWduZXNockB0aS5jb20+Cj4gQ0M6ICJsaW51eC1tdGQiIDxsaW51
eC1tdGRAbGlzdHMuaW5mcmFkZWFkLm9yZz4sICJsaW51eC1rZXJuZWwiIDxsaW51eC1rZXJuZWxA
dmdlci5rZXJuZWwub3JnPiwgIkd1c3Rhdm8gQS4gUi4gU2lsdmEiCj4gPGd1c3Rhdm9AZW1iZWRk
ZWRvci5jb20+Cj4gR2VzZW5kZXQ6IERvbm5lcnN0YWcsIDE5LiBNw6RyeiAyMDIwIDIzOjQ0OjM1
Cj4gQmV0cmVmZjogW1BBVENIXVtuZXh0XSBtdGQ6IHViaTogdWJpLW1lZGlhLmg6IFJlcGxhY2Ug
emVyby1sZW5ndGggYXJyYXkgd2l0aCBmbGV4aWJsZS1hcnJheSBtZW1iZXIKCj4gVGhlIGN1cnJl
bnQgY29kZWJhc2UgbWFrZXMgdXNlIG9mIHRoZSB6ZXJvLWxlbmd0aCBhcnJheSBsYW5ndWFnZQo+
IGV4dGVuc2lvbiB0byB0aGUgQzkwIHN0YW5kYXJkLCBidXQgdGhlIHByZWZlcnJlZCBtZWNoYW5p
c20gdG8gZGVjbGFyZQo+IHZhcmlhYmxlLWxlbmd0aCB0eXBlcyBzdWNoIGFzIHRoZXNlIG9uZXMg
aXMgYSBmbGV4aWJsZSBhcnJheSBtZW1iZXJbMV1bMl0sCj4gaW50cm9kdWNlZCBpbiBDOTk6Cj4g
Cj4gc3RydWN0IGZvbyB7Cj4gICAgICAgIGludCBzdHVmZjsKPiAgICAgICAgc3RydWN0IGJvbyBh
cnJheVtdOwo+IH07Cj4gCj4gQnkgbWFraW5nIHVzZSBvZiB0aGUgbWVjaGFuaXNtIGFib3ZlLCB3
ZSB3aWxsIGdldCBhIGNvbXBpbGVyIHdhcm5pbmcKPiBpbiBjYXNlIHRoZSBmbGV4aWJsZSBhcnJh
eSBkb2VzIG5vdCBvY2N1ciBsYXN0IGluIHRoZSBzdHJ1Y3R1cmUsIHdoaWNoCj4gd2lsbCBoZWxw
IHVzIHByZXZlbnQgc29tZSBraW5kIG9mIHVuZGVmaW5lZCBiZWhhdmlvciBidWdzIGZyb20gYmVp
bmcKPiBpbmFkdmVydGVudGx5IGludHJvZHVjZWRbM10gdG8gdGhlIGNvZGViYXNlIGZyb20gbm93
IG9uLgo+IAo+IEFsc28sIG5vdGljZSB0aGF0LCBkeW5hbWljIG1lbW9yeSBhbGxvY2F0aW9ucyB3
b24ndCBiZSBhZmZlY3RlZCBieQo+IHRoaXMgY2hhbmdlOgo+IAo+ICJGbGV4aWJsZSBhcnJheSBt
ZW1iZXJzIGhhdmUgaW5jb21wbGV0ZSB0eXBlLCBhbmQgc28gdGhlIHNpemVvZiBvcGVyYXRvcgo+
IG1heSBub3QgYmUgYXBwbGllZC4gQXMgYSBxdWlyayBvZiB0aGUgb3JpZ2luYWwgaW1wbGVtZW50
YXRpb24gb2YKPiB6ZXJvLWxlbmd0aCBhcnJheXMsIHNpemVvZiBldmFsdWF0ZXMgdG8gemVyby4i
WzFdCj4gCj4gVGhpcyBpc3N1ZSB3YXMgZm91bmQgd2l0aCB0aGUgaGVscCBvZiBDb2NjaW5lbGxl
Lgo+IAo+IFsxXSBodHRwczovL2djYy5nbnUub3JnL29ubGluZWRvY3MvZ2NjL1plcm8tTGVuZ3Ro
Lmh0bWwKPiBbMl0gaHR0cHM6Ly9naXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVzLzIxCj4gWzNd
IGNvbW1pdCA3NjQ5NzczMjkzMmYgKCJjeGdiMy9sMnQ6IEZpeCB1bmRlZmluZWQgYmVoYXZpb3Vy
IikKPiAKPiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxndXN0YXZvQGVtYmVk
ZGVkb3IuY29tPgoKQXBwbGllZC4gVGhhbmtzIQoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQg
ZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1tdGQvCg==
