Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C76D631A69
	for <lists+linux-mtd@lfdr.de>; Sat,  1 Jun 2019 09:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZE4OCyZkxK9bUsjhVcQv6C7XGWv7j4afswZFGhzMFm4=; b=GWkJDGvWrUwDde
	d3exvaBlbqIa/mHHX6kP4Y7KmFiNgQwhthAOmXic9wGHuxkOsG3+qApExqgyD5wpBTjX2JCG+Fqej
	ggLFGqrYuruANTVRPtDPEfLQF1IAOanqIZb+CAR3PU6MmQ6i+79MCORpKwG8kDIXc5QVgeuhsLfvx
	m7XuA0zp3WW6C7eI03miRbnhS3Q6s2aOI0t1aLB3pV7Ldx5LCdAVWqBGi605Rkg2qcK2xSXFBkXgz
	sOgV4jJ/DCMjqTLhkZcnpXyb93p39Hv6tAGoW3LVkTFVgsEhztAw3gQEiw4gRVeHN3r2LKYTMf6og
	PqZ2U1nD0zLLvOHvR+eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWytw-00011v-JB; Sat, 01 Jun 2019 07:58:04 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWytn-00011V-Lo
 for linux-mtd@lists.infradead.org; Sat, 01 Jun 2019 07:57:57 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E0096263967;
 Sat,  1 Jun 2019 08:57:51 +0100 (BST)
Date: Sat, 1 Jun 2019 09:57:48 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Kamal Dasu <kdasu.kdev@gmail.com>
Subject: Re: [PATCH 1/3] mtd: nand: raw: brcmnand: Refactored code and
 introduced inline functions
Message-ID: <20190601095748.35d1c1aa@collabora.com>
In-Reply-To: <1559251257-12383-1-git-send-email-kdasu.kdev@gmail.com>
References: <1559251257-12383-1-git-send-email-kdasu.kdev@gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_005755_981214_C9678FF9 
X-CRM114-Status: GOOD (  18.92  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 30 May 2019 17:20:35 -0400
Kamal Dasu <kdasu.kdev@gmail.com> wrote:

> Refactored NAND ECC and CMD address configuration code to use inline
> functions.

I'd expect the compiler to be smart enough to decide when inlining is
appropriate. Did you check that adding the inline specifier actually
makes a difference?

> 
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> ---
>  drivers/mtd/nand/raw/brcmnand/brcmnand.c | 100 +++++++++++++++++++------------
>  1 file changed, 62 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> index ce0b8ff..77b7850 100644
> --- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> +++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> @@ -588,6 +588,54 @@ static inline void brcmnand_write_fc(struct brcmnand_controller *ctrl,
>  	__raw_writel(val, ctrl->nand_fc + word * 4);
>  }
>  
> +static inline void brcmnand_clear_ecc_addr(struct brcmnand_controller *ctrl)
> +{
> +
> +	/* Clear error addresses */
> +	brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_ADDR, 0);
> +	brcmnand_write_reg(ctrl, BRCMNAND_CORR_ADDR, 0);
> +	brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_EXT_ADDR, 0);
> +	brcmnand_write_reg(ctrl, BRCMNAND_CORR_EXT_ADDR, 0);
> +}
> +
> +static inline u64 brcmnand_get_uncorrecc_addr(struct brcmnand_controller *ctrl)
> +{
> +	u64 err_addr;
> +
> +	err_addr = brcmnand_read_reg(ctrl, BRCMNAND_UNCORR_ADDR);
> +	err_addr |= ((u64)(brcmnand_read_reg(ctrl,
> +					     BRCMNAND_UNCORR_EXT_ADDR)
> +					     & 0xffff) << 32);
> +
> +	return err_addr;
> +}
> +
> +static inline u64 brcmnand_get_correcc_addr(struct brcmnand_controller *ctrl)
> +{
> +	u64 err_addr;
> +
> +	err_addr = brcmnand_read_reg(ctrl, BRCMNAND_CORR_ADDR);
> +	err_addr |= ((u64)(brcmnand_read_reg(ctrl,
> +					     BRCMNAND_CORR_EXT_ADDR)
> +					     & 0xffff) << 32);
> +
> +	return err_addr;
> +}
> +
> +static inline void brcmnand_set_cmd_addr(struct mtd_info *mtd, u64 addr)
> +{
> +	struct nand_chip *chip =  mtd_to_nand(mtd);
> +	struct brcmnand_host *host = nand_get_controller_data(chip);
> +	struct brcmnand_controller *ctrl = host->ctrl;
> +
> +	brcmnand_write_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS,
> +			   (host->cs << 16) | ((addr >> 32) & 0xffff));
> +	(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS);
> +	brcmnand_write_reg(ctrl, BRCMNAND_CMD_ADDRESS,
> +			   lower_32_bits(addr));
> +	(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
> +}
> +
>  static inline u16 brcmnand_cs_offset(struct brcmnand_controller *ctrl, int cs,
>  				     enum brcmnand_cs_reg reg)
>  {
> @@ -1213,9 +1261,12 @@ static void brcmnand_send_cmd(struct brcmnand_host *host, int cmd)
>  {
>  	struct brcmnand_controller *ctrl = host->ctrl;
>  	int ret;
> +	u64 cmd_addr;
> +
> +	cmd_addr = brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
> +
> +	dev_dbg(ctrl->dev, "send native cmd %d addr 0x%llx\n", cmd, cmd_addr);
>  
> -	dev_dbg(ctrl->dev, "send native cmd %d addr_lo 0x%x\n", cmd,
> -		brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS));
>  	BUG_ON(ctrl->cmd_pending != 0);
>  	ctrl->cmd_pending = cmd;
>  
> @@ -1374,12 +1425,7 @@ static void brcmnand_cmdfunc(struct nand_chip *chip, unsigned command,
>  	if (!native_cmd)
>  		return;
>  
> -	brcmnand_write_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS,
> -		(host->cs << 16) | ((addr >> 32) & 0xffff));
> -	(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS);
> -	brcmnand_write_reg(ctrl, BRCMNAND_CMD_ADDRESS, lower_32_bits(addr));
> -	(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
> -
> +	brcmnand_set_cmd_addr(mtd, addr);
>  	brcmnand_send_cmd(host, native_cmd);
>  	brcmnand_waitfunc(chip);
>  
> @@ -1597,20 +1643,10 @@ static int brcmnand_read_by_pio(struct mtd_info *mtd, struct nand_chip *chip,
>  	struct brcmnand_controller *ctrl = host->ctrl;
>  	int i, j, ret = 0;
>  
> -	/* Clear error addresses */
> -	brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_ADDR, 0);
> -	brcmnand_write_reg(ctrl, BRCMNAND_CORR_ADDR, 0);
> -	brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_EXT_ADDR, 0);
> -	brcmnand_write_reg(ctrl, BRCMNAND_CORR_EXT_ADDR, 0);
> -
> -	brcmnand_write_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS,
> -			(host->cs << 16) | ((addr >> 32) & 0xffff));
> -	(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS);
> +	brcmnand_clear_ecc_addr(ctrl);
>  
>  	for (i = 0; i < trans; i++, addr += FC_BYTES) {
> -		brcmnand_write_reg(ctrl, BRCMNAND_CMD_ADDRESS,
> -				   lower_32_bits(addr));
> -		(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
> +		brcmnand_set_cmd_addr(mtd, addr);
>  		/* SPARE_AREA_READ does not use ECC, so just use PAGE_READ */
>  		brcmnand_send_cmd(host, CMD_PAGE_READ);
>  		brcmnand_waitfunc(chip);
> @@ -1630,21 +1666,15 @@ static int brcmnand_read_by_pio(struct mtd_info *mtd, struct nand_chip *chip,
>  					host->hwcfg.sector_size_1k);
>  
>  		if (!ret) {
> -			*err_addr = brcmnand_read_reg(ctrl,
> -					BRCMNAND_UNCORR_ADDR) |
> -				((u64)(brcmnand_read_reg(ctrl,
> -						BRCMNAND_UNCORR_EXT_ADDR)
> -					& 0xffff) << 32);
> +			*err_addr = brcmnand_get_uncorrecc_addr(ctrl);
> +
>  			if (*err_addr)
>  				ret = -EBADMSG;
>  		}
>  
>  		if (!ret) {
> -			*err_addr = brcmnand_read_reg(ctrl,
> -					BRCMNAND_CORR_ADDR) |
> -				((u64)(brcmnand_read_reg(ctrl,
> -						BRCMNAND_CORR_EXT_ADDR)
> -					& 0xffff) << 32);
> +			*err_addr = brcmnand_get_correcc_addr(ctrl);
> +
>  			if (*err_addr)
>  				ret = -EUCLEAN;
>  		}
> @@ -1711,7 +1741,7 @@ static int brcmnand_read(struct mtd_info *mtd, struct nand_chip *chip,
>  	dev_dbg(ctrl->dev, "read %llx -> %p\n", (unsigned long long)addr, buf);
>  
>  try_dmaread:
> -	brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_COUNT, 0);
> +	brcmnand_clear_ecc_addr(ctrl);
>  
>  	if (has_flash_dma(ctrl) && !oob && flash_dma_buf_ok(buf)) {
>  		err = brcmnand_dma_trans(host, addr, buf, trans * FC_BYTES,
> @@ -1858,15 +1888,9 @@ static int brcmnand_write(struct mtd_info *mtd, struct nand_chip *chip,
>  		goto out;
>  	}
>  
> -	brcmnand_write_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS,
> -			(host->cs << 16) | ((addr >> 32) & 0xffff));
> -	(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS);
> -
>  	for (i = 0; i < trans; i++, addr += FC_BYTES) {
>  		/* full address MUST be set before populating FC */
> -		brcmnand_write_reg(ctrl, BRCMNAND_CMD_ADDRESS,
> -				   lower_32_bits(addr));
> -		(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
> +		brcmnand_set_cmd_addr(mtd, addr);
>  
>  		if (buf) {
>  			brcmnand_soc_data_bus_prepare(ctrl->soc, false);


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
