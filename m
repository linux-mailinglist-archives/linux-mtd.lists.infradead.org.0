Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 126A2B32EC
	for <lists+linux-mtd@lfdr.de>; Mon, 16 Sep 2019 03:23:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z72VOxSLW7Bigl5K1qLH3G3q8WdZ+a/ZoaCwmK7p8TE=; b=CUM3eTUyOqHpHt
	PDDnKZL0wQ0/MRoT+PbV2UinY3/nMZjI48Qf5yP0PQv68me8XJRKX3LuTciCTFBYU46ogG6kf7kt8
	P7DIbwnMzNdyiG5N6SKGSeKp/5V+f1CuHZxRLdAjwNpoT+Epgq68au4m3DK1aEhFQK3xypdAl0GmB
	waHN62CTWeo4ZUSnxx8Q5e88FM9HbulOkUVtVMQ88ADL3SGdXI8bIUI1sxpJ9DIJ8BYXY1DJzQk8m
	UlCrkCX5O0tLi/lmkUYD/xWeqTUKcvafHfHebFc89ErrdZRgp1XyLxYrI1Kwa4CodTkf7ekRcQXKZ
	QDSgLFwBkoQ2KaolrQWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9fjZ-0000kg-Hk; Mon, 16 Sep 2019 01:23:17 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9fjQ-0000dL-E5
 for linux-mtd@lists.infradead.org; Mon, 16 Sep 2019 01:23:09 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id DFFEE14AB25707A36B83;
 Mon, 16 Sep 2019 09:21:00 +0800 (CST)
Received: from [127.0.0.1] (10.177.224.82) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Mon, 16 Sep 2019
 09:20:53 +0800
Subject: Re: [PATCH] ubifs: ubifs_tnc_start_commit: Fix OOB in layout_in_gaps
To: Richard Weinberger <richard.weinberger@gmail.com>
References: <1563602720-113903-1-git-send-email-chengzhihao1@huawei.com>
 <CAFLxGvxEAGtQDFm4G3orY+M9yuthDA4j0+u=HbE9DKuo7H8WCg@mail.gmail.com>
 <0B80F9D4116B2F4484E7279D5A66984F7A7472@dggemi524-mbx.china.huawei.com>
 <CAFLxGvz__aw+BnfmGS3XXGqT6n6q-9miLPoVcL9KuvaZ2QbVUQ@mail.gmail.com>
 <0B80F9D4116B2F4484E7279D5A66984F7C0325@dggemi524-mbx.china.huawei.com>
 <CAFLxGvwpYHKi_nf0-uVWWpzG5Yv-hXgOD=9zHmmHHn+Fv+PJDA@mail.gmail.com>
From: Zhihao Cheng <chengzhihao1@huawei.com>
Message-ID: <173d4c4b-1846-5dd5-b477-4eb21258d4b6@huawei.com>
Date: Mon, 16 Sep 2019 09:20:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <CAFLxGvwpYHKi_nf0-uVWWpzG5Yv-hXgOD=9zHmmHHn+Fv+PJDA@mail.gmail.com>
X-Originating-IP: [10.177.224.82]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_182308_654119_84BFC7AF 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Artem Bityutskiy <dedekind1@gmail.com>, Richard Weinberger <richard@nod.at>,
 Sascha Hauer <s.hauer@pengutronix.de>, "zhangyi \(F\)" <yi.zhang@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

CgrlnKggMjAxOS85LzE2IDY6MDAsIFJpY2hhcmQgV2VpbmJlcmdlciDlhpnpgZM6Cj4gT24gRnJp
LCBBdWcgMTYsIDIwMTkgYXQgMTA6MDEgQU0gY2hlbmd6aGloYW8gPGNoZW5nemhpaGFvMUBodWF3
ZWkuY29tPiB3cm90ZToKPj4KPj4+ICB1Ymlmc19hc3NlcnQoYywgcCA8IGMtPmdhcF9sZWJzICsg
Yy0+bHN0LmlkeF9sZWJzKTsKPj4KPj4gSSd2ZSBkb25lIDUwIHByb2JsZW0gcmVwcm9kdWNlcyBv
biBkaWZmZXJlbnQgZmxhc2ggZGV2aWNlcyBhbmQgbWFkZSBzdXJlIHRoYXQgdGhlIGFzc2VydGlv
biB3YXMgbm90IHRyaWdnZXJlZC4gU2VlIHJlY29yZC50eHQgZm9yIGRldGFpbHMuCj4gCj4gVGhh
bmtzIGZvciBsZXR0aW5nIG1lIGtub3cuIDopCj4gSSBuZWVkIHRvIGdpdmUgdGhpcyBhbm90aGVy
IHRob3VnaHQsIHRoZW4gd2UgY2FuIGFwcGx5IGl0IGZvciAtcmMyLgo+IApBQ0suIDopCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
