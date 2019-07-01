Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAF232F06
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 13:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cu9hVuOTSimo7YgFdgdU+AhFnp8OaA1pwhx/GVyKOFw=; b=aimWXS+O1Fxkcy
	YgJWBE1XX31S/Ih+dN+bIUua59TQVBl1Q+bU3TI2lZL6+1Lv69qnT6gXW2N0kLpxP08uYCeG3oJnk
	aYnhDngoPhYZ8yL/r22C2IrzgswwLmYgSeCFI8X/5/QBvrgMDnz5ra/ru97SDk/UzOuA8eIm6FH/r
	2bdQX+NToO58VDj5qnjWD1ttYiewchsTNV1800naMwey465PqF14e8bZql5+CeGMm3puIJxsjIVNc
	UMpPANky4ApKHSGD6DxeojXbtv8nh/lLbBp/YYZmfsKhVT5dlZ2f2KjbEq92tKq3SRuZSOv4DSkFm
	XsVKSkWq+7OIWWUFO0TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlXc-0001di-2s; Mon, 03 Jun 2019 11:54:16 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlXT-0001dO-Ff
 for linux-mtd@lists.infradead.org; Mon, 03 Jun 2019 11:54:09 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E067A281DC5;
 Mon,  3 Jun 2019 12:54:02 +0100 (BST)
Date: Mon, 3 Jun 2019 13:53:59 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Zhuohao Lee <zhuohao@chromium.org>
Subject: Re: [PATCH v6 1/2] mtd: mtdcore: add debugfs nodes for querying the
 flash name and id
Message-ID: <20190603135359.3b27998f@collabora.com>
In-Reply-To: <20190603115053.219438-1-zhuohao@chromium.org>
References: <20190603115053.219438-1-zhuohao@chromium.org>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_045407_783256_8A9261A3 
X-CRM114-Status: GOOD (  24.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: drinkcat@chromium.org, bbrezillon@kernel.org, richard@nod.at,
 briannorris@chromium.org, marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon,  3 Jun 2019 19:50:52 +0800
Zhuohao Lee <zhuohao@chromium.org> wrote:

> Currently, we don't have vfs nodes for querying the underlying flash name
> and flash id. This information is important especially when we want to
> know the flash detail of the defective system. In order to support the
> query, we add mtd_debugfs_populate() to create two debugfs nodes
> (ie. partname and partid). The upper driver can assign the pointer to
> partname and partid before calling mtd_device_register().
> 
> Signed-off-by: Zhuohao Lee <zhuohao@chromium.org>
> ---
> Changes in V6:
> - Create the debugfs only when the partname/partid is not NULL
> - Previous discussion: https://patchwork.ozlabs.org/patch/1109041/
> Changes in V5:
> - Move debugfs_create_dir() to mtd_debugfs_populate()
> - Previous discussion: https://patchwork.ozlabs.org/patch/1107810/
> Changes in V4:
> - Separate the change to two patches. The first patch is adding the general
>   handling for the partname and partid in the mtdcore.c. The second patch
>   is enabling the two debugfs nodes for spi-nor.
> - Previous discussion: https://patchwork.ozlabs.org/patch/1097377/
> Changes in v3:
> - Add partname and partid to mtd.h and create debugfs inside mtdcore.c
> - Previous discussion: https://patchwork.ozlabs.org/patch/1095731/
> Changes in v2:
> - Change to use debugfs to output flash name and id
> - Previous discussion: https://patchwork.ozlabs.org/patch/1067763/
> ---
>  drivers/mtd/mtdcore.c   | 90 ++++++++++++++++++++++++++++++++++++-----
>  include/linux/mtd/mtd.h |  3 ++
>  2 files changed, 84 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
> index 3ef01baef9b6..54a5448fc1ac 100644
> --- a/drivers/mtd/mtdcore.c
> +++ b/drivers/mtd/mtdcore.c
> @@ -357,6 +357,86 @@ static const struct device_type mtd_devtype = {
>  	.release	= mtd_release,
>  };
>  
> +static int mtd_partid_show(struct seq_file *s, void *p)
> +{
> +	struct mtd_info *mtd = s->private;
> +
> +	if (!mtd->dbg.partid)
> +		return 0;

You forgot to remove this test (and the other on in partname_show()).

> +
> +	seq_printf(s, "%s\n", mtd->dbg.partid);
> +
> +	return 0;
> +}
> +
> +static int mtd_partid_debugfs_open(struct inode *inode, struct file *file)
> +{
> +	return single_open(file, mtd_partid_show, inode->i_private);
> +}
> +
> +static const struct file_operations mtd_partid_debug_fops = {
> +	.open           = mtd_partid_debugfs_open,
> +	.read           = seq_read,
> +	.llseek         = seq_lseek,
> +	.release        = single_release,
> +};
> +
> +static int mtd_partname_show(struct seq_file *s, void *p)
> +{
> +	struct mtd_info *mtd = s->private;
> +
> +	if (!mtd->dbg.partname)
> +		return 0;
> +
> +	seq_printf(s, "%s\n", mtd->dbg.partname);
> +
> +	return 0;
> +}
> +
> +static int mtd_partname_debugfs_open(struct inode *inode, struct file *file)
> +{
> +	return single_open(file, mtd_partname_show, inode->i_private);
> +}
> +
> +static const struct file_operations mtd_partname_debug_fops = {
> +	.open           = mtd_partname_debugfs_open,
> +	.read           = seq_read,
> +	.llseek         = seq_lseek,
> +	.release        = single_release,
> +};
> +
> +static struct dentry *dfs_dir_mtd;
> +
> +static void mtd_debugfs_populate(struct mtd_info *mtd)
> +{
> +	struct device *dev = &mtd->dev;
> +	struct dentry *root, *dent;
> +
> +	if (IS_ERR_OR_NULL(dfs_dir_mtd))
> +		return;
> +
> +	root = mtd->dbg.dfs_dir = debugfs_create_dir(dev_name(dev),
> +						     dfs_dir_mtd);
> +	if (IS_ERR_OR_NULL(root)) {
> +		pr_debug("mtd device %s won't show data in debugfs\n",
> +			 dev_name(dev));
> +		return;
> +	}
> +
> +	if (mtd->dbg.partid) {
> +		dent = debugfs_create_file("partid", S_IRUSR, root, mtd,
> +					   &mtd_partid_debug_fops);
> +		if (IS_ERR_OR_NULL(dent))
> +			pr_err("cannot create debugfs entry for partid\n");
> +	}
> +	if (mtd->dbg.partname) {
> +		dent = debugfs_create_file("partname", S_IRUSR, root, mtd,
> +					   &mtd_partname_debug_fops);
> +		if (IS_ERR_OR_NULL(dent))
> +			pr_err("cannot create debugfs entry for partname\n");
> +	}
> +}
> +
>  #ifndef CONFIG_MMU
>  unsigned mtd_mmap_capabilities(struct mtd_info *mtd)
>  {
> @@ -534,8 +614,6 @@ static int mtd_nvmem_add(struct mtd_info *mtd)
>  	return 0;
>  }
>  
> -static struct dentry *dfs_dir_mtd;
> -
>  /**
>   *	add_mtd_device - register an MTD device
>   *	@mtd: pointer to new MTD device info structure
> @@ -621,13 +699,7 @@ int add_mtd_device(struct mtd_info *mtd)
>  	if (error)
>  		goto fail_nvmem_add;
>  
> -	if (!IS_ERR_OR_NULL(dfs_dir_mtd)) {
> -		mtd->dbg.dfs_dir = debugfs_create_dir(dev_name(&mtd->dev), dfs_dir_mtd);
> -		if (IS_ERR_OR_NULL(mtd->dbg.dfs_dir)) {
> -			pr_debug("mtd device %s won't show data in debugfs\n",
> -				 dev_name(&mtd->dev));
> -		}
> -	}
> +	mtd_debugfs_populate(mtd);
>  
>  	device_create(&mtd_class, mtd->dev.parent, MTD_DEVT(i) + 1, NULL,
>  		      "mtd%dro", i);
> diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
> index 677768b21a1d..b11afb85d962 100644
> --- a/include/linux/mtd/mtd.h
> +++ b/include/linux/mtd/mtd.h
> @@ -203,6 +203,9 @@ struct module;	/* only needed for owner field in mtd_info */
>   */
>  struct mtd_debug_info {
>  	struct dentry *dfs_dir;
> +
> +	const char *partname;
> +	const char *partid;
>  };
>  
>  struct mtd_info {


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
