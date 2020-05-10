Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E1D1CC76D
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 09:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPC3KlN0HOjEKr7TqxzWhTFniWTRpLu1BBV09Gz+jpQ=; b=oGL3kqwiTy+oOR
	unbczZNyhNh420xYBoP2eDPzTAOYbrTfRQsvMvOzrpF2UTDH757U9VG+Gc4Qry/h5kLMR3HKcqU12
	r7uHPsN+JlthUu/iqNLhMQXfZRUkzsXnCUlaLatMfeIuI7tzibL0yxmuhB7tKJmp1PxZ9F+YIkwO5
	+kLpQz0A6wRdoLQfcbjHvMW8L5gde+DqtjI3LBcVDzvQQ0lh19XX+hJTvQlDZKfcwIf2rL14xUjaB
	kTihRSGcEkNLSrRnNJWK05h1gx1Hoxq/XLJZ318JfYhSxixkDSbo4Ix6ON4rlsdobYKy5IW7UvrW9
	NC7pkt2eGUqXulJqJwEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXfzh-0001SH-C7; Sun, 10 May 2020 07:03:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXfzb-0001Rl-05
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 07:03:20 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 89A162A013A;
 Sun, 10 May 2020 08:03:17 +0100 (BST)
Date: Sun, 10 May 2020 09:03:14 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 7/8] mtd: rawnand: arasan: Add new Arasan NAND
 controller
Message-ID: <20200510090314.10426b6e@collabora.com>
In-Reply-To: <20200508171339.8052-8-miquel.raynal@bootlin.com>
References: <20200508171339.8052-1-miquel.raynal@bootlin.com>
 <20200508171339.8052-8-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_000319_172434_96ED5A38 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri,  8 May 2020 19:13:38 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> +static int anfc_exec_op(struct nand_chip *chip,
> +			const struct nand_operation *op,
> +			bool check_only)
> +{
> +	int ret;
> +
> +	if (check_only)
> +		return nand_op_parser_exec_op(chip, &anfc_op_parser, op,
> +					      check_only);

You should also check the DATA_IN/OUT size here ^.

> +
> +	ret = anfc_select_target(chip, op->cs);
> +	if (ret)
> +		return ret;
> +
> +	return nand_op_parser_exec_op(chip, &anfc_op_parser, op, check_only);
> +}

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
