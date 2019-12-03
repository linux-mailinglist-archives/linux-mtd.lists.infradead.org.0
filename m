Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE3A10FE7A
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Dec 2019 14:13:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SRo7Vo2KVHE9uC8s2kRxER98M5qJo0ME0Kkg+bUQ3s4=; b=TaIuXo+5+XPWJr
	g5IFH6TIg1UKPRVKrKEZMSZNKDm45l9mOgS/fxSTCmxhAYe28PflOAP16Eiqaj06E6PfxRB21g9Fy
	ZZcWZj8lX1n/v+YaYacb4rYYuJT4xtQAUK7DZu71s//c/nwhR0tRCKLuYpEGqDbAmeb67zjLkG80Z
	GrEaQZMA6IMOxvY9AIcvq98xWQA8eppa9Co51YPd8YxWHgTqcLav9LH+m/YUWIui0ui9Ql44P6fiX
	RCYW9IncejHsoBT3MuMuTaTE6Fih3lx3PzSKPknSpgT0/oXGmlb1bn7hPxINnFdFmvtX/CkUosB82
	gwYPAjXkq7kp5dWs/9xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7zY-0002yQ-1z; Tue, 03 Dec 2019 13:13:24 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7zL-0002p0-Mq
 for linux-mtd@lists.infradead.org; Tue, 03 Dec 2019 13:13:14 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 0A6C04729755A59EEE63;
 Tue,  3 Dec 2019 21:13:03 +0800 (CST)
Received: from [127.0.0.1] (10.133.219.224) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 3 Dec 2019 21:13:01 +0800
Subject: Re: [PATCH] UBI: fix use after free in ubi_remove_volume()
To: Wen Yang <wenyang@linux.alibaba.com>, Richard Weinberger <richard@nod.at>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, Vignesh Raghavendra
 <vigneshr@ti.com>
References: <20191130093317.31352-1-wenyang@linux.alibaba.com>
From: Hou Tao <houtao1@huawei.com>
Message-ID: <65b49705-e28c-e077-c0de-c5167e34d1c5@huawei.com>
Date: Tue, 3 Dec 2019 21:13:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <20191130093317.31352-1-wenyang@linux.alibaba.com>
Content-Language: en-US
X-Originating-IP: [10.133.219.224]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_051313_203114_D31BFAEA 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 xlpang@linux.alibaba.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Reviewed-by: Hou Tao <houtao1@huawei.com>

On 2019/11/30 17:33, Wen Yang wrote:
> We can't use "vol" after it has been freed.
> 
> Fixes: 493cfaeaa0c9 ("mtd: utilize new cdev_device_add helper function")
> Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
> Cc: Richard Weinberger <richard@nod.at>
> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Cc: linux-mtd@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/mtd/ubi/vmt.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/ubi/vmt.c b/drivers/mtd/ubi/vmt.c
> index 139ee13..8ff1478 100644
> --- a/drivers/mtd/ubi/vmt.c
> +++ b/drivers/mtd/ubi/vmt.c
> @@ -375,7 +375,6 @@ int ubi_remove_volume(struct ubi_volume_desc *desc, int no_vtbl)
>  	}
>  
>  	cdev_device_del(&vol->cdev, &vol->dev);
> -	put_device(&vol->dev);
>  
>  	spin_lock(&ubi->volumes_lock);
>  	ubi->rsvd_pebs -= reserved_pebs;
> @@ -388,6 +387,8 @@ int ubi_remove_volume(struct ubi_volume_desc *desc, int no_vtbl)
>  	if (!no_vtbl)
>  		self_check_volumes(ubi);
>  
> +	put_device(&vol->dev);
> +
>  	return 0;
>  
>  out_err:
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
