Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7831839B1
	for <lists+linux-mtd@lfdr.de>; Thu, 12 Mar 2020 20:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngUrc+/rnYCtC3TC/OA15FK3zMEE2UXN8j2d+vkwUkE=; b=tPF/88uSs7gkfr
	2qrPa/fdo8/2YMpx6EHHNQ2dy40b3U96vJMdhMbWyY6ipdDqmO7C6p6R6K2j9DRxB8VShiSEvuY8I
	K8eRVVD4I+dJN6cvd5hg+Rfghh8ElcX3CxWUJ4Y3lHgKYYamM8+5jFh+KtULD92UlO9ZJE0LeoEUW
	3GfquQSqokOAzvgHWbN7iGWrLuT43ic7CcPZaV5yB38EYIU7SkpNQZjSNDPUhUEo3g5yPUuY4KNiv
	vpmevd8RZmCIDfDv9KEc4EveHKtpt6MguRIOqy+9ASb9fc2oTzzYWMbX0k74h9cOKQ1fB7t/asi+o
	0DZjEaf61jXGQxaFBj1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCTgn-00040t-48; Thu, 12 Mar 2020 19:40:17 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCTgd-0002vZ-4i
 for linux-mtd@lists.infradead.org; Thu, 12 Mar 2020 19:40:08 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 2D77B20005;
 Thu, 12 Mar 2020 19:39:50 +0000 (UTC)
Date: Thu, 12 Mar 2020 20:39:48 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
Subject: Re: [EXT] [PATCH v7 0/6] Add new series Micron SPI NAND devices
Message-ID: <20200312203948.6c7f31ee@xps13>
In-Reply-To: <MN2PR08MB63972889C83C279694ACDF85B8FD0@MN2PR08MB6397.namprd08.prod.outlook.com>
References: <20200311175735.2007-1-sshivamurthy@micron.com>
 <MN2PR08MB63972889C83C279694ACDF85B8FD0@MN2PR08MB6397.namprd08.prod.outlook.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_124007_324530_2BF72DE8 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "shiva.linuxworks@gmail.com" <shiva.linuxworks@gmail.com>,
 Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2hpdmFtdXJ0aHksCgoiU2hpdmFtdXJ0aHkgU2hhc3RyaSAoc3NoaXZhbXVydGh5KSIgPHNz
aGl2YW11cnRoeUBtaWNyb24uY29tPiB3cm90ZSBvbgpUaHUsIDEyIE1hciAyMDIwIDE5OjE2OjUy
ICswMDAwOgoKPiBIaSBNaXF1ZWwsCj4gCj4gSSBoYXZlIHJlYmFzZWQgdGhlc2UgcGF0Y2hlcyB0
byBuYW5kL25leHQgYXMgeW91IHN1Z2dlc3RlZC4KPiBQbGVhc2UgbGV0IG1lIGtub3csIGlmIHRo
ZXJlIGlzIHN0aWxsIGEgcHJvYmxlbS4KCkV2ZXJ5dGhpbmcgYXBwbGllcyBzbW9vdGhseSwgaXQn
cyBnb29kLCB0aGFua3MhCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
