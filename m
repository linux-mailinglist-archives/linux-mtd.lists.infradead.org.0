Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E014A13FC5F
	for <lists+linux-mtd@lfdr.de>; Thu, 16 Jan 2020 23:45:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aU81YtzRh3yibWqPA9AKguZL3AVXiYUzaFz48ZgQHoE=; b=QfkKWdD57nnPk0
	OUVyNjeiSynPtC0Gfx7T1Bam3nXFHJvvSGKAGaAM1UuwBWmkd44zYRIDSdl4TGP3tN+WqlPMJ/RYY
	emiRmbbnMFJ5qfszolf8Hlisg8NrAq5Q9dwRwHONZ0hZLm7fjfTnb/cgtdbnL9ykAuIli7oL+7hOU
	9AuL1ZdWhBm8MbjJ/AAFYUmh12l22xXLUYQnw5Y4DistCTeip73XxIBVSMcfmb/pUa9yYL+uOXPA9
	1W9ohhabH2jdxoLgOlmxlUw85NX96djamwOJ4VYgLAJtdjUOh+KvSJiG0pNDwlAz0RkUwNo/FO+zU
	m2yPg8MZkwkyzvcrMtdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isDtR-00087E-9U; Thu, 16 Jan 2020 22:45:37 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isDtE-00086L-Uj
 for linux-mtd@lists.infradead.org; Thu, 16 Jan 2020 22:45:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id t2so20845180wrr.1
 for <linux-mtd@lists.infradead.org>; Thu, 16 Jan 2020 14:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZeEx6vriQEqUZqvv01zk5S/tyK4ds56A87BGFV2fdo0=;
 b=JO/zYu9/0B1QqfWk+Q90BO8T36nWjCEP/YqBt2+1t6iCF3P6VwHPIiIMeynH+Bhv55
 kPWdlzTgaAgFMQRfpCr6D5dzTeesa8rygYDAeaMvPfIrEXwCEn+8vxI25g54ecrlZJBN
 PiJc01/a42az6zmQV2n/NAOGJ/yiScTNSIdiBHjBjXzVAHki5SrJNlUya2Z72x9fRpzw
 fBxmCvMLlyfrZK7D31ZrdKo7kiUM69JenaK1BgzhgHSzeoUEDWKh1dc5kaVavpMpLcAx
 fdRwfBbLV2jHZSvjFyInwFPUh4tzghTMEgRwY1MvfN+Jn0ksENiXujDRc2JwgQImVzEh
 ghuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZeEx6vriQEqUZqvv01zk5S/tyK4ds56A87BGFV2fdo0=;
 b=PAZLRokfqsG9543BP7QncDbLGecklJNH1ycXblZPZX+19EqcGifprCrMk1obPkpPsz
 EKF6DxQBJ5Aec/ujJO/IrJFo1AkPFtsR55+zjQlp1R5XWu1UtcJcFo0KysWy9I/8aPLJ
 AoFb3xiwZk97rzNrV06BrU6mpGgItDeo+bCPG+lC5JqZUPWulKzJ7cDxGLtph4n5EeTL
 4r/r9ExL+qWpEW6aMoZYCcVXm5cSK+GY1nOmG798MyDev8V/4asLOFcWB8EjRAfrp8wm
 K0z6olO7oOssstNuUfraLpmRukFEVmM/bZU0n9jDAGx0XUzgc3ZJVZ8cOh+EOZRRfXfW
 MV2Q==
X-Gm-Message-State: APjAAAUm5ZXOZjmSPsivW1d6typL6Q83w+2XGR8d/XxfVp2jKvh8TWb2
 N5Tqd8FFKTp1EX7rCuxi/tBFQNzofTEuXKqm2p7Vnw==
X-Google-Smtp-Source: APXvYqzX3JZISkEyu4h9LVKxefhdR3EDfZD0YaZJpT7SsgFJ2KKaPaKUHxWUXIoKZZ8s08rQPeXGFIMy32GOGFLx9Dk=
X-Received: by 2002:adf:e5ce:: with SMTP id a14mr5528976wrn.214.1579214721659; 
 Thu, 16 Jan 2020 14:45:21 -0800 (PST)
MIME-Version: 1.0
References: <1578736236-141308-1-git-send-email-chengzhihao1@huawei.com>
In-Reply-To: <1578736236-141308-1-git-send-email-chengzhihao1@huawei.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 16 Jan 2020 23:45:10 +0100
Message-ID: <CAFLxGvzOeL_0Lq30rvbaSuxsFZSzYSvKw2V=C1gvbad9VPjiEQ@mail.gmail.com>
Subject: Re: [PATCH v2] ubifs: Fix deadlock in concurrent bulk-read and
 writepage
To: Zhihao Cheng <chengzhihao1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_144524_991488_274BF59C 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-mtd@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 "zhangyi \(F\)" <yi.zhang@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gU2F0LCBKYW4gMTEsIDIwMjAgYXQgMTA6NDMgQU0gWmhpaGFvIENoZW5nIDxjaGVuZ3poaWhh
bzFAaHVhd2VpLmNvbT4gd3JvdGU6Cj4KPiBJbiB1YmlmcywgY29uY3VycmVudCBleGVjdXRpb24g
b2Ygd3JpdGVwYWdlIGFuZCBidWxrIHJlYWQgb24gdGhlIHNhbWUgZmlsZQo+IG1heSBjYXVzZSBB
QkJBIGRlYWRsb2NrLCBmb3IgZXhhbXBsZSAoUmVwcm9kdWNlIG1ldGhvZCBzZWUgTGluayk6Cj4K
PiBQcm9jZXNzIEEoQnVsay1yZWFkIHN0YXJ0cyBmcm9tIHBhZ2U0KSAgICAgICAgIFByb2Nlc3Mg
Qih3cml0ZSBwYWdlNCBiYWNrKQo+ICAgdmZzX3JlYWQgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB3Yl93b3JrZm4gb3IgZnN5bmMKPiAgIC4uLiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgLi4uCj4gICBnZW5lcmljX2ZpbGVfYnVmZmVyZWRf
cmVhZCAgICAgICAgICAgICAgICAgICAgIHdyaXRlX2NhY2hlX3BhZ2VzCj4gICAgIHViaWZzX3Jl
YWRwYWdlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTE9DSyhwYWdlNCkKPgo+ICAg
ICAgIHViaWZzX2J1bGtfcmVhZCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHViaWZzX3dy
aXRlcGFnZQo+ICAgICAgICAgTE9DSyh1aS0+dWlfbXV0ZXgpICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdWJpZnNfd3JpdGVfaW5vZGUKPgo+ICAgICAgICAgICB1Ymlmc19kb19idWxrX3JlYWQg
ICAgICAgICAgICAgICAgICAgICAgICAgICBMT0NLKHVpLT51aV9tdXRleCkKPiAgICAgICAgICAg
ICBmaW5kX29yX2NyZWF0ZV9wYWdlKGFsbG9jIHBhZ2U0KSAgICAgICAgICAgICAgICAgIOKGkQo+
ICAgICAgICAgICAgICAgTE9DSyhwYWdlNCkgICAgICAgICAgICAgICAgICAgPC0tICAgICBBQkJB
IGRlYWRsb2NrIG9jY3VycyEKPgo+IEluIG9yZGVyIHRvIGVuc3VyZSB0aGUgc2VyaWFsaXphdGlv
biBleGVjdXRpb24gb2YgYnVsayByZWFkLCB3ZSBjYW4ndAo+IHJlbW92ZSB0aGUgYmlnIGxvY2sg
J3VpLT51aV9tdXRleCcgaW4gdWJpZnNfYnVsa19yZWFkKCkuIEluc3RlYWQsIHdlCj4gYWxsb3cg
dWJpZnNfZG9fYnVsa19yZWFkKCkgdG8gbG9jayBwYWdlIGZhaWxlZCBieSByZXBsYWNpbmcKPiBm
aW5kX29yX2NyZWF0ZV9wYWdlKEZHUF9MT0NLKSB3aXRoCj4gcGFnZWNhY2hlX2dldF9wYWdlKEZH
UF9MT0NLIHwgRkdQX05PV0FJVCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBaaGloYW8gQ2hlbmcgPGNo
ZW5nemhpaGFvMUBodWF3ZWkuY29tPgo+IFN1Z2dlc3RlZC1ieTogemhhbmd5aSAoRikgPHlpLnpo
YW5nQGh1YXdlaS5jb20+Cj4gQ2M6IDxTdGFibGVAdmdlci5rZXJuZWwub3JnPgo+IEZpeGVzOiA0
NzkzZTdjNWUxYyAoIlVCSUZTOiBhZGQgYnVsay1yZWFkIGZhY2lsaXR5IikKPiBMaW5rOiBodHRw
czovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIwNjE1Mwo+IC0tLQo+ICBm
cy91Ymlmcy9maWxlLmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKQXBwbGllZC4gVGhhbmtzIGEgbG90IGZvciBodW50aW5nIHRoaXMg
ZG93biEKCi0tIApUaGFua3MsCi8vcmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcg
bGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10
ZC8K
