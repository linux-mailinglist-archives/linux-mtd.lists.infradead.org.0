Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFED2130F9D
	for <lists+linux-mtd@lfdr.de>; Mon,  6 Jan 2020 10:38:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBh8Y7mQh9ntJPsvm9wKgK5m2vp/VC5w6p1sVNpC9YI=; b=CPBFFpzfTIvsKP
	9GaAEjteg6h5XjpJhIpwbiTPZ6pSHhCerortVVw9hBPl+mGphz0fv5RgU1MYfGEZaX1EDnZlHLC8D
	Q++H0HmwuFZrUvpHvhUh0UyST6f78KM7QU5PMzhZpg8vNYFijxHDVj5jO9VmVWaH6dzm8l+CDwaxd
	p60JdSXw+RL5v6bGesK/OEF3C32CZ12U9IcrKHaWNXaSLFtRC1Zm6B6YqOFsNFDmTWHM8lpBR5NVC
	XPJOHxT2ed+RKsneFy8NanPWf7o3L8iMiGI0Hrj+3jIHnymZDvuqfDBPinoAjJYFHxPqavSEaIDvL
	KCga6rIlCFxhYsrtVVSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOqD-0004Lg-SZ; Mon, 06 Jan 2020 09:38:29 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOq1-0004KS-ND
 for linux-mtd@lists.infradead.org; Mon, 06 Jan 2020 09:38:18 +0000
Received: by mail-io1-xd44.google.com with SMTP id b10so47934791iof.11
 for <linux-mtd@lists.infradead.org>; Mon, 06 Jan 2020 01:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=k2+obkL6rebOtdriVSVT+QmM5oPrNk9dBLg/jYY+wfo=;
 b=D1o966MxyHxQctJ7rWTwJMt3NjGv7Dvvox7er9lgSNNvWFHHGJwcWONCfWtZi6gN+G
 sRs4vR0DB2EcpFyAOnNBrO6Ga7QtFeR72FBTF9427T+497Qzcfm+8pl2pbBszlc9JvVQ
 5lkYYgLVWA+odDpMbgsGqK5RaUIs7BmqtrPT75mjcq5Cps8QL2hw57ZZN4r24h+9vHFL
 a+0FUA2QZ2/EndxTc3PDJardW9IZ7lhDOn+2+dkqYDe/IvqXD733Uy0eoMyHFCObNslD
 T6Kj74zvZbASdqOn7QT7jqwZ2Hbx2etpk6CtUIx5rIfvpbv2lv5teqA/qj36BoqxsUw4
 LIzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=k2+obkL6rebOtdriVSVT+QmM5oPrNk9dBLg/jYY+wfo=;
 b=HpIn+iMmx0lG4ljnO1DqczWgsVfd1sFOF0BILczLxasZK1SxcnLbheszMm84DT7f3y
 4Hv/2oz93Yx2horLr2rE/51LzQqZnDgqbXQJcwd5b63L7/yzkAkQ2eoKwrWpnRzFKfwF
 JtP+4QX1J3lgtn+XTV3jzhUTHvcbusQMeRjLakW4Q0pSpv72tj4B1HAvRtsGdmep0wZz
 lU8ppIgQfKidt864zMi14QV7bbUdKJHHQ2FFLhVQvQmMuOkfRRrH0FK8iz47M494mBN1
 cYZABQ6YiJCqC5we378q+3wdOz1Y/8SmPAUo8vDvWDT+oK86jS8e5j41dgIxGt1SROzv
 UCSQ==
X-Gm-Message-State: APjAAAX30KTLyovfl9UVdGqWj6RnRo4kpeX8jy6Voerd59zZVGFcRwnE
 O80fuNUmrfbV4yGBcOQWTdSh7+NkmjgatAkBZBlg3A==
X-Google-Smtp-Source: APXvYqzE32XYz3+At4KghXnJsLBu7odv7vp28Pnk5lZat2Vp4MBrZzHnDvUV6gAXMdReOEfzJCGFp0QdxKmkLf29OSM=
X-Received: by 2002:a5d:9dd9:: with SMTP id 25mr58696986ioo.287.1578303496369; 
 Mon, 06 Jan 2020 01:38:16 -0800 (PST)
MIME-Version: 1.0
References: <20200106045833.1725-1-masahiroy@kernel.org>
In-Reply-To: <20200106045833.1725-1-masahiroy@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 6 Jan 2020 10:38:05 +0100
Message-ID: <CAMRc=MeTC8X9wDV7bowEvjPxjUNH8hXSJC79iy9s9W9Yn6Fh8A@mail.gmail.com>
Subject: Re: [PATCH] treewide: remove redundent IS_ERR() before error code
 check
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_013817_752808_5654F132 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>, alsa-devel@alsa-project.org,
 Julia Lawall <julia.lawall@lip6.fr>, linux-acpi@vger.kernel.org,
 netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>,
 linux-crypto@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-i2c <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

cG9uLiwgNiBzdHkgMjAyMCBvIDA2OjAwIE1hc2FoaXJvIFlhbWFkYSA8bWFzYWhpcm95QGtlcm5l
bC5vcmc+IG5hcGlzYcWCKGEpOgo+Cj4gJ1BUUl9FUlIocCkgPT0gLUUqJyBpcyBhIHN0cm9uZ2Vy
IGNvbmRpdGlvbiB0aGFuIElTX0VSUihwKS4KPiBIZW5jZSwgSVNfRVJSKHApIGlzIHVubmVlZGVk
Lgo+Cj4gVGhlIHNlbWFudGljIHBhdGNoIHRoYXQgZ2VuZXJhdGVzIHRoaXMgY29tbWl0IGlzIGFz
IGZvbGxvd3M6Cj4KPiAvLyA8c21wbD4KPiBAQAo+IGV4cHJlc3Npb24gcHRyOwo+IGNvbnN0YW50
IGVycm9yX2NvZGU7Cj4gQEAKPiAtSVNfRVJSKHB0cikgJiYgKFBUUl9FUlIocHRyKSA9PSAtIGVy
cm9yX2NvZGUpCj4gK1BUUl9FUlIocHRyKSA9PSAtIGVycm9yX2NvZGUKPiAvLyA8L3NtcGw+Cj4K
PiBTaWduZWQtb2ZmLWJ5OiBNYXNhaGlybyBZYW1hZGEgPG1hc2FoaXJveUBrZXJuZWwub3JnPgoK
Rm9yIEdQSU86CgpBY2tlZC1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tpQGJh
eWxpYnJlLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
