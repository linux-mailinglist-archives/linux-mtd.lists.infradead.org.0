Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BB110A32D
	for <lists+linux-mtd@lfdr.de>; Tue, 26 Nov 2019 18:11:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TyFeAhI5lS5NOWZUq9X0f8xcle/NO8OnOYpHiRhwBo=; b=tE2q2q8HAdwoK/
	BECpLBvn9GplPzLc7lt3qULyZp0mhXy+y2imLBgW5QyhuO3odLEi7RwI1RXV9t3eblCX8IP8tXtFq
	Zg5A9BQY+uWntGC9SPZMPiPvGgtpr/8CMRtLbzQMlHzYHzqnpycqEvCwWCbG2KVO1GMv0oltJL6SJ
	yX8Ro+QBoW5nD3JoDEIAr5hKtgxsG+8sGieV/toqOLw4XjzhZeFbtAsC1w9hRMa0MSlIGkP2yTvHM
	tIjYbI8F0F5xYgCVNxzHtYhU2sNk5wowC6f4vDoNx/zoET1aM8Q6E6Qq94uekS7IOsS1Kifr/c14n
	0mC8aqDQl/E2x73iw7Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZeNA-0007tI-Ao; Tue, 26 Nov 2019 17:11:32 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZeN2-0007sn-Mw
 for linux-mtd@lists.infradead.org; Tue, 26 Nov 2019 17:11:26 +0000
Received: by mail-lf1-x131.google.com with SMTP id v201so13681065lfa.11
 for <linux-mtd@lists.infradead.org>; Tue, 26 Nov 2019 09:11:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6Wq+/wbEN9a8jjh5ngzFOhCdOI9SEoVtsXMmx8wEyyU=;
 b=lqbpT01sMUrqqgOruYABb9R351YPyH9ZxnZk6aIfw8mltMMPnguGQDmnSxWnZUrokG
 ID5DHTjVTmaPJScq2fnfy8EzDIfCKQQvwGYPAyCFu+2QPuw7jrCahzjVg90Rvg6MbRl4
 KzDLIXqYnNUKon45mzMYkujsfXCvdT6nGth46NHXAoIiYm33Uz0GjjJCnLs5wOkvO1ut
 C7MzfyINWnp+9hjkxcn7DKLaxtPfP+7QpwVGrELayyqqgLjoLPAStBlvVHgxU5KcEvLV
 lPOHhC9rHVPCzFX5q1WHSFJOQYpVtzmeyL9Erxbb5oRi95pWPEbAw6IoY3CD66Nf+ctH
 LELw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6Wq+/wbEN9a8jjh5ngzFOhCdOI9SEoVtsXMmx8wEyyU=;
 b=f1P2EdRiKGxvXZMja+LY6vEmrSyLZGNNB6Z+FDjjOoeJ5BmY9FID+e0nBVp2U6dBob
 BN60ILDV3j74NHcKd7omOyFIASz3YlsAUrvq5laa6uwvYE3atYPREppqKvFDgF2XBMdp
 aCzAAAYEnmJwTyTe3UhyGNEIkaIRvsZAOdzrIvIew51K0h9u43rlt+lauyjVkDanhKg+
 m1b453M+5IkHEEA1NtwxsTk66LdMzjm6VU8RbgrqgFpcuj0cpfmxdCoshAUsZn0NbgQo
 DpvP//0Z0J23OfZ+Iq/yh1eh9+9gmQOVN8wB41hO36Cfim92ZUewjPYb+hu2DIYb8iE/
 TnjA==
X-Gm-Message-State: APjAAAXd9oT4npGb5SEqTTMj9Vxq5t3yxLz/e7SlCz75UgWysK7kMGjj
 QLw98G9GAyWWpVVhdHQmVOmBsi+BuyPPs5WMKMQ=
X-Google-Smtp-Source: APXvYqyPW2WenJ4uj+cG8lGRLCcwag4a9MIGeWAqs5eZf6xz101NSITlmIhtE+WwCnXSdbA8NSYOozA9F0oQzxD2R4A=
X-Received: by 2002:a19:6b04:: with SMTP id d4mr25974258lfa.10.1574788280112; 
 Tue, 26 Nov 2019 09:11:20 -0800 (PST)
MIME-Version: 1.0
References: <CAOfSrV1CNn6EpPkAkP8F2VQUrit_B-t89sSxW=08zyKVOdt9AA@mail.gmail.com>
 <CAFLxGvziLKNA0gcPo+EGwfpuv6Fe6=sNOfhEa1DR7sN0oOxzMg@mail.gmail.com>
 <CAOfSrV0ZuG5qz0aW1bU30iZ2RX2vi4Y5aYF128XjkRUd1h+EhA@mail.gmail.com>
 <1237458020.97684.1574720847193.JavaMail.zimbra@nod.at>
In-Reply-To: <1237458020.97684.1574720847193.JavaMail.zimbra@nod.at>
From: Otto Blom <oblom586@gmail.com>
Date: Tue, 26 Nov 2019 09:11:09 -0800
Message-ID: <CAOfSrV2QTRbg+pD2TfRbCFfjcjR3UT6BGVSV_Nkg4YxJL6r2RA@mail.gmail.com>
Subject: Re: mtd-utils io_paral test fails on NAND
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_091124_767634_ABB4E3CD 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:131 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (oblom586[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oblom586[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmljaGFyZCAhCgpuYW5kcGFnZXRlc3QgcmFuIGZvciAxMmgrIHcvbyBmYWlsaW5nLCBzbyBp
dCBsb29rcyBsaWtlIGEgZHJpdmVyCnByb2JsZW0gbGlrZSB5b3Ugc3VnZ2VzdGVkLgoKQWxsIHRo
ZSB0aW1lcyBJJ3ZlIHNlZW4gaWYgZmFpbCAoYXJvdW5kIDEwKSB0aGUgZmFpbGVkIHBhZ2UgY2Ft
ZSBiYWNrCndpdGggYWxsIHplcm9zLi4gV2hpY2ggaXMgYSBiaXQgc3RyYW5nZSBhcyBJIHdvdWxk
IHRoaW5rICJyYW5kb20iIC8KZHVwbGljYXRlZCBwYWdlIHdvdWxkIGJlIG1vcmUgbGlrZWx5LiBN
YXliZSB0aGUgcGFnZSByZWFkIGZhaWxzCnNpbGVudGx5IGFuZCB0aGUgY29udHJvbGxlciByZXR1
cm5zIGFsbCB6ZXJvcwoKVGhhbmtzIGZvciB5b3UgaGVscCAmIGluc2lnaHRzIGluIHRoaXMgIQoK
L090dG8KCk9uIE1vbiwgTm92IDI1LCAyMDE5IGF0IDI6MjcgUE0gUmljaGFyZCBXZWluYmVyZ2Vy
IDxyaWNoYXJkQG5vZC5hdD4gd3JvdGU6Cj4KPiBPdHRvLAo+Cj4gLS0tLS0gVXJzcHLDvG5nbGlj
aGUgTWFpbCAtLS0tLQo+ID4gVm9uOiAiT3R0byBCbG9tIiA8b2Jsb201ODZAZ21haWwuY29tPgo+
ID4gQW46ICJSaWNoYXJkIFdlaW5iZXJnZXIiIDxyaWNoYXJkLndlaW5iZXJnZXJAZ21haWwuY29t
Pgo+ID4gQ0M6ICJsaW51eC1tdGQiIDxsaW51eC1tdGRAbGlzdHMuaW5mcmFkZWFkLm9yZz4KPiA+
IEdlc2VuZGV0OiBNb250YWcsIDI1LiBOb3ZlbWJlciAyMDE5IDE4OjIyOjEwCj4gPiBCZXRyZWZm
OiBSZTogbXRkLXV0aWxzIGlvX3BhcmFsIHRlc3QgZmFpbHMgb24gTkFORAo+Cj4gPiBIaSBSaWNo
YXJkICEKPiA+Cj4gPiBJbnRlcmVzdGluZ2x5IEkgaGFkIGZsYXNoX3JlYWR0ZXN0IHJ1bm5pbmcg
aW4gYSBsb29wIHRoZSB3aG9sZSB3ZWVrZW5kCj4gPiB3aXRob3V0IGFueSBlcnJvcnMuIEFsdGhv
dWdoIHRoaXMgdGVzdCBkb2VzIG5vdCB2ZXJpZnkgdGhlIGRhdGEgcmVhZAo+ID4gc28gaXQgY291
bGQgcG9pbnQgdG93YXJkcyBhIGNvbnRyb2xsZXIgLyBkcml2ZXIgcHJvYmxlbS4gSSdtIGluIHRo
ZQo+ID4gcHJvY2VzcyBvZiB1cGdyYWRpbmcgdGhlIFNESyBmcm9tIDIwMTcuMyB0byAyMDE5LjIg
dG8gc2VlIGlmIHRoYXQKPiA+IG1ha2VzIGFueSBkaWZmZXJlbmNlCj4KPiBwYWdldGVzdCBzaG91
ZCBhbHNvIHZlcmlmeSB0aGUgZGF0YS4KPgo+IElmIGl0IGZhaWxzIG9ubHkgb24gdG9wIG9mIFVC
SSBhbm90aGVyIHBvc3NpYmxlIGVycm9yIHNvdXJjZSBpcwo+IERNQS4gQm90aCBVQkkgYW5kIFVC
SUZTIHVzZSB2bWFsbG9jZWQoKSBidWZmZXJzLCBhIGRyaXZlciBtdXN0IG5vdCBETUEKPiBmcm9t
L3RvIHRoZXNlIGFuZCB1c2UgYm91bmNlIGJ1ZmZlcnMuIElmIHRoZSBkcml2ZXIgaXMgYnVnZ3kg
aW4gdGhpcwo+IGFyZWEgZXZlcnl0aGluZyBsb29rcyBzaGlueSB1bnRpbCB5b3Ugc3RhcnQgdXNp
bmcgVUJJLi4uCj4KPiBJcyB0aGUgYmFkIGRhdGEgYWx3YXlzIHplcm9zPyBUaGlzIGFsc28gZG9l
cyBub3Qgc291bmQgbGlrZSBhbiBVQkkKPiBMRUItPlBFQiBtaXNtYXRjaC4KPgo+IFRoYW5rcywK
PiAvL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
