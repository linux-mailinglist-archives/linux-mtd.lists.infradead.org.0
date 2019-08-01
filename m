Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B8B7D862
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 11:21:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9f3nLy9OEg6YI26FalfA5DajRqoCPl51lQsRZTosAOw=; b=nU+OvnaWhlb68w
	6DcOlrdznH8mKf1yoyewHdBi51K7eOynTdUabACCno7OWyTRxTSXoJhFETah67bvK9zpGmsMRSUIB
	QwO3hzEo3J/FnhbrlmTqd5RyG8iFKmIE/d22WfMaDJWLBEvT2m2gmNYCpbjX96JYtM89CO7AE0SyS
	yWlNVTx2je7CYedcHlQ/uBajvbbxzBDdVzSSub/uzwIAKW8fI/IHwwWs8nsucwTfuxQ+0FYTC0wIq
	6Ku+8SPJUBhoFFtIIp4oYx7E7WaM1SLGXMomt5DF6qYcD6cFWBk9x9uXARZWX7SP1MgUvbwAEgNKy
	rww5pP/cWaV3jBTb1zSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht7Gw-0006r9-NE; Thu, 01 Aug 2019 09:21:18 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht7Gp-0006pu-L2
 for linux-mtd@lists.infradead.org; Thu, 01 Aug 2019 09:21:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 8F9B9608311C;
 Thu,  1 Aug 2019 11:21:01 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id YRXpaPGSw17I; Thu,  1 Aug 2019 11:20:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 23F7760632E8;
 Thu,  1 Aug 2019 11:20:55 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id AmoBxAj1X7tG; Thu,  1 Aug 2019 11:20:55 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id F27E9608311C;
 Thu,  1 Aug 2019 11:20:54 +0200 (CEST)
Date: Thu, 1 Aug 2019 11:20:54 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: chengzhihao1 <chengzhihao1@huawei.com>
Message-ID: <1515821930.55881.1564651254907.JavaMail.zimbra@nod.at>
In-Reply-To: <0B80F9D4116B2F4484E7279D5A66984F7A8A13@dggemi524-mbx.china.huawei.com>
References: <1564651065-4585-1-git-send-email-chengzhihao1@huawei.com>
 <0B80F9D4116B2F4484E7279D5A66984F7A8A13@dggemi524-mbx.china.huawei.com>
Subject: =?utf-8?Q?Re:_=E7=AD=94=E5=A4=8D:_[PATCH_RFC]_ubi:_ub?=
 =?utf-8?Q?i=5Fwl=5Fget=5Fpeb:_Replace_a_lim?=
 =?utf-8?Q?ited_number_of_attempts_with_polling_while_getting_PEB?=
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: ubi_wl_get_peb: Replace a limited number of attempts with
 polling while getting PEB
Thread-Index: AQHVSEkuRooM7Daz00mNhjuG43MDw6bmAggAJrEe1mw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_022111_841038_2763C492 
X-CRM114-Status: UNSURE (   5.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, yi zhang <yi.zhang@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogImNoZW5nemhpaGFvMSIgPGNo
ZW5nemhpaGFvMUBodWF3ZWkuY29tPgo+IEFuOiAicmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0Piwg
InlpIHpoYW5nIiA8eWkuemhhbmdAaHVhd2VpLmNvbT4KPiBDQzogImxpbnV4LW10ZCIgPGxpbnV4
LW10ZEBsaXN0cy5pbmZyYWRlYWQub3JnPiwgImxpbnV4LWtlcm5lbCIgPGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmc+Cj4gR2VzZW5kZXQ6IERvbm5lcnN0YWcsIDEuIEF1Z3VzdCAyMDE5IDEx
OjEzOjIwCj4gQmV0cmVmZjog562U5aSNOiBbUEFUQ0ggUkZDXSB1Ymk6IHViaV93bF9nZXRfcGVi
OiBSZXBsYWNlIGEgbGltaXRlZCBudW1iZXIgb2YgYXR0ZW1wdHMgd2l0aCBwb2xsaW5nIHdoaWxl
IGdldHRpbmcgUEVCCgo+IEkgZG9uJ3QgcXVpdGUgdW5kZXJzdGFuZCB3aHkgYSBsaW1pdGVkIG51
bWJlciBvZiBhdHRlbXB0cyBoYXZlIGJlZW4gbWFkZSB0byBnZXQKPiBhIGZyZWUgUEVCIGluIHVi
aV93bF9nZXRfcGViIChpbiBmYXN0bWFwLXdsLmMpLiBJIHByb3Bvc2VkIHRoaXMgUEFUQ0ggd2l0
aAo+IHJlZmVyZW5jZSB0byB0aGUgaW1wbGVtZW50YXRpb24gb2YgdWJpX3dsX2dldF9wZWIgKGlu
IHdsLmMpLiBBcyBmYXIgYXMgSSBrbm93LAo+IGdldHRpbmcgUEVCIGJ5IHBvbGxpbmcgcHJvYmFi
bHkgd29uJ3QgZmFsbCBpbnRvIHNvZnQtbG9ja3VwLgo+IHViaV91cGRhdGVfZmFzdG1hcCBtYXkg
YWRkIG5ldyB0YXNrcyAoaW5jbHVkaW5nIGVyYXNlIHRhc2sgb3Igd2wgdGFza2ssIHdsIHRhc2tz
Cj4gZ2VuZXJhbGx5IGRvIG5vdCBnZW5lcmF0ZSBhZGRpdGlvbmFsIGZyZWUgUEVCcykgdG8gdWJp
LT53b3JrcywgYW5kCj4gcHJvZHVjZV9mcmVlX3BlYiB3aWxsIGV2ZW50dWFsbHkgY29tcGxldGUg
YWxsIHRhc2tzIGluIHViaS0+d29ya3Mgb3Igb2J0YWluIGFuCj4gZnJlZSBQRUIgdGhhdCBjYW4g
YmUgZmlsbGVkIGludG8gcG9vbC4KCllvdSBzZW5kIHRoaXMgcGF0Y2ggdGhyZWUgdGltZXMsIEkg
Z3Vlc3MgeW91ciBtYWlsIHNldHVwIGhhcyBpc3N1ZXM/IDotKQogClRoaXMgaXMgb25lIG9mIHRo
ZSBkYXJrZXN0IGNvcm5lcnMgb2YgRmFzdG1hcCB3aGVyZSB0aGluZ3MgZ2V0IG1lc3N5LgpUaGUg
bnVtYmVyIG9mIHJldHJ5IGF0dGVtcHRzIHdhcyBsaW1pdGVkIHRvIGF2b2lkIGEgbGl2ZSBsb2Nr
LgoKSSBhZ3JlZSB0aGF0IGFsbG93aW5nIG9ubHkgb25lIHJldHJ5IGlzIGEgbGl0dGxlIHRvIGZl
dy4KV2l0aCBuYW5kc2ltLCBhIHNtYWxsIG5hbmQgYW5kIGEgZmFzdCBQQyB5b3UgY2FuIGhpdCB0
aGF0LgoKRG8geW91IGhhdmUgbnVtYmVycyBob3cgbWFueSBhdHRlbXB0cyB3ZXJlIG5lZWRlZCB0
byBnZXQgYSBmcmVlIGJsb2NrPwoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lv
biBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1tdGQvCg==
