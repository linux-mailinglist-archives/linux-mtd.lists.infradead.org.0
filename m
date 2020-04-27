Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BD51BA6BC
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 16:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWuODLpqf4JyLfRH8/5AtH5c7hVc636R6SBaneosqPE=; b=ZfBzr6hHbk8Wfo
	+LBQiNKXj3vAXg9Ru6KMHqjtPW2SL/pgO8EelWuhGVZRy61eHsXUhFqoMmk6ydsvzMe4Lb7zGSXdr
	+kp6gpX3AeWimkvRsUSUQBLUGs4v5M0Bu37r9w1PLZwQsgn8aG2Jxx0FOWAXlPGY16iRnEFDTm1jU
	3qT+9iLZ7ovxuf6KLquK6D/iizH0qHEkJBrdCE7msjVS2EGKzwtbWaaUXiqNtLL92LzStWRz2FfHA
	xC8jhEN4O9mSx7CXm76Nf0HELI1MV+4Qqu3fzLIClSoHkqofiHoZc8JwDoZboqEeOmJaT0IpSUMHz
	djAdoaJQfDUbx4IM7Mzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT4zD-00019K-Jr; Mon, 27 Apr 2020 14:43:55 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT4z1-00018N-Si
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 14:43:45 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 5F011240007;
 Mon, 27 Apr 2020 14:43:38 +0000 (UTC)
Date: Mon, 27 Apr 2020 16:43:36 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kamal Dasu <kdasu.kdev@gmail.com>
Subject: Re: [PATCH -next] mtd: rawnand: brcmnand: Remove unused including
 <linux/version.h>
Message-ID: <20200427164336.5df4650a@xps13>
In-Reply-To: <CAC=U0a2VfQBmHdS4eL0Fbm==aVCS0FWoBnZi7tRHzNKmm=SDVQ@mail.gmail.com>
References: <20200417101129.35556-1-yuehaibing@huawei.com>
 <CAC=U0a2VfQBmHdS4eL0Fbm==aVCS0FWoBnZi7tRHzNKmm=SDVQ@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_074344_061146_7DB3D303 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "R, Vignesh" <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 YueHaibing <yuehaibing@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Brian Norris <computersforpeace@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgS2FtYWwsCgpLYW1hbCBEYXN1IDxrZGFzdS5rZGV2QGdtYWlsLmNvbT4gd3JvdGUgb24gRnJp
LCAxNyBBcHIgMjAyMCAxNDo0MDo1MQotMDQwMDoKCj4gT24gRnJpLCBBcHIgMTcsIDIwMjAgYXQg
NjoxMiBBTSBZdWVIYWliaW5nIDx5dWVoYWliaW5nQGh1YXdlaS5jb20+IHdyb3RlOgo+ID4KPiA+
IFJlbW92ZSBpbmNsdWRpbmcgPGxpbnV4L3ZlcnNpb24uaD4gdGhhdCBkb24ndCBuZWVkIGl0Lgo+
ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVhd2VpLmNvbT4g
IAo+IAo+IFNpZ25lZC1vZmYtYnk6IEthbWFsIERhc3UgPGtkYXN1LmtkZXZAZ21haWwuY29tPgoK
Q2FuIEkgc3VwcG9zZSB5b3UgbWVhbnQgIlJldmlld2VkLWJ5IiA/CgoKVGhhbmtzLApNaXF1w6hs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
