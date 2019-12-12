Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FCC11C8EF
	for <lists+linux-mtd@lfdr.de>; Thu, 12 Dec 2019 10:15:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oqm6kIjX41rUqi2fEHFYWBW8f/YO5n7r2p0OHGr8cZc=; b=WbG7Q23PgOEX0p
	I8HlzF8YB2Nl8qOBBVFe1IuwhfSXrD7JoTy4x9A/wAV2mLzAWNFoZ3HtGzYy+HFDV21z467sp+R9r
	A9UoG7G4Yfa/5gXaFk4MeqFSAUtIOJfE8lYyqoqtx+T4JqarYhdwbVRkauQVo3Yw+pHBNhP+Dt0zu
	nPQN7iUOV5fQwqqkRT1w2aDQtAmieeeSSQCP0gRU0Aq+Y8Gxn/AmUmzvaeYekZRNPY6A0rJaEkrYp
	rf7c5/3xfIO6QO4D90KTiz6ntEx8r05b+yfnozRYWJ0cRrzJaXbbAVR85AKUhUIJr+9js1ENUVy9J
	ROctZZYuQmuM6J6wtHcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKYs-0006Wx-GV; Thu, 12 Dec 2019 09:15:06 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKYP-0006LY-JI
 for linux-mtd@lists.infradead.org; Thu, 12 Dec 2019 09:14:47 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id DBB92118EE7C044859A8;
 Thu, 12 Dec 2019 17:14:30 +0800 (CST)
Received: from [127.0.0.1] (10.133.219.224) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 12 Dec 2019 17:14:26 +0800
Subject: Re: [PATCH 2/2] ubi: free the normal volumes in error paths of
 ubi_attach_mtd_dev()
From: Hou Tao <houtao1@huawei.com>
To: <linux-mtd@lists.infradead.org>
References: <20191130094825.141589-1-houtao1@huawei.com>
Message-ID: <d36a491a-0bfa-e95a-c60c-914b50b74c77@huawei.com>
Date: Thu, 12 Dec 2019 17:14:25 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <20191130094825.141589-1-houtao1@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.133.219.224]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_011437_828765_209BC015 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: vigneshr@ti.com, dedekind1@gmail.com, richard@nod.at, marek.vasut@gmail.com,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

ping ?

On 2019/11/30 17:48, Hou Tao wrote:
> The allocated normal volumes saved in ubi->volumes are not freed
> in the error paths in ubi_attach_mtd_dev() and its callees (e.g.
> ubi_attach() and ubi_read_volume_table()).
> 
> These normal volumes should be freed through kill_volumes() and
> vol_release(), but ubi_attach_mtd_dev() may fail before
> calling uif_init(), and there will be memory leaks.
> 
> So adding a new helper ubi_free_all_volumes() to free the normal
> and the internal volumes. And in order to prevent double-free
> of volume, reset ubi->volumes[i] to NULL after freeing.
> 
> Signed-off-by: Hou Tao <houtao1@huawei.com>
> ---
>  drivers/mtd/ubi/attach.c |  2 +-
>  drivers/mtd/ubi/build.c  | 31 ++++++++++++++++++++++++++-----
>  drivers/mtd/ubi/ubi.h    |  1 +
>  drivers/mtd/ubi/vtbl.c   | 10 ++--------
>  4 files changed, 30 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
> index 10b2459f8951..ea7440ac913b 100644
> --- a/drivers/mtd/ubi/attach.c
> +++ b/drivers/mtd/ubi/attach.c
> @@ -1640,7 +1640,7 @@ int ubi_attach(struct ubi_device *ubi, int force_scan)
>  out_wl:
>  	ubi_wl_close(ubi);
>  out_vtbl:
> -	ubi_free_internal_volumes(ubi);
> +	ubi_free_all_volumes(ubi);
>  	vfree(ubi->vtbl);
>  out_ai:
>  	destroy_ai(ai);
> diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
> index d636bbe214cb..25fb72b2efa0 100644
> --- a/drivers/mtd/ubi/build.c
> +++ b/drivers/mtd/ubi/build.c
> @@ -503,21 +503,42 @@ static void uif_close(struct ubi_device *ubi)
>  }
>  
>  /**
> - * ubi_free_internal_volumes - free internal volumes.
> + * ubi_free_volumes_from - free volumes from specific index.
>   * @ubi: UBI device description object
> + * @from: the start index used for volume free.
>   */
> -void ubi_free_internal_volumes(struct ubi_device *ubi)
> +static void ubi_free_volumes_from(struct ubi_device *ubi, int from)
>  {
>  	int i;
>  
> -	for (i = ubi->vtbl_slots;
> -	     i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
> +	for (i = from; i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
> +		if (!ubi->volumes[i])
> +			continue;
>  		ubi_eba_replace_table(ubi->volumes[i], NULL);
>  		ubi_fastmap_destroy_checkmap(ubi->volumes[i]);
>  		kfree(ubi->volumes[i]);
> +		ubi->volumes[i] = NULL;
>  	}
>  }
>  
> +/**
> + * ubi_free_all_volumes - free all volumes.
> + * @ubi: UBI device description object
> + */
> +void ubi_free_all_volumes(struct ubi_device *ubi)
> +{
> +	ubi_free_volumes_from(ubi, 0);
> +}
> +
> +/**
> + * ubi_free_internal_volumes - free internal volumes.
> + * @ubi: UBI device description object
> + */
> +void ubi_free_internal_volumes(struct ubi_device *ubi)
> +{
> +	ubi_free_volumes_from(ubi, ubi->vtbl_slots);
> +}
> +
>  static int get_bad_peb_limit(const struct ubi_device *ubi, int max_beb_per1024)
>  {
>  	int limit, device_pebs;
> @@ -1013,7 +1034,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
>  out_detach:
>  	ubi_devices[ubi_num] = NULL;
>  	ubi_wl_close(ubi);
> -	ubi_free_internal_volumes(ubi);
> +	ubi_free_all_volumes(ubi);
>  	vfree(ubi->vtbl);
>  out_free:
>  	vfree(ubi->peb_buf);
> diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
> index 721b6aa7936c..5ab3affd2fcf 100644
> --- a/drivers/mtd/ubi/ubi.h
> +++ b/drivers/mtd/ubi/ubi.h
> @@ -948,6 +948,7 @@ int ubi_volume_notify(struct ubi_device *ubi, struct ubi_volume *vol,
>  int ubi_notify_all(struct ubi_device *ubi, int ntype,
>  		   struct notifier_block *nb);
>  int ubi_enumerate_volumes(struct notifier_block *nb);
> +void ubi_free_all_volumes(struct ubi_device *ubi);
>  void ubi_free_internal_volumes(struct ubi_device *ubi);
>  
>  /* kapi.c */
> diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
> index 8a2a0f091598..f700f0e4f2ec 100644
> --- a/drivers/mtd/ubi/vtbl.c
> +++ b/drivers/mtd/ubi/vtbl.c
> @@ -782,7 +782,7 @@ static int check_attaching_info(const struct ubi_device *ubi,
>   */
>  int ubi_read_volume_table(struct ubi_device *ubi, struct ubi_attach_info *ai)
>  {
> -	int i, err;
> +	int err;
>  	struct ubi_ainf_volume *av;
>  
>  	empty_vtbl_record.crc = cpu_to_be32(0xf116c36b);
> @@ -851,13 +851,7 @@ int ubi_read_volume_table(struct ubi_device *ubi, struct ubi_attach_info *ai)
>  
>  out_free:
>  	vfree(ubi->vtbl);
> -	for (i = 0; i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
> -		if (!ubi->volumes[i])
> -			continue;
> -		ubi_fastmap_destroy_checkmap(ubi->volumes[i]);
> -		kfree(ubi->volumes[i]);
> -		ubi->volumes[i] = NULL;
> -	}
> +	ubi_free_all_volumes(ubi);
>  	return err;
>  }
>  
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
