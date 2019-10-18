Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F315DBB74
	for <lists+linux-mtd@lfdr.de>; Fri, 18 Oct 2019 04:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gImsYdTNL81b7dMG+xvA7jW1tiyLSjrU3ZPivPDNzgY=; b=aOqnbrsZTycDNY
	BfQgGL7zT1YVsrMyvaSAJXOj79ci5TyzZk43OHEsDeJyJywUcB0I7ejGt6LvH44Tnw7onFe7PA/25
	1okZjnKi1SnDD23Lszr81qX0X33B32vQMX2xBB8hnZAANT9GPEZV7qx+XDg+xGcUbb6ZsMwvCgPtk
	HHt15Jys2TVWLV6fZZRqAA0hm0qSiOR+vzXvs7gTR+/C5E9R/CrnbMlqFc8Uji1amzMUl603xMZNW
	U+neXVeD/gHMLsOsSJQxZjXJmdhdpewukdBUxy4Rlcm5vrqnEAWHQxbyW7Md47NM6MxP9oP7OmUVP
	6Zm0iMrFmRHuQGXHWwag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLHwI-0007qw-RW; Fri, 18 Oct 2019 02:24:26 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLHwB-0007pw-6S
 for linux-mtd@lists.infradead.org; Fri, 18 Oct 2019 02:24:21 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C39BA71F6DD0724CE028;
 Fri, 18 Oct 2019 10:24:02 +0800 (CST)
Received: from [127.0.0.1] (10.177.224.82) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Fri, 18 Oct 2019
 10:23:56 +0800
Subject: Re: [PATCH] ubifs: ubifs_tnc_start_commit: Fix OOB in layout_in_gaps
To: Richard Weinberger <richard.weinberger@gmail.com>
References: <1563602720-113903-1-git-send-email-chengzhihao1@huawei.com>
 <CAFLxGvxEAGtQDFm4G3orY+M9yuthDA4j0+u=HbE9DKuo7H8WCg@mail.gmail.com>
 <0B80F9D4116B2F4484E7279D5A66984F7A7472@dggemi524-mbx.china.huawei.com>
 <CAFLxGvz__aw+BnfmGS3XXGqT6n6q-9miLPoVcL9KuvaZ2QbVUQ@mail.gmail.com>
 <0B80F9D4116B2F4484E7279D5A66984F7C0325@dggemi524-mbx.china.huawei.com>
 <CAFLxGvwpYHKi_nf0-uVWWpzG5Yv-hXgOD=9zHmmHHn+Fv+PJDA@mail.gmail.com>
From: Zhihao Cheng <chengzhihao1@huawei.com>
Message-ID: <a451208f-52ce-0670-00b8-407c6ac425f6@huawei.com>
Date: Fri, 18 Oct 2019 10:23:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAFLxGvwpYHKi_nf0-uVWWpzG5Yv-hXgOD=9zHmmHHn+Fv+PJDA@mail.gmail.com>
X-Originating-IP: [10.177.224.82]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_192420_218729_596E292F 
X-CRM114-Status: UNSURE (   5.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Artem Bityutskiy <dedekind1@gmail.com>, Richard Weinberger <richard@nod.at>,
 Sascha Hauer <s.hauer@pengutronix.de>, "zhangyi \(F\)" <yi.zhang@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Q2FuIHRoZSBjdXJyZW50IG1vZGlmaWNhdGlvbiBtZXRob2QgYmUgY29uZmlybWVkPwoK5ZyoIDIw
MTkvOS8xNiA2OjAwLCBSaWNoYXJkIFdlaW5iZXJnZXIg5YaZ6YGTOgo+IEkgbmVlZCB0byBnaXZl
IHRoaXMgYW5vdGhlciB0aG91Z2h0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
