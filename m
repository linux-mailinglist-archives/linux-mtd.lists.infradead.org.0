Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC11B1CEF46
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 10:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBb1VCalDoOQEXkfT54nNe/5z0mGvmS9ytkwnniFSKI=; b=d2usLxovNdDqC2
	soTHLEWvtkl94fEF3O9hEx9zp8sYQs6E74/wYZ21Yr/sAllyl6Y/2Y+LTYXsn2GMahmePsid2tEvi
	eJB7SZQY5mXw5quKwr4LkL4ZwRKjb7rxRmbl59mhoMThizX94t9uiMFs6/MKPLdfUwrkhIT7+8yGQ
	0LjKL14jEp5h9lEGSWsEpWpRZDijZNTe4G+W7xpkx9zyr+FvwjGVKPbT9M63cN5ZSh5ZTf9UaBX7K
	YgFyFIQ3iBew1HM4tGlHzWLoNA0SDX6ahfePZ/1QYJx5FstJkX6/Ur9foEj8izQ42g1ytU/C1zgLC
	uLiBN04PtRHFLpIPEAXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQT7-0004TN-OK; Tue, 12 May 2020 08:40:53 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQSy-0004Sr-OV
 for linux-mtd@lists.infradead.org; Tue, 12 May 2020 08:40:46 +0000
Received: by mail-qk1-x741.google.com with SMTP id g185so12738922qke.7
 for <linux-mtd@lists.infradead.org>; Tue, 12 May 2020 01:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=uNrb4kx72RT6Wt6KyZueP1xoWKUbvmM2rlFZPzKa8ZY=;
 b=UEZadqN5Eu5UtFw4r44A685bU/V8+H51BBC9mt7qVRtd7QLH/rwUiDtHWhS+yhsL4d
 FBHjdeXFAlIxTjCydZ0Omi0r7wFksRvNlxavtvvFXf6l34z2uwx9Qgqfahbb6xmAeO2+
 sxxoDi7j0OOXYrA96ihL8yLWR5Z4orGHVfa1gphs8pYq9rEmGjhwsuQifZQzU228WYIs
 0kPrsFQuI5NUNFyneozahgd1Me8ACRlMEU/VrAxuK1aVJaoSP08rOzx+VS7QRSbIHfl1
 U37Tb14nJ5/M+jLy96GU0mb5TmffIHezK2kMH6aBoaYhQAeXLcSuhAaqqDqiOIIm2kUP
 laZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uNrb4kx72RT6Wt6KyZueP1xoWKUbvmM2rlFZPzKa8ZY=;
 b=i3NlYoygDnoT6zEwtJ9cUn3KLkx7cIrmrmlO/YeV39BbjQJg4EeyugwFaiV1QjvGgl
 jSw+6jyWcbXAP8fa0NkuC+sQulhlthv6mCuIBEZiazl6d9BqlGs2+LzQ3vJd4Jr8ie4E
 27aWxzvkFXRJEls7gGGcLCFLqtKx4YwchCsRVYt1QwB7OLK1XGvi1Gz8/v1YYhXE1G/8
 szzC/ZoD0BRGRb/YJC7cNvUi1M0FWVs0tKPwtpTViG331zzGWKomZS+2j8oX6egyFOSa
 QRefZFv9D+mpXFEVVzC6jiKg9J5TgnAbKR99Yw9HUIrpjp922JjyZ/WSbLHdy2T9hnbW
 pE3A==
X-Gm-Message-State: AGi0PubrnM2SNAX2gYjhFwA9AtvbUAH4utgBUzuUUcdrVnSUxZJEcdHc
 V6Zcu0f9QnEzxRn5l/k7FjFmcokylwGjWr9QeDD1Nw==
X-Google-Smtp-Source: APiQypLffRKeTVPuVGN/MBU1jNGOqBYNWOBULw1xYXYPburtxhjEZ6edZdO0BJwrMd62kSuBsBKhoGtWy0AkVQJa9D0=
X-Received: by 2002:a37:6155:: with SMTP id v82mr16895463qkb.263.1589272842564; 
 Tue, 12 May 2020 01:40:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200501100729.1237040-1-boris.brezillon@collabora.com>
 <CAMpxmJXmPcwo6uomrrwbcFe9gkhxvYVw0Y6o1n5uSGBwPKd5_A@mail.gmail.com>
 <20200509161325.46dcb266@collabora.com>
In-Reply-To: <20200509161325.46dcb266@collabora.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Tue, 12 May 2020 10:40:31 +0200
Message-ID: <CAMpxmJVXa5ohufWCEfUhO5XDV2-XkHcb8hNy_=mq+8+MWgzGsA@mail.gmail.com>
Subject: Re: [PATCH 0/5] mtd: rawnand: davinci: Convert to exec_op()
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_014044_797894_2B5B3501 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 "open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

c29iLiwgOSBtYWogMjAyMCBvIDE2OjEzIEJvcmlzIEJyZXppbGxvbgo8Ym9yaXMuYnJlemlsbG9u
QGNvbGxhYm9yYS5jb20+IG5hcGlzYcWCKGEpOgo+Cj4gW3NuaXBdCj4KPiA+Cj4gPiBIaSBCb3Jp
cywKPiA+Cj4gPiBUaGFua3MgZm9yIGRvaW5nIHRoaXMuIFVuZm9ydHVuYXRlbHkgdGhpcyBicmVh
a3MgTkFORCBvbiBkYTg1MC1sY2RrCj4gPiB3aXRoIHRoZSBmb2xsb3dpbmcgZXJyb3IgbWVzc2Fn
ZToKPiA+Cj4gPiAgICAgbmFuZDogTm8gTkFORCBkZXZpY2UgZm91bmQKPgo+IEkgaGFkIGEgc2Vj
b25kIGxvb2sgYW5kIHRoZSBiZWxvdyBkaWZmIHNob3VsZCBmaXggdGhlIGRldGVjdGlvbiAoeW91
Cj4gY2FuIGFsc28gZmluZCB0aG9zZSBjaGFuZ2VzIGluIG15IGV4ZWMtb3AtY29udmVyc2lvbiBi
cmFuY2ggWzFdKS4KPgo+IFsxXWh0dHBzOi8vZ2l0aHViLmNvbS9iYnJlemlsbG9uL2xpbnV4L3Ry
ZWUvbmFuZC9leGVjLW9wLWNvbnZlcnNpb24KPgoKSGkgQm9yaXMsCgpZZXMsIHRoaXMgYnJhbmNo
IHdvcmtzIG5vdy4gRG8geW91IHdhbnQgdG8gc2VuZCBvdXQgYSB2Mj8gSSdtIGhhcHB5IHRvCmFk
ZCBhIFRlc3RlZC1ieSB0byBpdC4KCkJhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxp
c3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQv
Cg==
