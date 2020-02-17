Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C7B16144A
	for <lists+linux-mtd@lfdr.de>; Mon, 17 Feb 2020 15:13:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKQVBUzoct+XMfdmRiR39v6dga80Rw++M2td1a5YDIs=; b=qXDvuwJ8XtI5T0
	jKW5z14R1J9rQ1AQF32udwvjB7FiSDT1gHELFTle9KvBuNEOVTUOhfAiYdjzKlZMotkU0zt60Ahp/
	O7luUh9dZKZArNpCJkYu87iz78gsXMFk2TqX7sgoiUKcc2SPFOEWNctLBMzx/z5R/KhyAOav0SnS8
	trYpNFxPX8KVu+RHTd4X4COdN93vdHnmBFYRERwewr2/SwfzASmFhAVyzvpY1ctNSs85l3hMsFaol
	wQQtNcdXZn5rCU9TNP/kGn5rw/IfOiMZzjtsKF/oJX05Zb18FpFB8kB5cI0EDStc4aliGrmYThkY8
	CYpDdMb+pEqqNtfVLYQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3h94-0002Fy-9n; Mon, 17 Feb 2020 14:13:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3h8y-0002FD-Gg
 for linux-mtd@lists.infradead.org; Mon, 17 Feb 2020 14:13:05 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE8662072C;
 Mon, 17 Feb 2020 14:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581948783;
 bh=tzmWG3PhUjeDzHof24wrlf3ktGXFc/qnRB+HPP6zDzQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n8xy5FFXPKvAA+8yxLT/UrT0uiW5UfKJEF74D7pGUMoT9DoUdTUlk1zH8kjNRU03o
 imIMdUlsgP2/47AF+orn+EQoIIIATwGoh8PuzUmSqD9goD8whK2eQ83sYN7axaWAi8
 hVTqX2PjmWmf2+Ax/tr1a2pYWKxnVHHdlQ0ErLDc=
Date: Mon, 17 Feb 2020 15:13:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Zhihao Cheng <chengzhihao1@huawei.com>
Subject: Re: [PATCH 4.4] ubifs: Fix deadlock in concurrent bulk-read and
 writepage
Message-ID: <20200217141301.GA1096821@kroah.com>
References: <1581942239-112920-1-git-send-email-chengzhihao1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581942239-112920-1-git-send-email-chengzhihao1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_061304_576674_433B10F8 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sashal@kernel.org, yi.zhang@huawei.com, richard@nod.at,
 linux-kernel@vger.kernel.org, Stable@vger.kernel.org,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gTW9uLCBGZWIgMTcsIDIwMjAgYXQgMDg6MjM6NTlQTSArMDgwMCwgWmhpaGFvIENoZW5nIHdy
b3RlOgo+IFsgVXBzdHJlYW0gY29tbWl0IGY1ZGU1YjgzMzAzZTYxYjFmM2ZiMDliZDc3Y2UzYWMy
ZDdhNDc1ZjIgXQo+IAo+IEluIHViaWZzLCBjb25jdXJyZW50IGV4ZWN1dGlvbiBvZiB3cml0ZXBh
Z2UgYW5kIGJ1bGsgcmVhZCBvbiB0aGUgc2FtZSBmaWxlCj4gbWF5IGNhdXNlIEFCQkEgZGVhZGxv
Y2ssIGZvciBleGFtcGxlIChSZXByb2R1Y2UgbWV0aG9kIHNlZSBMaW5rKToKPiAKPiBQcm9jZXNz
IEEoQnVsay1yZWFkIHN0YXJ0cyBmcm9tIHBhZ2U0KSAgICAgICAgIFByb2Nlc3MgQih3cml0ZSBw
YWdlNCBiYWNrKQo+ICAgdmZzX3JlYWQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB3Yl93b3JrZm4gb3IgZnN5bmMKPiAgIC4uLiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgLi4uCj4gICBnZW5lcmljX2ZpbGVfYnVmZmVyZWRfcmVhZCAgICAg
ICAgICAgICAgICAgICAgIHdyaXRlX2NhY2hlX3BhZ2VzCj4gICAgIHViaWZzX3JlYWRwYWdlICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTE9DSyhwYWdlNCkKPiAKPiAgICAgICB1Ymlm
c19idWxrX3JlYWQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1Ymlmc193cml0ZXBhZ2UK
PiAgICAgICAgIExPQ0sodWktPnVpX211dGV4KSAgICAgICAgICAgICAgICAgICAgICAgICAgIHVi
aWZzX3dyaXRlX2lub2RlCj4gCj4gCSAgdWJpZnNfZG9fYnVsa19yZWFkICAgICAgICAgICAgICAg
ICAgICAgICAgICAgTE9DSyh1aS0+dWlfbXV0ZXgpCj4gCSAgICBmaW5kX29yX2NyZWF0ZV9wYWdl
KGFsbG9jIHBhZ2U0KSAgICAgICAgICAgICAgICAgIOKGkQo+IAkgICAgICBMT0NLKHBhZ2U0KSAg
ICAgICAgICAgICAgICAgICA8LS0gICAgIEFCQkEgZGVhZGxvY2sgb2NjdXJzIQo+IAo+IEluIG9y
ZGVyIHRvIGVuc3VyZSB0aGUgc2VyaWFsaXphdGlvbiBleGVjdXRpb24gb2YgYnVsayByZWFkLCB3
ZSBjYW4ndAo+IHJlbW92ZSB0aGUgYmlnIGxvY2sgJ3VpLT51aV9tdXRleCcgaW4gdWJpZnNfYnVs
a19yZWFkKCkuIEluc3RlYWQsIHdlCj4gYWxsb3cgdWJpZnNfZG9fYnVsa19yZWFkKCkgdG8gbG9j
ayBwYWdlIGZhaWxlZCBieSByZXBsYWNpbmcKPiBmaW5kX29yX2NyZWF0ZV9wYWdlKEZHUF9MT0NL
KSB3aXRoCj4gcGFnZWNhY2hlX2dldF9wYWdlKEZHUF9MT0NLIHwgRkdQX05PV0FJVCkuCj4gCj4g
U2lnbmVkLW9mZi1ieTogWmhpaGFvIENoZW5nIDxjaGVuZ3poaWhhbzFAaHVhd2VpLmNvbT4KPiBT
dWdnZXN0ZWQtYnk6IHpoYW5neWkgKEYpIDx5aS56aGFuZ0BodWF3ZWkuY29tPgo+IENjOiA8U3Rh
YmxlQHZnZXIua2VybmVsLm9yZz4KPiBGaXhlczogNDc5M2U3YzVlMWMgKCJVQklGUzogYWRkIGJ1
bGstcmVhZCBmYWNpbGl0eSIpCj4gTGluazogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3No
b3dfYnVnLmNnaT9pZD0yMDYxNTMKPiBTaWduZWQtb2ZmLWJ5OiBSaWNoYXJkIFdlaW5iZXJnZXIg
PHJpY2hhcmRAbm9kLmF0Pgo+IC0tLQo+ICBmcy91Ymlmcy9maWxlLmMgfCA1ICsrKy0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2ZzL3ViaWZzL2ZpbGUuYyBiL2ZzL3ViaWZzL2ZpbGUuYwo+IGluZGV4IGI4OTVhZjdk
OGQ4MC4uZTZkMGE3ZGYzNDFkIDEwMDY0NAo+IC0tLSBhL2ZzL3ViaWZzL2ZpbGUuYwo+ICsrKyBi
L2ZzL3ViaWZzL2ZpbGUuYwo+IEBAIC03ODIsOCArNzgyLDkgQEAgc3RhdGljIGludCB1Ymlmc19k
b19idWxrX3JlYWQoc3RydWN0IHViaWZzX2luZm8gKmMsIHN0cnVjdCBidV9pbmZvICpidSwKPiAg
Cj4gIAkJaWYgKHBhZ2Vfb2Zmc2V0ID4gZW5kX2luZGV4KQo+ICAJCQlicmVhazsKPiAtCQlwYWdl
ID0gZmluZF9vcl9jcmVhdGVfcGFnZShtYXBwaW5nLCBwYWdlX29mZnNldCwKPiAtCQkJCQkgICBH
RlBfTk9GUyB8IF9fR0ZQX0NPTEQpOwo+ICsJCXBhZ2UgPSBwYWdlY2FjaGVfZ2V0X3BhZ2UobWFw
cGluZywgcGFnZV9vZmZzZXQsCj4gKwkJCQkgRkdQX0xPQ0t8RkdQX0FDQ0VTU0VEfEZHUF9DUkVB
VHxGR1BfTk9XQUlULAo+ICsJCQkJIEdGUF9OT0ZTIHwgX19HRlBfQ09MRCk7Cj4gIAkJaWYgKCFw
YWdlKQo+ICAJCQlicmVhazsKPiAgCQlpZiAoIVBhZ2VVcHRvZGF0ZShwYWdlKSkKPiAtLSAKPiAy
LjcuNAo+IAoKTm93IGFwcGxpZWQsIHRoYW5rcyEKCmdyZWcgay1oCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Np
b24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbXRkLwo=
