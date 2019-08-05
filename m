Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFFD82703
	for <lists+linux-mtd@lfdr.de>; Mon,  5 Aug 2019 23:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/uVa1eqFH2zOC8psSJgG/tkTEqxakZNfD+yAPtL3x4=; b=h2t1VzPMaRmUp1
	4+BZxHz5A0ZhCpHhFdsyXCRHOWpdj3wI7b2Sv26t4RztbcHLcKgzkZMBb2osDY3oO2/dN6Y4M4ecJ
	ZkwkNgYad0ZbUQVrdlmK1gMVzic83pm4T/e3Jf9TeK8GeyLrtZGG5v/xbunPKm6YP9zsNsexTdBpe
	d/1ATqQhtGIdJvwJMUlIT3uRhez1J9kkl79EEToLNiNHl+EaHXMWAYaM4yOiRBhGvk5JkozJXLRYE
	ZcDwTDGHgctth5++UlTk2280hmreAW0N0uFKBtur2SWto39876UeBNHTrqPwR7R7/gdcgH92ZOrqq
	72GlrA70oCWbSW9G28Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hukeL-00026K-SR; Mon, 05 Aug 2019 21:36:13 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hukeD-00025f-DQ
 for linux-mtd@lists.infradead.org; Mon, 05 Aug 2019 21:36:07 +0000
Received: by mail-lj1-x242.google.com with SMTP id i21so1253567ljj.3
 for <linux-mtd@lists.infradead.org>; Mon, 05 Aug 2019 14:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xcbeK5xvUlj5lae5+CMY+8obpGmGHu9kAuZYcGtjPUc=;
 b=W0F5jQDjY1V/FPgTYn1V8CetCu1plvYs+2E/sAijoDaCZ1yfWFvHrrse38JgOTHVma
 ZeOdXwbp17wh7w/OX0EBYhMUNrIGCSDqJBYFMdptJE0qrvDwEGJi7oWpBaepJYWONvNB
 PJcr4bsVhIYbkix1RkVWpAfMHjfyrE+UvfYTqUJC5hXpOsLCrOhtuOTUSzxsetidTMiA
 UzlSIz+pKhz6vjzGgTZwr7sxIR4nqeQx4hnRQ43D5pHfdiBEIyj0xq4aPfbyOMEGflgH
 +MT05HkueqbES7RwHCiB9wF50ii11IRKafFmb4ocSqQGypxT2ldPaN7ffC3CLhGTt/Om
 qf7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xcbeK5xvUlj5lae5+CMY+8obpGmGHu9kAuZYcGtjPUc=;
 b=SB63JKQ2WGYwXgqA5Vqez8VnFiaJRWFLYsf5w1bh6H9R7y5QHUfzTo9283DmCZrtbT
 SjobN5llJJTIO+K09nQf++u9Ifg7pIUF1zRx4mlfMHsaMSmU8zMnMPIKgNnvk7KAwxJv
 e0XS69sdH5rWimWIYaKzA9f8jjyBweN37cPk8U7TEl8qtDkfTQKQgrjqvGLyQdwje24X
 hMVeC/WmP+GrP5PqFv/37UlRf3fV0RgzNiZLbDRbcDotwuctqKbo7hKY4rPFlPphEmHw
 FM4Gpojp50bKovXjInGaNwC5LUyOMLMoVA4bh41cAWFEKf9ypm9NhQjSrMPIyeETOG5E
 wGfg==
X-Gm-Message-State: APjAAAUQhXoHEN8s/Xj6swsapW8RWRlYErTR49nnZzy58vH+ugv8bQXC
 Rsm+lKlgWj3Slzno6JKHLfTLa6HfJP8k55Ox5/c=
X-Google-Smtp-Source: APXvYqz6A/LDIi6GWygpfh1TopWdE9E09dKITrNsukzz8fbxiEwM/gLblU6KzXu0ZiOiYfWtJS/dtaFEgNHyMH4ze6Y=
X-Received: by 2002:a2e:9117:: with SMTP id m23mr79590702ljg.134.1565040963222; 
 Mon, 05 Aug 2019 14:36:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAMxq0fNSWrUFMmmTs8Ri9gFOvS+KQJvZN3-_KuiqXi9bbmCB0Q@mail.gmail.com>
 <CAFLxGvz92UR2M7KJ_dMMW-F47_pLLxSTOrGwdQ5Cc0kuSiTA8Q@mail.gmail.com>
 <CAMxq0fO=0P8972FKvscmNxCBxq0m8_f2DST-Oa9HtNeUA-FKsA@mail.gmail.com>
 <1019514474.57102.1564822129140.JavaMail.zimbra@nod.at>
In-Reply-To: <1019514474.57102.1564822129140.JavaMail.zimbra@nod.at>
From: Sergeant Peppercorn <speppercorn109@gmail.com>
Date: Mon, 5 Aug 2019 14:35:52 -0700
Message-ID: <CAMxq0fPzOmPc7G1hK=8M=gGLfeURt=e3+O+hr9j4cX_vz39wkg@mail.gmail.com>
Subject: Re: UBIFS ECC errors
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_143605_481528_4CCF1C91 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (speppercorn109[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (speppercorn109[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

VGhhbmtzIHNvIG11Y2ggZm9yIHlvdXIgaGVscC4gV2hhdCBkbyB5b3UgdGhpbmsgb2YgdGhpcyBw
YXRjaD8KaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2xpbnV4LW10ZC8yMDE0
LUphbnVhcnkvMDUxMzU3Lmh0bWwKCkkgZG9uJ3Qgc2VlIGl0IGV2ZW4gaW4gdGhlIDQuOS44OCBr
ZXJuZWwuIEkgc2VlIG90aGVyIHRoaW5ncyB0aGVyZSBmb3IgdGhpcy4KCk9uIFNhdCwgQXVnIDMs
IDIwMTkgYXQgMTo0OCBBTSBSaWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hhcmRAbm9kLmF0PiB3cm90
ZToKPgo+IC0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPiA+IFZvbjogIlNlcmdlYW50
IFBlcHBlcmNvcm4iIDxzcGVwcGVyY29ybjEwOUBnbWFpbC5jb20+Cj4gPiBBbjogIlJpY2hhcmQg
V2VpbmJlcmdlciIgPHJpY2hhcmQud2VpbmJlcmdlckBnbWFpbC5jb20+Cj4gPiBDQzogImxpbnV4
LW10ZCIgPGxpbnV4LW10ZEBsaXN0cy5pbmZyYWRlYWQub3JnPgo+ID4gR2VzZW5kZXQ6IEZyZWl0
YWcsIDIuIEF1Z3VzdCAyMDE5IDE4OjE0OjU1Cj4gPiBCZXRyZWZmOiBSZTogVUJJRlMgRUNDIGVy
cm9ycwo+Cj4gPiBIaSwgbWFueSB0aGFua3MgZm9yIHRoZSByZXBseS4KPiA+Cj4gPiBJIGhhdmUg
c2VlbiBwb3N0cyBvbiBiaXRmbGlwcyBpbiBlbXB0eSBzcGFjZSBpc3N1ZXMgYmVmb3JlLCBidXQg
ZG9uJ3QKPiA+IHJlbWVtYmVyIHNlZWluZyBhbnkgZml4ZXMuIERvZXMgdGhpcyBtZWFuIHRoZSBr
ZXJuZWwgVUJJIGRyaXZlcnMgbXVzdAo+ID4gYmUgcGF0Y2hlZD8gQ2FuIHlvdSBlbGFib3JhdGUg
b24gd2hhdCBmaXhlcyBvciB3aGVyZSB0byBmaW5kIHBhdGNoZXMsCj4gPiBldGMsIG9yIHdoYXQg
dG8gZG8gYWJvdXQgdGhpcywgdGhlbj8gQWxsIEkgY2FyZSBhYm91dCBpcyBnZXR0aW5nIHRoaXMK
PiA+IHRvIHdvcmssIGFuZCBob3BlZnVsbHkgd2l0aG91dCBuZWVkaW5nIHRvIHJlZm9ybWF0IHRo
ZSByb290IGZpbGUKPiA+IHN5c3RlbSBvbiA1MCwwMDAgdW5pdHMgaW4gdGhlIGZpZWxkLgo+Cj4g
WW91ciBrZXJuZWwgaXMgcHJldHR5IG9sZCwgc28gSSBndWVzcyB5b3UgZG9uJ3QgaGF2ZSB0aGlz
IGNvbW1pdDoKPiA3MzBhNDNmYmMxMzUgKCJtdGQ6IG5hbmQ6IGFkZCBuYW5kX2NoZWNrX2VyYXNl
ZCBoZWxwZXIgZnVuY3Rpb25zIikKPgo+IEJpdGZsaXBzIGluIGVtcHR5IHBhZ2VzIHNob3VsZCBi
ZSBoYW5kbGVkIGluIHRoZSBOQU5EIGxheWVyLgo+Cj4gUGxlYXNlIGRvbid0IGJsaW5kbHkgYXBw
bHkgdGhpcyBwYXRjaCwgaXQgbWF5IGhhdmUgZGVwZW5kZW5jaWVzIG9yIHdpbGwKPiB1bmNvdmVy
IG90aGVyIGJ1Z3MuIFN1Y2ggYXMgZml4Ogo+IGZkZjJlODIxMDUyOSAoIm10ZDogbmFuZDogZ3Bt
aTogRml4IGZhaWx1cmUgd2hlbiBhIGVyYXNlZCBwYWdlIGhhcyBhIGJpdGZsaXAgYXQgQkJNIikK
Pgo+IFRoYW5rcywKPiAvL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
