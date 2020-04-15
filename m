Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EE21A928B
	for <lists+linux-mtd@lfdr.de>; Wed, 15 Apr 2020 07:35:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uc3xgbk8AYecrsJks74vk6iQeNkLf9ycD+732jJL9hY=; b=LSM/UwOsgwc+QT
	qEwBZPTuduiv/LzqSHEHZcRJ5D7R20MbAguR3QZ9JpvR9sOcMVcM3e1zJF+vGsL0BAwFE9QwHAkCS
	PQNl1FeLkCjITrF6yk7ibctulAfAicci9seaAqGL18bfx9VVMcio+A5ZzYh/3TCIZEAcl7fOndNwD
	emGbF5MQXbEatASf4ROYDEq4JJxA/ru/F93fLuLNOCJ+4ytKKlHwuWOUWp/V6zaXelHKzECt882Pv
	XT5PiprZ0lr4ywHiMybpiJbkB/Mp/7jc0AiRGHcasdVUU9IQ5CLLhBWR6gll07QGXWUrrLBQ5O81D
	0vdVe764Lx+FaRyHnszg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOai2-0006g2-M1; Wed, 15 Apr 2020 05:35:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOahv-0006fP-H6
 for linux-mtd@lists.infradead.org; Wed, 15 Apr 2020 05:35:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jOahs-0005TP-KT; Wed, 15 Apr 2020 07:35:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jOahr-0006Dm-6Z; Wed, 15 Apr 2020 07:35:27 +0200
Date: Wed, 15 Apr 2020 07:35:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH v2] mtd: spi-nor: Add support for cy15x104q
Message-ID: <20200415053527.GQ27288@pengutronix.de>
References: <20200305120242.1391-1-s.hauer@pengutronix.de>
 <20200309084033.8752-1-s.hauer@pengutronix.de>
 <20200414120945.GN27288@pengutronix.de>
 <11398746.sNIsW2IRu5@192.168.0.120>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <11398746.sNIsW2IRu5@192.168.0.120>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:32:38 up 55 days, 13:03, 71 users,  load average: 0.95, 0.50, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_223531_568443_17BC5409 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Tudor,

On Tue, Apr 14, 2020 at 04:41:42PM +0000, Tudor.Ambarus@microchip.com wrote:
> On Tuesday, April 14, 2020 3:09:45 PM EEST Sascha Hauer wrote:
> > Any feedback to this one?
> 
> Hi, Sascha,
> 
> I'm a bit busy but I'll try to allocate time to review patches sometime this 
> week. BTW, we moved the manufacturer specific code out of the core, we now 
> have a dedicated file for each manufacturer (this includes flash_info 
> entries), check the spi-nor/next branch.

I see. It's in master now btw.

> I know that it's not your fault that
> your patch was left behind, so I volunteer to respin your patch if you don't
> feel like doing it.

Don't worry, I can respin it. You want to have a cypress.c file, even
though it has only a single entry, right?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
