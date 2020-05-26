Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E911E3147
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 23:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Nh+tnTwG/L4Kumoa6H0ay8UtF6g/0EEG1MXDsJcLjM=; b=MCIfm+xONsM+9i
	+HvsctSjQX3sZtnUQ0ygaNtKed/El2z+/B9nsTDh7AUxScn/+njtnc2j0axmmABk24nUKSkfeLAPo
	3iB+AEe9gbL/WaFzjV1a/hc/xhX7/6Pnqq8fVY82RJPuCA7cgZtFLcri/ldVv5o5HFlPt+ERsY8wL
	Tm3gMEI8czn50QkwKcLDW0IgZBAzNHDI823vZqXIhR6xG9EI8IK0C9yqNUlMhp8CDIJdqn/FY8tnF
	il4gw/zMvKIBtey2qG1Od1zER0MNzILNEXQMU7vguNZqxRZD2P8FSpM122Zamr4kzmbSM0UfDRbUx
	47w2HlwFsacmfNi6yGdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdhFR-0005Ue-Bk; Tue, 26 May 2020 21:36:33 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdhFI-0005UI-Uv
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 21:36:26 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A765D2A35E4;
 Tue, 26 May 2020 22:36:23 +0100 (BST)
Date: Tue, 26 May 2020 23:36:20 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v5 20/28] mtd: rawnand: Hide the chip->data_interface
 indirection
Message-ID: <20200526233620.44914f1f@collabora.com>
In-Reply-To: <20200526191725.7591-21-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
 <20200526191725.7591-21-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_143625_124134_7E02E125 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Rickard Andersson <rickaran@axis.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 26 May 2020 21:17:17 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> As a preparation for allocating the data interface structure
> dynamically (and rename it), let's avoid calling it directly.
> 
> Instead, we operate a rename on an existing helper to reuse that name
> for another helper:
> * s/nand_get_sdr_timings/nand_extract_sdr_timings/
>   -> this helper just extracts timings from a given data interface

Hm, I'm not entirely happy with that name. In my mind extract means
that you had to do some transformation to get the data, which is not
the case here. How about nand_data_interface_get_sdr_timings()? 

> * nand_get_sdr_timings()
>   -> this helper retrieves the in use timings from a nand_chip structure

Do we really need that one? Can we do that in 2 steps instead?

conf = nand_get_data_interface_config(chip);
sdr = nand_data_interface_get_sdr_timings(conf);
  
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
