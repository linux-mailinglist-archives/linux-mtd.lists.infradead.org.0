Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F05BEF8724
	for <lists+linux-mtd@lfdr.de>; Tue, 12 Nov 2019 04:45:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwA48yCa5fLsTjFUXYxdB1atAS6Qf2l5PXE9Q5v8XXg=; b=JLNM9aRyet8jd3
	JryM2LcEQHXQog4sjeOvnVcD/xPSe4vUKcHyIc3Yu9NMKPvfjsh5N6hT3OcIh+jyQB5c8jjRCB8Xq
	YUGDo7ppauaYwCIT0g5xjZ6204IbuNRVuOK6iq+LYkSRZf07XI/BdPpHNHOlTSjtcWpnRvXSICMbw
	1uYq+ERwJ4DkYVELxIg7FrznbWztER/IGryVM8CWZO9NJm677owyE70j8dtl0qDP+UAW7Rw5JqZ0f
	xo/bapXpcdRXKcZBxAULQiBnH8e3/m1ICFLqIMlZFgJW5TH0mSpKxD6XdP+eMK+psMs1I++CSx8VZ
	NxqjmnakfK4P1z3X6rfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUN7m-00089R-Qh; Tue, 12 Nov 2019 03:45:50 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUN7g-00088f-C5
 for linux-mtd@lists.infradead.org; Tue, 12 Nov 2019 03:45:45 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 473DBF7FAFE1AAE20385;
 Tue, 12 Nov 2019 11:45:31 +0800 (CST)
Received: from [127.0.0.1] (10.177.224.82) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Tue, 12 Nov 2019
 11:45:21 +0800
Subject: Re: [PATCH] ubifs: ubifs_tnc_start_commit: Fix OOB in layout_in_gaps
To: Richard Weinberger <richard.weinberger@gmail.com>
References: <1563602720-113903-1-git-send-email-chengzhihao1@huawei.com>
 <CAFLxGvxEAGtQDFm4G3orY+M9yuthDA4j0+u=HbE9DKuo7H8WCg@mail.gmail.com>
 <0B80F9D4116B2F4484E7279D5A66984F7A7472@dggemi524-mbx.china.huawei.com>
 <CAFLxGvz__aw+BnfmGS3XXGqT6n6q-9miLPoVcL9KuvaZ2QbVUQ@mail.gmail.com>
 <0B80F9D4116B2F4484E7279D5A66984F7C0325@dggemi524-mbx.china.huawei.com>
 <CAFLxGvwpYHKi_nf0-uVWWpzG5Yv-hXgOD=9zHmmHHn+Fv+PJDA@mail.gmail.com>
From: Zhihao Cheng <chengzhihao1@huawei.com>
Message-ID: <1c455936-b39d-5159-d737-0a6d9a729fe9@huawei.com>
Date: Tue, 12 Nov 2019 11:45:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAFLxGvwpYHKi_nf0-uVWWpzG5Yv-hXgOD=9zHmmHHn+Fv+PJDA@mail.gmail.com>
X-Originating-IP: [10.177.224.82]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_194544_576760_7BB859B2 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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

cGluZy4KCuWcqCAyMDE5LzkvMTYgNjowMCwgUmljaGFyZCBXZWluYmVyZ2VyIOWGmemBkzoKPiBP
biBGcmksIEF1ZyAxNiwgMjAxOSBhdCAxMDowMSBBTSBjaGVuZ3poaWhhbyA8Y2hlbmd6aGloYW8x
QGh1YXdlaS5jb20+IHdyb3RlOgo+Pj4gIHViaWZzX2Fzc2VydChjLCBwIDwgYy0+Z2FwX2xlYnMg
KyBjLT5sc3QuaWR4X2xlYnMpOwo+PiBJJ3ZlIGRvbmUgNTAgcHJvYmxlbSByZXByb2R1Y2VzIG9u
IGRpZmZlcmVudCBmbGFzaCBkZXZpY2VzIGFuZCBtYWRlIHN1cmUgdGhhdCB0aGUgYXNzZXJ0aW9u
IHdhcyBub3QgdHJpZ2dlcmVkLiBTZWUgcmVjb3JkLnR4dCBmb3IgZGV0YWlscy4KPiBUaGFua3Mg
Zm9yIGxldHRpbmcgbWUga25vdy4gOikKPiBJIG5lZWQgdG8gZ2l2ZSB0aGlzIGFub3RoZXIgdGhv
dWdodCwgdGhlbiB3ZSBjYW4gYXBwbHkgaXQgZm9yIC1yYzIuCj4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Np
b24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbXRkLwo=
