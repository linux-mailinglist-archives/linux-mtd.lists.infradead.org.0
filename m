Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C461EA541
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 15:46:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N62z13sHRSb0K9j862yMRKg8gWCtB933g67o7LiAky0=; b=Q6Btp7Ermy+8Sfjm4iDb6PaLR
	lowU3igXVtZq4SvQk/7YUtHxTL/hUsHfNnu0lMHSiNH85CBLeanKuINZpopo++cJrhZkcZnMUMkGv
	djS45+N90iDB0wrpatf8NCAa+5jQOND5/huCHgIOuPE9UnZXFLRNGXbdb8s+mLPOwOU5n+qabSio/
	JzUn7+MbHDIWZBnG3gcHt9H8hGhiJ6FoaNKRiSPnKuJHrnbs/ffbSWooG6OyfaJ6TRdzYQ9YW5VkQ
	uWUDJlYuZk2bk1CMwGI7iHa3H8uH9TroI/Q1T98THQRbnF2Yy3vwqwpPSGPYoRFVr/K40LwL9WXdy
	aq0MU2Fig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfklY-0004G3-FI; Mon, 01 Jun 2020 13:46:12 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfklR-0004ES-2M
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 13:46:06 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C65D430C51C257326BBE;
 Mon,  1 Jun 2020 21:45:52 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.18) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Mon, 1 Jun 2020
 21:45:45 +0800
Subject: Re: [PATCH 1/2] ubifs: Fix potential memory leaks while iterating
 entries
To: Markus Elfring <Markus.Elfring@web.de>, <linux-mtd@lists.infradead.org>
References: <2bec05b7-78d3-fa36-134a-efbe977933e3@web.de>
From: Zhihao Cheng <chengzhihao1@huawei.com>
Message-ID: <45e2cd69-93ec-a0b9-b2a6-d170eee44055@huawei.com>
Date: Mon, 1 Jun 2020 21:45:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <2bec05b7-78d3-fa36-134a-efbe977933e3@web.de>
X-Originating-IP: [10.166.213.18]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_064605_279989_A7FBD163 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Richard Weinberger <richard@nod.at>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yi Zhang <yi.zhang@huawei.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

5ZyoIDIwMjAvNi8xIDIwOjAwLCBNYXJrdXMgRWxmcmluZyDlhpnpgZM6Cj4+IEZpeCBzb21lIHBv
dGVudGlhbCBtZW1vcnkgbGVha3MgaW4gZXJyb3IgaGFuZGxpbmcgYnJhbmNoZXMgd2hpbGUKPj4g
aXRlcmF0aW5nIHhhdHRyIGVudHJpZXMuCj4gU3VjaCBpbmZvcm1hdGlvbiBpcyB1c2VmdWwuCj4K
Pgo+PiBGb3IgZXhhbXBsZSwgZnVuY3Rpb24gdWJpZnNfdG5jX3JlbW92ZV9pbm8oKQo+PiBmb3Jn
ZXRzIHRvIGZyZWUgcHhlbnQgaWYgaXQgZXhpc3RzLiBTaW1pbGFyIHByb2JsZW1zIGFsc28gZXhp
c3QgaW4KPj4gdWJpZnNfcHVyZ2VfeGF0dHJzKCksIHViaWZzX2FkZF9vcnBoYW4oKSBhbmQgdWJp
ZnNfam5sX3dyaXRlX2lub2RlKCkuCj4gQ2FuIGFuIG90aGVyIHdvcmRpbmcgdmFyaWFudCBiZSBh
IGJpdCBuaWNlcj8KVGhhbmtzIGZvciByZW1pbmRpbmcsIEkgd2lsbCBpbXByb3ZlIHRoaXMgZGVz
Y3JpcHRpb24uCj4KPiBJIHN1Z2dlc3QgdG8gYXZvaWQgdGhlIHNwZWNpZmljYXRpb24gb2YgZHVw
bGljYXRlIGZ1bmN0aW9uIGNhbGxzCj4gKGFsc28gZm9yIHRoZSBkZXNpcmVkIGV4Y2VwdGlvbiBo
YW5kbGluZykuCj4gV2lsbCBpdCBiZSBoZWxwZnVsIHRvIGFkZCBhIGZldyBqdW1wIHRhcmdldHM/
Cj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFs
ZHMvbGludXguZ2l0L3RyZWUvRG9jdW1lbnRhdGlvbi9wcm9jZXNzL2NvZGluZy1zdHlsZS5yc3Q/
aWQ9M2Q3N2U2YTg4MDRhYmNjMDUwNGM5MDRiZDZlNWNkZjNhNWNmODE2MiNuNDU1CkkndmUgdGhv
dWdodCBhYm91dCB1c2luZyAiZ290byBlcnJfdGFnXzIiIGluIGtpbGxfeGF0dHJzIGNvZGUgYmxv
Y2sgdG8gCnJlbGVhc2UgcHJldiB4ZW50LCBidXQgbGF0ZXIgaXQgbmVlZHMgdG8ganVtcCB0byAn
b3V0X3JlbGVhc2UgdGFn4oCYIGZvciAKcmVsZWFzaW5nIHByZXZpb3VzbHkgcmVxdWVzdGVkIG1l
bW9yeSwgd2hpY2ggY2FuIGNsdXR0ZXIgdGhlIGNvZGUuIEl0IApzZWVtcyB0aGF0IHR3byBjb25z
ZWN1dGl2ZSAnZ290byB0YWdzJyB3aWxsIG1ha2UgdGhlIGNvZGUgbGVzcyByZWFkYWJsZS4KPiBS
ZWdhcmRzLAo+IE1hcmt1cwo+Cj4gLgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlz
dApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
