Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2A2F6133
	for <lists+linux-mtd@lfdr.de>; Sat,  9 Nov 2019 20:36:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eLZl82HoasT1sYIkY4o31Po47D7CWgF1CywqGS0uYQY=; b=UtXVucSuyKA2pn
	Ro7pOHvpW9kmMr9+odb96eld7VwlHwNR6+bD1mV1RRHXZddC5cw6X6oIQbyVfJihkWOuHnzzgZJl/
	GE8rUn0MfwH+XdYrmYOXHBpfbPnC1R7D6fkbx2Y0AlCazRqIH/N7EAAvP4uupn8nERj/8eI+DUgkG
	jGLSVBV13e2oSSCcmw46j7RSVNQ43njhgBDMFJ8FrAsknOiWjJDkwOtSOHbqy2OQc5dK+BfUTAl45
	42lfHnDTBg4d9z6juTQZFnY2aJ8+/xKfz02bhdSAraUoaQlaEq69UtBz4GBTtZqH+aKdd7U/H2klV
	4MSm3WMKWOcpPzjh+q4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTWWn-0002oE-J8; Sat, 09 Nov 2019 19:36:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTWWh-0002ne-Dp
 for linux-mtd@lists.infradead.org; Sat, 09 Nov 2019 19:36:05 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id ACF9728533C;
 Sat,  9 Nov 2019 19:36:01 +0000 (GMT)
Date: Sat, 9 Nov 2019 20:35:58 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: Re: [PATCH v2] mtd: spi-nor: use spi-mem dirmap API
Message-ID: <20191109203558.4a03c398@collabora.com>
In-Reply-To: <ef173d36-c918-4636-ace6-f6ba82dac672@cogentembedded.com>
References: <610761cf-5a19-c182-07d8-8d118ca20035@cogentembedded.com>
 <ef173d36-c918-4636-ace6-f6ba82dac672@cogentembedded.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_113603_729032_F18C0A94 
X-CRM114-Status: GOOD (  16.55  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 7 Nov 2019 23:49:12 +0300
Sergei Shtylyov <sergei.shtylyov@cogentembedded.com> wrote:

> Make use of the spi-mem direct mapping API to let advanced controllers
> optimize read/write operations when they support direct mapping.
> 
> Based on the original patch by Boris Brezillon <boris.brezillon@bootlin.com>.
> 
> Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
> 
> ---
> Changes in version 2:
> - moved the spi_mem_dirmap_{read|write}() calls from spi_nor_{read|write}() to
>   spi_nor_spimem_{read|write}_data().
> 
>  drivers/mtd/spi-nor/spi-nor.c |  125 +++++++++++++++++++++++++++++++++---------
>  include/linux/mtd/spi-nor.h   |    5 +
>  2 files changed, 104 insertions(+), 26 deletions(-)
> 
> Index: linux/drivers/mtd/spi-nor/spi-nor.c
> ===================================================================
> --- linux.orig/drivers/mtd/spi-nor/spi-nor.c
> +++ linux/drivers/mtd/spi-nor/spi-nor.c
> @@ -305,22 +305,28 @@ static ssize_t spi_nor_spimem_xfer_data(
>  static ssize_t spi_nor_spimem_read_data(struct spi_nor *nor, loff_t from,
>  					size_t len, u8 *buf)
>  {
> -	struct spi_mem_op op =
> -		SPI_MEM_OP(SPI_MEM_OP_CMD(nor->read_opcode, 1),
> -			   SPI_MEM_OP_ADDR(nor->addr_width, from, 1),
> -			   SPI_MEM_OP_DUMMY(nor->read_dummy, 1),
> -			   SPI_MEM_OP_DATA_IN(len, buf, 1));
> -
> -	/* get transfer protocols. */
> -	op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->read_proto);
> -	op.addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->read_proto);
> -	op.dummy.buswidth = op.addr.buswidth;
> -	op.data.buswidth = spi_nor_get_protocol_data_nbits(nor->read_proto);
> +	if (!nor->dirmap.rdesc) {
> +		struct spi_mem_op op =
> +			SPI_MEM_OP(SPI_MEM_OP_CMD(nor->read_opcode, 1),
> +				   SPI_MEM_OP_ADDR(nor->addr_width, from, 1),
> +				   SPI_MEM_OP_DUMMY(nor->read_dummy, 1),
> +				   SPI_MEM_OP_DATA_IN(len, buf, 1));
> +
> +		/* get transfer protocols. */
> +		op.cmd.buswidth =
> +			spi_nor_get_protocol_inst_nbits(nor->read_proto);
> +		op.addr.buswidth =
> +			spi_nor_get_protocol_addr_nbits(nor->read_proto);
> +		op.dummy.buswidth = op.addr.buswidth;
> +		op.data.buswidth =
> +			spi_nor_get_protocol_data_nbits(nor->read_proto);
>  
> -	/* convert the dummy cycles to the number of bytes */
> -	op.dummy.nbytes = (nor->read_dummy * op.dummy.buswidth) / 8;
> +		/* convert the dummy cycles to the number of bytes */
> +		op.dummy.nbytes = (nor->read_dummy * op.dummy.buswidth) / 8;
>  
> -	return spi_nor_spimem_xfer_data(nor, &op);
> +		return spi_nor_spimem_xfer_data(nor, &op);
> +	}
> +	return spi_mem_dirmap_read(nor->dirmap.rdesc, from, len, buf);

Can we put the spi_mem_dirmap_read() in the if() branch instead of
having an extra level of indentation for the most complex block.

	if (nor->dirmap.rdesc)
		return spi_mem_dirmap_read(nor->dirmap.rdesc, from,
					   len, buf);

	...

(same comment applies to the write path BTW).

With this addressed, you can add

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Thanks,

Boris


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
