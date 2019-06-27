Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883C358785
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Jun 2019 18:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwUPXL8tcAQDqg13E2dliUtwLIoCCmqX2tjCMQaTtHU=; b=Un3Apa372KgwiT
	3/k/pedE56eTRS1p9PbYlYHHRnxNHZ3pK9XpTzGKTJuv7VwIbusv02SvsvlhhaaPYMTeIKXZBIThJ
	dPeQ22EwhjD12Kcd30n7G8oOkiOuo5uiVO7bouezd62m1OMYP1LUPgRrz3XWk4s2W+POwnnqhmwgH
	+gi0qvHJ3YwHBqvjzNNWPDs9KTIhIG2zeJXnwoAsvPfaRIv0wCGJiGn0gd8rpcuXp0oI61P+ItgZq
	1wO+z0pChZ/292HABvXKEF3pmfIIqmqrQr9Kv/Kj68KQTnaCx8AWlQ96/Q/LgZDjgKn6tgChZH0mD
	pCwGBvba6zx4lToVUihQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXWv-0006Ld-JS; Thu, 27 Jun 2019 16:45:49 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXWj-0006Kk-Dl
 for linux-mtd@lists.infradead.org; Thu, 27 Jun 2019 16:45:38 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id BE169C0004;
 Thu, 27 Jun 2019 16:45:29 +0000 (UTC)
Date: Thu, 27 Jun 2019 18:45:26 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] mtd: onenand_base: Mark expected switch fall-through
Message-ID: <20190627184526.0b09d169@xps13>
In-Reply-To: <bc5e1a62-9034-f668-c694-cc6d7e69c114@embeddedor.com>
References: <20190604141737.GA1064@embeddedor> <201906040745.B6AE4C6@keescook>
 <bc5e1a62-9034-f668-c694-cc6d7e69c114@embeddedor.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_094537_625378_52971C7D 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kees Cook <keescook@chromium.org>, Richard Weinberger <richard@nod.at>,
 Jonathan Bakker <xc-racer2@live.ca>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 linux-mtd@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgR3VzdGF2bywKCiJHdXN0YXZvIEEuIFIuIFNpbHZhIiA8Z3VzdGF2b0BlbWJlZGRlZG9yLmNv
bT4gd3JvdGUgb24gV2VkLCAyNiBKdW4KMjAxOSAxMzoxNjoyMiAtMDUwMDoKCj4gSGkgYWxsLAo+
IAo+IEZyaWVuZGx5IHBpbmc6Cj4gCj4gV2hvIGNhbiB0YWtlIHRoaXM/CgpJIGFtIHF1ZXVpbmcg
aXQgcmlnaHQgbm93LCBwbGVhc2UgYmUgcGF0aWVudC4KCkFsc28gZm9yIG5leHQgdGltZSwgdGhl
IHByZWZpeCBzaG91bGQgaGF2ZSBiZWVuICJtdGQ6IG9uZW5hbmQ6IiBidXQKdGhhdCdzIG9rLCBJ
IGVkaXRlZCB0aGUgdGl0bGUuCgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbXRkLwo=
