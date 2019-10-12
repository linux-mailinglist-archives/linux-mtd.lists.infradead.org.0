Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E926CD4E86
	for <lists+linux-mtd@lfdr.de>; Sat, 12 Oct 2019 11:18:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0SVisUqrb+4p6HmP2lLbsrj5bYOSe/G11WmSgDzBGc=; b=C9idnM+abAjEZX
	GG98/FfmnIJbc7wfAf8INrBXR/sh5wynIu8D6ioSidrDXc/MpDoibGxoDICiUiiNNIJY6pei4th2/
	Cy3DP3RNo/jKleigIQehUbiPRkqg+MHpw3b2k8ZkTaae51HPNJhTdCiCW5QdXngEbkFqMXHayYW5r
	ccv6O/C/0kbeiJyG8alyQfzLzFbID48xijbfrxySsUwpdScgbWSwASujHYLV+arinFFUOIeWHEyWQ
	27rodxuGyeZ8h+0bO1dblzqqJFTSOtDnfSibG/veLmNk+tXAoPNBRQEcIjXMtDDC+xUbINqvIoV4l
	jVwTsPMycgeAHVzYShxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJDXU-00071k-6H; Sat, 12 Oct 2019 09:18:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJDWw-0006r6-L7; Sat, 12 Oct 2019 09:17:43 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id EEAEE2912E9;
 Sat, 12 Oct 2019 10:17:40 +0100 (BST)
Date: Sat, 12 Oct 2019 11:17:38 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 06/40] mtd: rawnand: Use the new ECC engine type
 enumeration
Message-ID: <20191012111738.33be4fd5@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190919193141.7865-7-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-7-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_021742_832713_444D5CA2 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 21:31:06 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index 23feab162bc2..08964ce8b65f 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -381,7 +381,7 @@ static const struct nand_ecc_caps __name = {			\
>   * @write_oob:	function to write chip OOB data
>   */
>  struct nand_ecc_ctrl {
> -	enum nand_ecc_mode mode;
> +	enum nand_ecc_engine_type mode;

This one in particular (the driver ones are not so important I guess).

s/mode/engine_type/ ?

>  	enum nand_ecc_engine_oob_placement placement;
>  	enum nand_ecc_algo algo;
>  	int steps;

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
