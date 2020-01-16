Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B11A013FFA1
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 00:44:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACEST4xjBk/p6Q5FALALyxbH5AyImshfzu0DYuCTDyY=; b=CwfMPdqr4wN0Iv
	6oCE30yqi0egTsG8eh/VDVEFq0WsWmGTq+MsvrEGTdduEvxjKe/k+XSO+D0DoxjM4SSc68cEl3+0I
	WRrhTL2gE06E4tkPU+MWXSOe2zcxjv8s6yNAVHhqy9rHx0VE6rI7webT3luMXAPiWF7dfEIBeC2Qv
	Gjd5K8DWSgzp9V11CVz5vjIoUpyK1U+edDNoqAZJ08YwZtsL40XozK2zqpYTMpStQmwg9yXXfRzfw
	DDOKYjKZPhtNoL6OMmC/fY7vQ+8BqiNm09eEUic/VrSEyzhJJ0WI6sgTJox5OnCugyb1dVTF4UIIW
	qhEQXd4Rztpn+B4w4JyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isEoM-0001j8-H0; Thu, 16 Jan 2020 23:44:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isEoB-0001iG-VJ
 for linux-mtd@lists.infradead.org; Thu, 16 Jan 2020 23:44:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so20958452wrh.5
 for <linux-mtd@lists.infradead.org>; Thu, 16 Jan 2020 15:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dHTGBkgzigId/zi0TOnYQjBsf6HAV19Aov7etVocQr4=;
 b=nkMxee7mkhPsFnsTSgqVfS0Up+8cTe72MvM/2bMae4kd1D0j7q1OUOdW0oLJxBbSIK
 9Bi90ue3VO7d+kNj/BGIwnKKDFCAeb3JxpNleXMZETVXxztv1FIZFCIO66SPBeHDnkXJ
 WDA0TAbej0BCxjfO9HgpdHtEkdbpsP2wkxY/ktTPOF9jGQpd5h0kup9rrP8UKQ+AEy9B
 xzLvt3IZ71WZZRPbY9DQFQrKlS5Qf9aZSejvh9ePXKBHpsxk695jLXQSpp9oGijyPgno
 CECYx2xCkwz1/b/1dPu/WExst1CjFWG8F8q7i4DfSFwFRLPE9uSSS7gyOHJu+f0PCG6F
 1iRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dHTGBkgzigId/zi0TOnYQjBsf6HAV19Aov7etVocQr4=;
 b=JIws3jPCNg6Q0CjFsRBqxyrWNKY5ZdE+KNOfgOTwDEeZ/RDRsg1iunqlFmEar7uhE7
 ZYOopob0rmh21pQQVnHK2Os6F3n4pa1ffjbF3uz9KFWN3U3XKJ8keaIN8Zqsodq2dm9I
 Mn1/+M1kIfGtEuxh1DKBQ1VBieDmobmoLcgOajWSNC2ErbTyuFX3+RY/nkDHP2VwSLsu
 arVFsHHRK+WVelD478vunRo4lPLBA0UY9cArmd6n8WEey34vCZ3rbNB3lusDRIjDh7cR
 N6EEM8rKLrLA32l6TvZmlHwDe6j3oCI0yVtgbH2xUmamJxhTDt6ybKKCcgyOlUF4ADlq
 dd4A==
X-Gm-Message-State: APjAAAXPRVuBLmvR1gW+EbxIwnc4CSVXMbqcH2Gu6fVj6XizSaWjEc79
 HVi/daNMJjDTiGbibuuQJ4dS9Yis0rLroIi3Rgc=
X-Google-Smtp-Source: APXvYqzqW75Nq6g1kCwaCaY8GLY0vks1V3PmDr3vfRkYbRP+psJfmZtTg8T656o2Zp8oScWytghb39gCT2F8UkX0DLo=
X-Received: by 2002:adf:f606:: with SMTP id t6mr5632437wrp.85.1579218254750;
 Thu, 16 Jan 2020 15:44:14 -0800 (PST)
MIME-Version: 1.0
References: <20200113105156.25945-1-geert@linux-m68k.org>
In-Reply-To: <20200113105156.25945-1-geert@linux-m68k.org>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Fri, 17 Jan 2020 00:44:03 +0100
Message-ID: <CAFLxGvxNUcKiaCxXy_oracH-3xg3MPETxkaDqgtkMkB1vp-02Q@mail.gmail.com>
Subject: Re: [PATCH] ubifs: Fix ino_t format warnings in orphan_delete()
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_154416_034260_C9002396 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Richard Weinberger <richard@nod.at>, linux-alpha@vger.kernel.org,
 linux-mtd@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 linux-s390@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gTW9uLCBKYW4gMTMsIDIwMjAgYXQgMTE6NTIgQU0gR2VlcnQgVXl0dGVyaG9ldmVuCjxnZWVy
dEBsaW51eC1tNjhrLm9yZz4gd3JvdGU6Cj4KPiBPbiBhbHBoYSBhbmQgczM5MHg6Cj4KPiAgICAg
ZnMvdWJpZnMvZGVidWcuaDoxNTg6MTE6IHdhcm5pbmc6IGZvcm1hdCDigJglbHXigJkgZXhwZWN0
cyBhcmd1bWVudCBvZiB0eXBlIOKAmGxvbmcgdW5zaWduZWQgaW504oCZLCBidXQgYXJndW1lbnQg
NCBoYXMgdHlwZSDigJhpbm9fdCB7YWthIHVuc2lnbmVkIGludH3igJkgWy1XZm9ybWF0PV0KPiAg
ICAgLi4uCj4gICAgIGZzL3ViaWZzL29ycGhhbi5jOjEzMjozOiBub3RlOiBpbiBleHBhbnNpb24g
b2YgbWFjcm8g4oCYZGJnX2dlbuKAmQo+ICAgICAgICBkYmdfZ2VuKCJkZWxldGVkIHR3aWNlIGlu
byAlbHUiLCBvcnBoLT5pbnVtKTsKPiAgICAgLi4uCj4gICAgIGZzL3ViaWZzL29ycGhhbi5jOjE0
MDozOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYZGJnX2dlbuKAmQo+ICAgICAgICBk
YmdfZ2VuKCJkZWxldGUgbGF0ZXIgaW5vICVsdSIsIG9ycGgtPmludW0pOwo+Cj4gX19rZXJuZWxf
aW5vX3QgaXMgInVuc2lnbmVkIGxvbmciIG9uIG1vc3QgYXJjaGl0ZWN0dXJlcywgYnV0IG5vdCBv
bgo+IGFscGhhIGFuZCBzMzkweCwgd2hlcmUgaXQgaXMgInVuc2lnbmVkIGludCIuICBIZW5jZSB3
aGVuIHByaW50aW5nIGFuCj4gaW5vX3QsIGl0IHNob3VsZCBhbHdheXMgYmUgY2FzdCB0byAidW5z
aWduZWQgbG9uZyIgZmlyc3QuCj4KPiBGaXggdGhpcyBieSByZS1hZGRpbmcgdGhlIHJlY2VudGx5
IHJlbW92ZWQgY2FzdHMuCj4KPiBGaXhlczogODAwOWNlOTU2YzNkMjgwMiAoInViaWZzOiBEb24n
dCBsZWFrIG9ycGhhbnMgb24gbWVtb3J5IGR1cmluZyBjb21taXQiKQo+IFNpZ25lZC1vZmYtYnk6
IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5vcmc+Cj4gLS0tCj4gIGZzL3Vi
aWZzL29ycGhhbi5jIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpBcHBsaWVkISBUaGFuayB5b3UsIEdlZXJ0LgoKLS0gClRoYW5rcywK
Ly9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
