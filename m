Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E481399C2
	for <lists+linux-mtd@lfdr.de>; Sat,  8 Jun 2019 01:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTwAOaj8zioeik1Vmjrh5QF3GpDuPYehbLA5yd3REQc=; b=InGY7bMaUxjQBS
	FVY2IYmMsqg0J4Swhma//djTiIdfbChduYRIlapR8LqOHkMhT/czuwJbCJq0BWMgvfPlta6fz1sEF
	fGZt7Irn9/TvUdZIn3d6+6pVaj/GccVwDdzaTMjX1xUHgArdTzo5ICXJNRsgPLHh67BVlfHJRQ4nT
	T+wdFTy5ddfUt5MbedxtQO/vF6Q7cf2m+RS2hpTbfjxxosHcNmey1Jag1l4Q2avIadrj4zSzWXr/f
	2it7JvewellTV8sW2d/Dj+ZmSSzKsQp0Yc3yqYOUH0zmmA1jXDT4etgkknc4tFknsWXc83c8vOKBp
	kePDuRg7oLYDXZKzboEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZOTf-0005xt-By; Fri, 07 Jun 2019 23:40:55 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZOTW-0005xO-Mt
 for linux-mtd@lists.infradead.org; Fri, 07 Jun 2019 23:40:48 +0000
Received: by mail-pl1-x641.google.com with SMTP id p1so1387397plo.2
 for <linux-mtd@lists.infradead.org>; Fri, 07 Jun 2019 16:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nGU1cHVksPdzJ27l4WiOPkJRPpZpUroiBndbB+8Stj8=;
 b=Jzvx8yjVWIMjVeu9Ly1QaYnH/7d+iTVN/G5iSXG4yHrXEWzsLAoe/q1B2FRzv6MpzZ
 kpDBofFIPg9z5Dx+3e6ObpQ3KZp4I7YRXUuRabEDP/tWxBkE7vZxmhaWPbiE1CMNZ35I
 XpvHnylLRBIqSb9mdFIMJgjquKN97YTW3pp5hujJBBPzWHIorb/ZcByNQOOhcQ2Tyqx/
 RBjfqiclvRqpyIpEVieCXmS2nF7xJVozuQnunsKbLBeWCtSbEGLtV+yArLI8dKnBrBmY
 5s0K+KUx3OM5ZhiTkyrI7w0kLiJ9fUS0i9L+UQX52D5AjQSKelKOyNMo1BkangCOiKVk
 z4rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nGU1cHVksPdzJ27l4WiOPkJRPpZpUroiBndbB+8Stj8=;
 b=OX0I9tnRZNVXuWbQBdfvw2SOQQeeBmJvqOP1oJj61CLHTGc10Y88M71QK0DQpsKYij
 ryGxyz5VewhM8MBN2sJKwWFBoaER2uw75pjfi3NVm3qT6H2NddDy3s/6mVnEacxT377n
 V4XM5LxI01dV9PT39IknG1PGNm2h8iPjeZ4r5f46oCD6nxb9tgWET9VgLlu6WWLBiSJE
 ARrnpy5jVf1IisQ0N0ivLYe/7M6REkvmkyxT25IzAqayiW9r0aG7FLGJMlYI/OtmSJbQ
 32WTog9md7TGc6eOvtYq0c66CY6Mu4KG6nFbTvAm9wF9QLrEEeYL+9AYdvD0tyIqRZoA
 p3ZA==
X-Gm-Message-State: APjAAAXd/XZf/SOkHgCSLxEcuJohS2SYj8oFZ8IdX5GJFFwVOseJpDSv
 McUOo59SeZOdqeXrCuvutyyGTh7l7NNzcSB8fiA=
X-Google-Smtp-Source: APXvYqxrDjMnQGZQ3bm0rZvzkIe2bESbq/JlHbpyuGKYduGgSELZq0dIY3i/AU/W+H6W6n4ItH/YTPkoi1Mo5a+WqdY=
X-Received: by 2002:a17:902:6b07:: with SMTP id
 o7mr37395316plk.180.1559950845545; 
 Fri, 07 Jun 2019 16:40:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190515210202.21169-1-richard@nod.at>
 <CAO1O6sdU=kAYS2sTKwiagxrbg+fMer9nvbwA9C4LoFMgH7e1dQ@mail.gmail.com>
 <1644731533.84685.1559938164477.JavaMail.zimbra@nod.at>
 <CAO1O6scuNXfgtaex_Ty4-5=DmBV43Sg28ntkzNgB5T2KwfXG3g@mail.gmail.com>
 <1342653998.84700.1559940592644.JavaMail.zimbra@nod.at>
In-Reply-To: <1342653998.84700.1559940592644.JavaMail.zimbra@nod.at>
From: Emil Lenngren <emil.lenngren@gmail.com>
Date: Sat, 8 Jun 2019 01:40:38 +0200
Message-ID: <CAO1O6seVp0wBVE6AKmu+EYhoghxbErNuK1F=Y5ewzD=CRro24g@mail.gmail.com>
Subject: Re: [PATCH] ubifs: Add support for zstd compression.
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_164046_768165_4E963D73 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.lenngren[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Michele Dionisio <michele.dionisio@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGksCgpEZW4gZnJlIDcganVuaSAyMDE5IGtsIDIyOjQ5IHNrcmV2IFJpY2hhcmQgV2VpbmJlcmdl
ciA8cmljaGFyZEBub2QuYXQ+Ogo+Cj4gLS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+
ID4gVm9uOiAiRW1pbCBMZW5uZ3JlbiIgPGVtaWwubGVubmdyZW5AZ21haWwuY29tPgo+ID4gQW46
ICJyaWNoYXJkIiA8cmljaGFyZEBub2QuYXQ+Cj4gPiBDQzogImxpbnV4LW10ZCIgPGxpbnV4LW10
ZEBsaXN0cy5pbmZyYWRlYWQub3JnPiwgIlNlYmFzdGlhbiBBbmRyemVqIFNpZXdpb3IiIDxzZWJh
c3RpYW5AYnJlYWtwb2ludC5jYz4sICJsaW51eC1rZXJuZWwiCj4gPiA8bGludXgta2VybmVsQHZn
ZXIua2VybmVsLm9yZz4sICJNaWNoZWxlIERpb25pc2lvIiA8bWljaGVsZS5kaW9uaXNpb0BnbWFp
bC5jb20+Cj4gPiBHZXNlbmRldDogRnJlaXRhZywgNy4gSnVuaSAyMDE5IDIyOjI3OjA5Cj4gPiBC
ZXRyZWZmOiBSZTogW1BBVENIXSB1YmlmczogQWRkIHN1cHBvcnQgZm9yIHpzdGQgY29tcHJlc3Np
b24uCj4gPj4gU28gSSdtIG5vdCBzdXJlIHdoYXQgaXMgdGhlIGJlc3QgY2hvaWNlIGZvciB0aGUg
ZGVmYXVsdCBmaWxlc3lzdGVtLgo+ID4KPiA+IE15IGlkZWEgd2FzIGF0IHRoZSBlbmQsIGkuZS4g
aXQgd2lsbCBvbmx5IGJlIHVzZWQgd2hlbiBMWk8gYW5kIFpMSUIKPiA+IGFyZSBub3Qgc2VsZWN0
ZWQgdG8gYmUgaW5jbHVkZWQgZm9yIFVCSUZTLCBmb3IgZXhhbXBsZSB3aGVuIHNvbWVvbmUKPiA+
IGNvbXBpbGVzIGEgbWluaW1hbCBrZXJuZWwgd2hvIGtub3dzIGV4YWN0bHkgd2hpY2ggY29tcHJl
c3Npb24KPiA+IGFsZ29yaXRobXMgd2lsbCBiZSB1c2VkIG9uIHRoYXQgc3lzdGVtLgo+Cj4gQlRX
OiB5b3UgY2FuIGFsd2F5cyBzZWxlY3QgdGhlIGNvbXByZXNzb3IgdXNpbmcgdGhlIGNvbXByPSBt
b3VudCBvcHRpb24uCj4gQWxzbyBmb3IgdGhlIGRlZmF1bHQgZmlsZXN5c3RlbS4KClllcCB0aGF0
J3Mgd2hhdCBJJ20gdXNpbmcgd2hpbGUgSSdtIHRlc3RpbmcuCgo+IFB1dHRpbmcgaXQgYXQgdGhl
IGVuZCBkb2VzIG5vdCBoYXJtIGJ1dCBJTUhPIHRoZSB1c2UgaXMgbGl0dGxlLgo+IEJ1dCBmb3Ig
dGhlIHNha2Ugb2YgY29tcGxldGVzLCBJIGFncmVlIHdpdGggeW91LiBDYW4geW91IHNlbmQgYSBm
b2xsb3ctdXAKPiBwYXRjaD8KCk9rCgo+Cj4gPiBJIGRpZCBhIHNpbmdsZSB0ZXN0IHRvZGF5IGFu
ZCBjb21wYXJlZCBsem8gYW5kIHpzdGQgYW5kIG9uIHRoYXQgdGVzdAo+ID4gbHpvIGhhZCBmYXN0
ZXIgZGVjb21wcmVzc2lvbiBzcGVlZCBidXQgcmVzdWx0ZWQgaW4gbGFyZ2VyIHNwYWNlLiBJJ2xs
Cj4gPiBkbyBtb3JlIHRlc3RzIGxhdGVyLgo+Cj4gQ2FuIHlvdSBwbGVhc2Ugc2hhcmUgbW9yZSBk
ZXRhaWxzPyBJJ20gaW50ZXJlc3RlZCB3aGF0IENQVSB0aGlzIHdhcy4KCkFSTSBDb3J0ZXgtQTcu
IFRoZSBrZXJuZWwgaXMgY29tcGlsZWQgd2l0aCBnY2MgNy4zLjEuIE5leHQgd2VlayBJJ2xsCnRl
c3Qgc29tZSBtb3JlLgpJIGhhdmUgYSBxdWVzdGlvbiBhYm91dCBob3cgdGhlIGRlY29tcHJlc3Np
b24gaXMgZG9uZSB3aGlsZSByZWFkaW5nLgpXaGVuIGEgbGFyZ2UgZmlsZSBpcyByZWFkIGZyb20g
dGhlIGZpbGVzeXN0ZW0gKGFzc3VtaW5nIG5vdCBpbiBhbnkKY2FjaGUpLCBpcyBpdCB0aGUgY2Fz
ZSB0aGF0IGZpcnN0IGEgY2h1bmsgaXMgcmVhZCBmcm9tIGZsYXNoLCB0aGF0CmNodW5rIGlzIHRo
ZW4gZGVjb21wcmVzc2VkLCBsYXRlciBuZXh0IGNodW5rIGlzIHJlYWQgZnJvbSBmbGFzaCwgdGhh
dApvbmUgaXMgdGhlbiBkZWNvbXByZXNzZWQgYW5kIHNvIG9uLCBvciBjYW4gdGhlIGRlY29tcHJl
c3Npb24gYmUgZG9uZQppbiBwYXJhbGxlbCB3aGlsZSByZWFkaW5nIHRoZSBuZXh0IGNodW5rIGZy
b20gZmxhc2g/CgovRW1pbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
