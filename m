Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C795524B5A
	for <lists+linux-mtd@lfdr.de>; Tue, 21 May 2019 11:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N66nCvXT/PaKfhJ2wo0DN+TcyeINF3Q4kI/MHUKZ02Q=; b=iQAEcg4Rp+VJLe
	soPp4pGLA3TYHBhnaap0D4Eny+k4rmWKS4ueDVawFcT7sY0SJ9UwA2cbBvlW46j28PgXQxkw+HsWF
	JOzZzlP4gVtNtVIqwWi9UKiV42rptY7auF+ORarlQMjhpoxx9rD12e3/H00Q0RVVLDPz4RPQJhJic
	L/EEz1B1DPQv8dvi5V/9/79wo34Xn0yhEzbr1nYwvh3VZa5+58KzVqRS6t766QWPJSRC82LzabmvR
	8Hel720zu3cuPtEi0NlYppzTXfAOc7mwcCDrXRHRkUMppkwqxCPAd0wD6nOn73/8FG/c4eCaYXraM
	odCrQRmh8VIDH6jKsamQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0xU-0001RC-NJ; Tue, 21 May 2019 09:21:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0xJ-0001QO-VT
 for linux-mtd@lists.infradead.org; Tue, 21 May 2019 09:21:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hT0xH-00004w-P8; Tue, 21 May 2019 11:21:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hT0xH-0002Ya-4r; Tue, 21 May 2019 11:21:07 +0200
Date: Tue, 21 May 2019 11:21:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: nvmem creates multiple devices with the same name
Message-ID: <20190521092107.zpdkkhaanzruhqui@pengutronix.de>
References: <20190521085641.i6g5aijwa5zbolah@pengutronix.de>
 <a9ccac90-7b2f-41da-2ca9-ca3bba52781b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a9ccac90-7b2f-41da-2ca9-ca3bba52781b@linaro.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:11:48 up 3 days, 15:30, 49 users, load average: 0.10, 0.18, 0.16
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_022110_225146_D9449DDF 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 10:02:32AM +0100, Srinivas Kandagatla wrote:
> 
> 
> On 21/05/2019 09:56, Sascha Hauer wrote:
> > . Are there any suggestions how to register the nvmem devices
> > with a different name?
> 
> struct nvmem_config provides id field for this purpose, this will be used by
> nvmem to set the device name space along with name field.

There's no way for a caller to know a unique name/id combination.
The mtd layer could initialize the id field with the mtd number, but
that would still not guarantee that another caller, like an EEPROM
driver or such, doesn't use the same name/id combination.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
