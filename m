Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 168D81BF80C
	for <lists+linux-mtd@lfdr.de>; Thu, 30 Apr 2020 14:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1W1uovgew5ofcVKaBnbdzokfLCzl7nvVGZmQWiHsAVk=; b=sGpa/jcohhPs0F
	Vf8lmM8w5DfJ7/uBdfBlYXgnq00nEv7IDKAEZaO7dCvtU7HHMgFcDBV/Bl3VBk7TBmJYMdgpsmt7+
	0lXfuJb8NVO5EL7Kh9V6NLkl1nG1ZZVmKn4dYLZa0LMVkhDICc0w7Kk2tvqKNyZH3LS6uw7RAkzAB
	jmOQJewWQa5gcNFT3HJNXc96oR2SeWNn0m6bTxfX/GCEF5qKxeoT6I1OcqQ/N0NZXGCIJ5b8Rjk3b
	SBjVG7ioNSmdQBQ98fp6zpJtqFbHiAnSFLX2G7pg6b6AR/v3K5XE+4ZtlCYppT72qGeYJKK9zydG/
	CTDfdU7fjgFSltdoGYyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU88u-000500-IN; Thu, 30 Apr 2020 12:18:16 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU88Q-0004p1-NY; Thu, 30 Apr 2020 12:17:52 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03UCHfEm094635;
 Thu, 30 Apr 2020 07:17:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588249061;
 bh=2760Yo1AKc3mP3fvGFHPMjiwBzw8xIguNCDLvnnh1ms=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=Fba1VIoUSzAO9O42yqqZqnx8s6p68o3IbJPWB7DQ7+oM1uWdB4owDcI1J5tZiyXBE
 XdmsYQZF38oDYcRdVkv5335936BRJ+D0wl7UsWhzIzVZTbDPi21mxjhn2WxH/zec39
 GH6wnA1J8G80tKugvOqd7CNHci5UV5GfdWMtzVgw=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03UCHeMZ126557
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 30 Apr 2020 07:17:40 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 30
 Apr 2020 07:17:40 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 30 Apr 2020 07:17:40 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03UCHdgn101368;
 Thu, 30 Apr 2020 07:17:40 -0500
Date: Thu, 30 Apr 2020 17:47:39 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 02/16] spi: atmel-quadspi: reject DTR ops
Message-ID: <20200430121737.37dghomlluzqcxxi@ti.com>
References: <20200424184410.8578-1-p.yadav@ti.com>
 <20200424184410.8578-3-p.yadav@ti.com>
 <20200430113243.GB4633@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430113243.GB4633@sirena.org.uk>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_051750_832679_2D320DB5 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 30/04/20 12:32PM, Mark Brown wrote:
> On Sat, Apr 25, 2020 at 12:13:56AM +0530, Pratyush Yadav wrote:
> 
> > Double Transfer Rate (DTR) ops are added in spi-mem. But this controller
> > doesn't support DTR transactions. Since we don't use the default
> > supports_op(), which rejects all DTR ops, do that explicitly in our
> > supports_op().
> 
> It's not ideal that we'd need to explicitly add checks in individual
> controller drivers - are we sure that all the others do?

Most other controllers either don't specify a supports_op function at 
all, in which case spi_mem_default_supports_op() is called, or do their 
custom logic and then call spi_mem_default_supports_op(). In both those 
cases, DTR ops would get rejected because of the call to 
spi_mem_default_supports_op(). So they do not need to add the check 
explicitly there.

The two exceptions are atmel-quadspi and spi-mtk-nor (which I missed 
updating). They don't call the default supports_op, so they need to be 
updated to explicitly to reject DTR ops.

Earlier versions of this series discovered the DTR capability from 
devicetree. In that case, no change would be required at all, but review 
comments suggested I drop those changes. Instead, the controllers should 
accept/reject DTR ops in their supports_op hooks.

-- 
Regards,
Pratyush Yadav
Texas Instruments India

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
