Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687CAEAD7B
	for <lists+linux-mtd@lfdr.de>; Thu, 31 Oct 2019 11:34:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwhVVdECGLC9GzfcCPA0wxmFlOL/J/MsqgKM2NJfwgA=; b=GY0qYRjiqGBN//
	6XGk/4VR+pZsNIwe+DZ3b2ZwBx4fJMMqVjOaQyCmPUYPuSDT2fYkO66HL9VzCWkFYKQrH/78Ktlrb
	dwz1cMW4y+9Mitjee9C5Q09IWOLV1GGxKPnlw7BZUOQ3plmxim50e+3GZVieb7It3Dq3PG/4O4hPB
	qSACT/vqCAyR5zO/ykdAjiruUgeP4EuqL6xygGgESffQP39I8QGos539eXT0UawVvcpbb1vmsDmDX
	jXGR/cvrlnquikLMFRrPMFtvY/vuTJA0xQBJ/2zzqV+FbLVnmuSfYNFGdg1lD9eXU6I9GKpmufxoT
	fAdynNCo6Zy2KgAOz1qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7n5-0007Uk-QB; Thu, 31 Oct 2019 10:34:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7mj-0007D1-Em
 for linux-mtd@lists.infradead.org; Thu, 31 Oct 2019 10:34:36 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BEEFC28DE61;
 Thu, 31 Oct 2019 10:34:29 +0000 (GMT)
Date: Thu, 31 Oct 2019 11:34:26 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v3 01/32] mtd: spi-nor: Prepend spi_nor_ to all Reg Ops
 methods
Message-ID: <20191031113426.69bb1468@collabora.com>
In-Reply-To: <20191029111615.3706-2-tudor.ambarus@microchip.com>
References: <20191029111615.3706-1-tudor.ambarus@microchip.com>
 <20191029111615.3706-2-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_033433_767751_4A80CAA7 
X-CRM114-Status: GOOD (  23.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 29 Oct 2019 11:16:49 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> All the core functions should begin with "spi_nor_".
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/spi-nor/spi-nor.c | 110 +++++++++++++++++++++---------------------
>  1 file changed, 56 insertions(+), 54 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index a6f9f833c862..aca8245fb6c4 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -393,7 +393,7 @@ static ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
>   * Return the status register value.
>   * Returns negative if error occurred.
>   */
> -static int read_sr(struct spi_nor *nor)
> +static int spi_nor_read_sr(struct spi_nor *nor)
>  {
>  	int ret;
>  
> @@ -423,7 +423,7 @@ static int read_sr(struct spi_nor *nor)
>   * Return the status register value.
>   * Returns negative if error occurred.
>   */
> -static int read_fsr(struct spi_nor *nor)
> +static int spi_nor_read_fsr(struct spi_nor *nor)
>  {
>  	int ret;
>  
> @@ -453,7 +453,7 @@ static int read_fsr(struct spi_nor *nor)
>   * location. Return the configuration register value.
>   * Returns negative if error occurred.
>   */
> -static int read_cr(struct spi_nor *nor)
> +static int spi_nor_read_cr(struct spi_nor *nor)
>  {
>  	int ret;
>  
> @@ -482,7 +482,7 @@ static int read_cr(struct spi_nor *nor)
>   * Write status register 1 byte
>   * Returns negative if error occurred.
>   */
> -static int write_sr(struct spi_nor *nor, u8 val)
> +static int spi_nor_write_sr(struct spi_nor *nor, u8 val)
>  {
>  	nor->bouncebuf[0] = val;
>  	if (nor->spimem) {
> @@ -503,7 +503,7 @@ static int write_sr(struct spi_nor *nor, u8 val)
>   * Set write enable latch with Write Enable command.
>   * Returns negative if error occurred.
>   */
> -static int write_enable(struct spi_nor *nor)
> +static int spi_nor_write_enable(struct spi_nor *nor)
>  {
>  	if (nor->spimem) {
>  		struct spi_mem_op op =
> @@ -521,7 +521,7 @@ static int write_enable(struct spi_nor *nor)
>  /*
>   * Send write disable instruction to the chip.
>   */
> -static int write_disable(struct spi_nor *nor)
> +static int spi_nor_write_disable(struct spi_nor *nor)
>  {
>  	if (nor->spimem) {
>  		struct spi_mem_op op =
> @@ -644,9 +644,9 @@ static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
>  {
>  	int ret;
>  
> -	write_enable(nor);
> +	spi_nor_write_enable(nor);
>  	ret = macronix_set_4byte(nor, enable);
> -	write_disable(nor);
> +	spi_nor_write_disable(nor);
>  
>  	return ret;
>  }
> @@ -700,9 +700,9 @@ static int winbond_set_4byte(struct spi_nor *nor, bool enable)
>  	 * Register to be set to 1, so all 3-byte-address reads come from the
>  	 * second 16M. We must clear the register to enable normal behavior.
>  	 */
> -	write_enable(nor);
> +	spi_nor_write_enable(nor);
>  	ret = spi_nor_write_ear(nor, 0);
> -	write_disable(nor);
> +	spi_nor_write_disable(nor);
>  
>  	return ret;
>  }
> @@ -752,7 +752,7 @@ static int spi_nor_clear_sr(struct spi_nor *nor)
>  
>  static int spi_nor_sr_ready(struct spi_nor *nor)
>  {
> -	int sr = read_sr(nor);
> +	int sr = spi_nor_read_sr(nor);
>  	if (sr < 0)
>  		return sr;
>  
> @@ -786,7 +786,7 @@ static int spi_nor_clear_fsr(struct spi_nor *nor)
>  
>  static int spi_nor_fsr_ready(struct spi_nor *nor)
>  {
> -	int fsr = read_fsr(nor);
> +	int fsr = spi_nor_read_fsr(nor);
>  	if (fsr < 0)
>  		return fsr;
>  
> @@ -864,7 +864,7 @@ static int spi_nor_wait_till_ready(struct spi_nor *nor)
>   *
>   * Returns 0 if successful, non-zero otherwise.
>   */
> -static int erase_chip(struct spi_nor *nor)
> +static int spi_nor_erase_chip(struct spi_nor *nor)
>  {
>  	dev_dbg(nor->dev, " %lldKiB\n", (long long)(nor->mtd.size >> 10));
>  
> @@ -1215,7 +1215,7 @@ static int spi_nor_erase_multi_sectors(struct spi_nor *nor, u64 addr, u32 len)
>  	list_for_each_entry_safe(cmd, next, &erase_list, list) {
>  		nor->erase_opcode = cmd->opcode;
>  		while (cmd->count) {
> -			write_enable(nor);
> +			spi_nor_write_enable(nor);
>  
>  			ret = spi_nor_erase_sector(nor, addr);
>  			if (ret)
> @@ -1270,9 +1270,9 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
>  	if (len == mtd->size && !(nor->flags & SNOR_F_NO_OP_CHIP_ERASE)) {
>  		unsigned long timeout;
>  
> -		write_enable(nor);
> +		spi_nor_write_enable(nor);
>  
> -		if (erase_chip(nor)) {
> +		if (spi_nor_erase_chip(nor)) {
>  			ret = -EIO;
>  			goto erase_err;
>  		}
> @@ -1298,7 +1298,7 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
>  	/* "sector"-at-a-time erase */
>  	} else if (spi_nor_has_uniform_erase(nor)) {
>  		while (len) {
> -			write_enable(nor);
> +			spi_nor_write_enable(nor);
>  
>  			ret = spi_nor_erase_sector(nor, addr);
>  			if (ret)
> @@ -1319,7 +1319,7 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
>  			goto erase_err;
>  	}
>  
> -	write_disable(nor);
> +	spi_nor_write_disable(nor);
>  
>  erase_err:
>  	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_ERASE);
> @@ -1328,12 +1328,13 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
>  }
>  
>  /* Write status register and ensure bits in mask match written values */
> -static int write_sr_and_check(struct spi_nor *nor, u8 status_new, u8 mask)
> +static int spi_nor_write_sr_and_check(struct spi_nor *nor, u8 status_new,
> +				      u8 mask)
>  {
>  	int ret;
>  
> -	write_enable(nor);
> -	ret = write_sr(nor, status_new);
> +	spi_nor_write_enable(nor);
> +	ret = spi_nor_write_sr(nor, status_new);
>  	if (ret)
>  		return ret;
>  
> @@ -1341,7 +1342,7 @@ static int write_sr_and_check(struct spi_nor *nor, u8 status_new, u8 mask)
>  	if (ret)
>  		return ret;
>  
> -	ret = read_sr(nor);
> +	ret = spi_nor_read_sr(nor);
>  	if (ret < 0)
>  		return ret;
>  
> @@ -1447,7 +1448,7 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
>  	bool can_be_top = true, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
>  	bool use_top;
>  
> -	status_old = read_sr(nor);
> +	status_old = spi_nor_read_sr(nor);
>  	if (status_old < 0)
>  		return status_old;
>  
> @@ -1509,7 +1510,7 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
>  	if ((status_new & mask) < (status_old & mask))
>  		return -EINVAL;
>  
> -	return write_sr_and_check(nor, status_new, mask);
> +	return spi_nor_write_sr_and_check(nor, status_new, mask);
>  }
>  
>  /*
> @@ -1527,7 +1528,7 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
>  	bool can_be_top = true, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
>  	bool use_top;
>  
> -	status_old = read_sr(nor);
> +	status_old = spi_nor_read_sr(nor);
>  	if (status_old < 0)
>  		return status_old;
>  
> @@ -1592,7 +1593,7 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
>  	if ((status_new & mask) > (status_old & mask))
>  		return -EINVAL;
>  
> -	return write_sr_and_check(nor, status_new, mask);
> +	return spi_nor_write_sr_and_check(nor, status_new, mask);
>  }
>  
>  /*
> @@ -1606,7 +1607,7 @@ static int stm_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
>  {
>  	int status;
>  
> -	status = read_sr(nor);
> +	status = spi_nor_read_sr(nor);
>  	if (status < 0)
>  		return status;
>  
> @@ -1670,11 +1671,11 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>   * second byte will be written to the configuration register.
>   * Return negative if error occurred.
>   */
> -static int write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
> +static int spi_nor_write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
>  {
>  	int ret;
>  
> -	write_enable(nor);
> +	spi_nor_write_enable(nor);
>  
>  	if (nor->spimem) {
>  		struct spi_mem_op op =
> @@ -1719,21 +1720,21 @@ static int macronix_quad_enable(struct spi_nor *nor)
>  {
>  	int ret, val;
>  
> -	val = read_sr(nor);
> +	val = spi_nor_read_sr(nor);
>  	if (val < 0)
>  		return val;
>  	if (val & SR_QUAD_EN_MX)
>  		return 0;
>  
> -	write_enable(nor);
> +	spi_nor_write_enable(nor);
>  
> -	write_sr(nor, val | SR_QUAD_EN_MX);
> +	spi_nor_write_sr(nor, val | SR_QUAD_EN_MX);
>  
>  	ret = spi_nor_wait_till_ready(nor);
>  	if (ret)
>  		return ret;
>  
> -	ret = read_sr(nor);
> +	ret = spi_nor_read_sr(nor);
>  	if (!(ret > 0 && (ret & SR_QUAD_EN_MX))) {
>  		dev_err(nor->dev, "Macronix Quad bit not set\n");
>  		return -EINVAL;
> @@ -1758,7 +1759,8 @@ static int macronix_quad_enable(struct spi_nor *nor)
>   * some very old and few memories don't support this instruction. If a pull-up
>   * resistor is present on the MISO/IO1 line, we might still be able to pass the
>   * "read back" test because the QSPI memory doesn't recognize the command,
> - * so leaves the MISO/IO1 line state unchanged, hence read_cr() returns 0xFF.
> + * so leaves the MISO/IO1 line state unchanged, hence spi_nor_read_cr() returns
> + * 0xFF.
>   *
>   * bit 1 of the Configuration Register is the QE bit for Spansion like QSPI
>   * memories.
> @@ -1772,12 +1774,12 @@ static int spansion_quad_enable(struct spi_nor *nor)
>  
>  	sr_cr[0] = 0;
>  	sr_cr[1] = CR_QUAD_EN_SPAN;
> -	ret = write_sr_cr(nor, sr_cr);
> +	ret = spi_nor_write_sr_cr(nor, sr_cr);
>  	if (ret)
>  		return ret;
>  
>  	/* read back and check it */
> -	ret = read_cr(nor);
> +	ret = spi_nor_read_cr(nor);
>  	if (!(ret > 0 && (ret & CR_QUAD_EN_SPAN))) {
>  		dev_err(nor->dev, "Spansion Quad bit not set\n");
>  		return -EINVAL;
> @@ -1805,7 +1807,7 @@ static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
>  	int ret;
>  
>  	/* Keep the current value of the Status Register. */
> -	ret = read_sr(nor);
> +	ret = spi_nor_read_sr(nor);
>  	if (ret < 0) {
>  		dev_err(nor->dev, "error while reading status register\n");
>  		return -EINVAL;
> @@ -1813,7 +1815,7 @@ static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
>  	sr_cr[0] = ret;
>  	sr_cr[1] = CR_QUAD_EN_SPAN;
>  
> -	return write_sr_cr(nor, sr_cr);
> +	return spi_nor_write_sr_cr(nor, sr_cr);
>  }
>  
>  /**
> @@ -1836,7 +1838,7 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
>  	int ret;
>  
>  	/* Check current Quad Enable bit value. */
> -	ret = read_cr(nor);
> +	ret = spi_nor_read_cr(nor);
>  	if (ret < 0) {
>  		dev_err(dev, "error while reading configuration register\n");
>  		return -EINVAL;
> @@ -1848,19 +1850,19 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
>  	sr_cr[1] = ret | CR_QUAD_EN_SPAN;
>  
>  	/* Keep the current value of the Status Register. */
> -	ret = read_sr(nor);
> +	ret = spi_nor_read_sr(nor);
>  	if (ret < 0) {
>  		dev_err(dev, "error while reading status register\n");
>  		return -EINVAL;
>  	}
>  	sr_cr[0] = ret;
>  
> -	ret = write_sr_cr(nor, sr_cr);
> +	ret = spi_nor_write_sr_cr(nor, sr_cr);
>  	if (ret)
>  		return ret;
>  
>  	/* Read back and check it. */
> -	ret = read_cr(nor);
> +	ret = spi_nor_read_cr(nor);
>  	if (!(ret > 0 && (ret & CR_QUAD_EN_SPAN))) {
>  		dev_err(nor->dev, "Spansion Quad bit not set\n");
>  		return -EINVAL;
> @@ -1926,7 +1928,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
>  	/* Update the Quad Enable bit. */
>  	*sr2 |= SR2_QUAD_EN_BIT7;
>  
> -	write_enable(nor);
> +	spi_nor_write_enable(nor);
>  
>  	ret = spi_nor_write_sr2(nor, sr2);
>  	if (ret < 0) {
> @@ -1964,15 +1966,15 @@ static int spi_nor_clear_sr_bp(struct spi_nor *nor)
>  	int ret;
>  	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
>  
> -	ret = read_sr(nor);
> +	ret = spi_nor_read_sr(nor);
>  	if (ret < 0) {
>  		dev_err(nor->dev, "error while reading status register\n");
>  		return ret;
>  	}
>  
> -	write_enable(nor);
> +	spi_nor_write_enable(nor);
>  
> -	ret = write_sr(nor, ret & ~mask);
> +	ret = spi_nor_write_sr(nor, ret & ~mask);
>  	if (ret) {
>  		dev_err(nor->dev, "write to status register failed\n");
>  		return ret;
> @@ -2004,7 +2006,7 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
>  	u8 *sr_cr =  nor->bouncebuf;
>  
>  	/* Check current Quad Enable bit value. */
> -	ret = read_cr(nor);
> +	ret = spi_nor_read_cr(nor);
>  	if (ret < 0) {
>  		dev_err(nor->dev,
>  			"error while reading configuration register\n");
> @@ -2018,7 +2020,7 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
>  	if (ret & CR_QUAD_EN_SPAN) {
>  		sr_cr[1] = ret;
>  
> -		ret = read_sr(nor);
> +		ret = spi_nor_read_sr(nor);
>  		if (ret < 0) {
>  			dev_err(nor->dev,
>  				"error while reading status register\n");
> @@ -2026,7 +2028,7 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
>  		}
>  		sr_cr[0] = ret & ~mask;
>  
> -		ret = write_sr_cr(nor, sr_cr);
> +		ret = spi_nor_write_sr_cr(nor, sr_cr);
>  		if (ret)
>  			dev_err(nor->dev, "16-bit write register failed\n");
>  		return ret;
> @@ -2602,7 +2604,7 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
>  	if (ret)
>  		return ret;
>  
> -	write_enable(nor);
> +	spi_nor_write_enable(nor);
>  
>  	nor->sst_write_second = false;
>  
> @@ -2641,14 +2643,14 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
>  	}
>  	nor->sst_write_second = false;
>  
> -	write_disable(nor);
> +	spi_nor_write_disable(nor);
>  	ret = spi_nor_wait_till_ready(nor);
>  	if (ret)
>  		goto sst_write_err;
>  
>  	/* Write out trailing byte if it exists. */
>  	if (actual != len) {
> -		write_enable(nor);
> +		spi_nor_write_enable(nor);
>  
>  		nor->program_opcode = SPINOR_OP_BP;
>  		ret = spi_nor_write_data(nor, to, 1, buf + actual);
> @@ -2659,7 +2661,7 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
>  		ret = spi_nor_wait_till_ready(nor);
>  		if (ret)
>  			goto sst_write_err;
> -		write_disable(nor);
> +		spi_nor_write_disable(nor);
>  		actual += 1;
>  	}
>  sst_write_err:
> @@ -2711,7 +2713,7 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
>  
>  		addr = spi_nor_convert_addr(nor, addr);
>  
> -		write_enable(nor);
> +		spi_nor_write_enable(nor);
>  		ret = spi_nor_write_data(nor, addr, page_remain, buf + i);
>  		if (ret < 0)
>  			goto write_err;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
