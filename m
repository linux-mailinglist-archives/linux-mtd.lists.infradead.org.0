Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BBE1907FE
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Mar 2020 09:49:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=21yDur/i7hQE1eY6Ml7kiDQ660fIO0QTH+wY8RH0Z9k=; b=ock87hO6qAlMBiD6XKkFOS1ig
	R3p8CpeSXePUGlA3mSIdliekM+Y8NoZSwr/C4gWYKa+BtVZMG89+R1WnA/NScgSJN32BDvELOs7lA
	01E4UMdH+Oq7prOuWcG87TEO2ezwWqx+3bhQmrHIrtp86F+t/J6cv/JJA8Hi4MhjMQh1CQ2wiDe9y
	XfESmeaZfA522orbJmJ/eOrreMG55boKNnLFCXRVycrQJLvZ+qRdDUDux/FAx8PKeRlP+Vw2mmvOS
	pC1wR4yqiGVFScIfNYUYxe+NaCoT0KL9PW2ozUNsBaVn3B29TQdZUh1GdCnDQylfs2+ZKZfQnd1fk
	2IhuWUkRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGfFR-0005Pf-DX; Tue, 24 Mar 2020 08:49:21 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGfFH-0005P7-W1
 for linux-mtd@lists.infradead.org; Tue, 24 Mar 2020 08:49:14 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id AB7DD23E21;
 Tue, 24 Mar 2020 09:49:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1585039749;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aDhvL9IjqDOlb1I4Fim7t6V0NkJNCKvJ/FcXq93fqbk=;
 b=iy+cBsoybPYenfxd/B1q58B1xVOShsxB43zAzES4YQUMlbUo3XbJ8WlZZoBiwRSZXVznCE
 pVzL1EFN8/TE5hyhZPSRX4vNyenrhyZcEk/uhKb8PbxyRZodHayNYHzWFi7q2FKm6l0PIc
 wvmQzNLbwVgEga+9asEfmsEtjhcAHK4=
MIME-Version: 1.0
Date: Tue, 24 Mar 2020 09:49:08 +0100
From: Michael Walle <michael@walle.cc>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH v4 0/4] Add SR 4bit block protection support
In-Reply-To: <20200324060123.1533917-1-tudor.ambarus@microchip.com>
References: <20200324060123.1533917-1-tudor.ambarus@microchip.com>
Message-ID: <03162f74ce11c001f5fb391d8a90f7ff@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: /
X-Spam-Status: No, score=-0.10
X-Rspamd-Server: web
X-Spam-Score: -0.10
X-Rspamd-Queue-Id: AB7DD23E21
X-Spamd-Result: default: False [-0.10 / 15.00]; FROM_HAS_DN(0.00)[];
 RCPT_COUNT_THREE(0.00)[4]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; TO_DN_NONE(0.00)[];
 DKIM_SIGNED(0.00)[]; NEURAL_HAM(-0.00)[-0.756];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_MATCH_FROM(0.00)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_014912_182121_47AB99FA 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd@lists.infradead.org, vigneshr@ti.com, js07.lee@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Am 2020-03-24 07:01, schrieb Tudor.Ambarus@microchip.com:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Hi,
> 
> In v4, I dropped patch 1/5 and stripped the changelog that I had
> above my S-o-b tag in each patch.

looks, good, will you merge this into next today?

-michael

> 
> Jungseung Lee (3):
>   mtd: spi-nor: Add new formula for SR block protection handling
>   mtd: spi-nor: Add SR 4bit block protection support
>   mtd: spi-nor: Enable locking for n25q512ax3/n25q512a
> 
> Tudor Ambarus (1):
>   mtd: spi-nor: Set all BP bits to one when lock_len == mtd->size
> 
>  drivers/mtd/spi-nor/core.c      | 144 +++++++++++++++++++++-----------
>  drivers/mtd/spi-nor/core.h      |  10 +++
>  drivers/mtd/spi-nor/micron-st.c |   8 +-
>  include/linux/mtd/spi-nor.h     |   2 +
>  4 files changed, 113 insertions(+), 51 deletions(-)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
