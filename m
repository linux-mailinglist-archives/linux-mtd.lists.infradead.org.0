Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A251CD41A
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 10:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zd38IrmkRfyhFkII5RRjgO6pL/0kxmylKv3Uui6iqJc=; b=gKQokN4hYWWr1L
	6iWi775F46e7b1O02XGhB9E61TWfuPUV6TmWd/c3VSZ/dftlzFM/7gip+4O6mCrXJnmGLjC7LgDIR
	C9Qg9nijLhBzz1GVeUgu8J5Vrp8g2LYljJU+ZKWHER16ZIGrQe8RI6H4e9v904aaLj+tyZRMYKNAb
	J7e7ESTdsB/a+wEIsovdrUsfiRpa+9UHASZFaXGTyUbcx8J/7wO3OrxXrVQ0wCmD+3PbdCCXnP+xZ
	rmf6xlKYJM7GuE+Wx2qINTh++kIcNpu02luVnU/JsxHOIG5Cok8hV2c4kiqOjqt1esNHeuuBZa/hc
	EVR57tUs2cQNY1Xe7u7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3w7-0005Fm-Hd; Mon, 11 May 2020 08:37:19 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3vb-00055W-Qn
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 08:36:56 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.07436282|-1; CH=green;
 DM=|CONTINUE|false|;
 DS=CONTINUE|ham_system_inform|0.695302-0.00252888-0.302169;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03297; MF=liaoweixiong@allwinnertech.com; NM=1;
 PH=DS; RN=16; RT=16; SR=0; TI=SMTPD_---.HWncSpm_1589186202; 
Received: from 172.16.10.102(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.HWncSpm_1589186202)
 by smtp.aliyun-inc.com(10.147.40.200);
 Mon, 11 May 2020 16:36:43 +0800
From: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: Re: [PATCH v7 09/18] pstore/blk: Introduce backend for block devices
To: Kees Cook <keescook@chromium.org>
References: <20200510202436.63222-1-keescook@chromium.org>
 <20200510202436.63222-10-keescook@chromium.org>
Message-ID: <1f63c624-98aa-52de-a1ef-0a449decf4e9@allwinnertech.com>
Date: Mon, 11 May 2020 16:36:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200510202436.63222-10-keescook@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_013648_288042_00759C21 
X-CRM114-Status: GOOD (  37.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [121.197.207.205 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Petr Mladek <pmladek@suse.com>, Tony Luck <tony.luck@intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Anton Vorontsov <anton@enomsg.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Colin Cross <ccross@android.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Rob Herring <robh@kernel.org>,
 Pavel Tatashin <pasha.tatashin@soleen.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

hi Kees Cook,

On 2020/5/11 AM 4:24, Kees Cook wrote:
> From: WeiXiong Liao <liaoweixiong@allwinnertech.com>
> 
> pstore/blk is similar to pstore/ram, but uses a block device as the
> storage rather than persistent ram.
> 
> The pstore/blk backend solves two common use-cases that used to preclude
> using pstore/ram:
> - not all devices have a battery that could be used to persist
>   regular RAM across power failures.
> - most embedded intelligent equipment have no persistent ram, which
>   increases costs, instead preferring cheaper solutions, like block
>   devices.
> 
> pstore/blk provides separate configurations for the end user and for the
> block drivers. User configuration determines how pstore/blk operates, such
> as record sizes, max kmsg dump reasons, etc. These can be set by Kconfig
> and/or module parameters, but module parameter have priority over Kconfig.
> Driver configuration covers all the details about the target block device,
> such as total size of the device and how to perform read/write operations.
> These are provided by block drivers, calling pstore_register_blkdev(),
> including an optional panic_write callback used to bypass regular IO
> APIs in an effort to avoid potentially destabilized kernel code during
> a panic.
> 
> Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
> Link: https://lore.kernel.org/r/1585126506-18635-3-git-send-email-liaoweixiong@allwinnertech.com
> Co-developed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  fs/pstore/Kconfig          |  64 ++++++
>  fs/pstore/Makefile         |   3 +
>  fs/pstore/blk.c            | 436 +++++++++++++++++++++++++++++++++++++
>  include/linux/pstore_blk.h |  51 +++++
>  4 files changed, 554 insertions(+)
>  create mode 100644 fs/pstore/blk.c
>  create mode 100644 include/linux/pstore_blk.h
> 
> diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
> index 98d2457bdd9f..92ba73bd0b62 100644
> --- a/fs/pstore/Kconfig
> +++ b/fs/pstore/Kconfig
> @@ -160,3 +160,67 @@ config PSTORE_ZONE
>  	help
>  	  The common layer for pstore/blk (and pstore/ram in the future)
>  	  to manage storage in zones.
> +
> +config PSTORE_BLK
> +	tristate "Log panic/oops to a block device"
> +	depends on PSTORE
> +	depends on BLOCK
> +	select PSTORE_ZONE
> +	default n
> +	help
> +	  This enables panic and oops message to be logged to a block dev
> +	  where it can be read back at some later point.
> +
> +	  If unsure, say N.
> +
> +config PSTORE_BLK_BLKDEV
> +	string "block device identifier"
> +	depends on PSTORE_BLK
> +	default ""
> +	help
> +	  Which block device should be used for pstore/blk.
> +
> +	  It accept the following variants:
> +	  1) <hex_major><hex_minor> device number in hexadecimal represents
> +	     itself no leading 0x, for example b302.
> +	  2) /dev/<disk_name> represents the device number of disk
> +	  3) /dev/<disk_name><decimal> represents the device number
> +	     of partition - device number of disk plus the partition number
> +	  4) /dev/<disk_name>p<decimal> - same as the above, this form is
> +	     used when disk name of partitioned disk ends with a digit.
> +	  5) PARTUUID=00112233-4455-6677-8899-AABBCCDDEEFF representing the
> +	     unique id of a partition if the partition table provides it.
> +	     The UUID may be either an EFI/GPT UUID, or refer to an MSDOS
> +	     partition using the format SSSSSSSS-PP, where SSSSSSSS is a zero-
> +	     filled hex representation of the 32-bit "NT disk signature", and PP
> +	     is a zero-filled hex representation of the 1-based partition number.
> +	  6) PARTUUID=<UUID>/PARTNROFF=<int> to select a partition in relation
> +	     to a partition with a known unique id.
> +	  7) <major>:<minor> major and minor number of the device separated by
> +	     a colon.
> +
> +	  NOTE that, both Kconfig and module parameters can configure
> +	  pstore/blk, but module parameters have priority over Kconfig.
> +
> +config PSTORE_BLK_KMSG_SIZE
> +	int "Size in Kbytes of kmsg dump log to store"
> +	depends on PSTORE_BLK
> +	default 64
> +	help
> +	  This just sets size of kmsg dump (oops, panic, etc) log for
> +	  pstore/blk. The size is in KB and must be a multiple of 4.
> +
> +	  NOTE that, both Kconfig and module parameters can configure
> +	  pstore/blk, but module parameters have priority over Kconfig.
> +
> +config PSTORE_BLK_MAX_REASON
> +	int "Maximum kmsg dump reason to store"
> +	depends on PSTORE_BLK
> +	default 2
> +	help
> +	  The maximum reason for kmsg dumps to store. The default is
> +	  2 (KMSG_DUMP_OOPS), see include/linux/kmsg_dump.h's
> +	  enum kmsg_dump_reason for more details.
> +
> +	  NOTE that, both Kconfig and module parameters can configure
> +	  pstore/blk, but module parameters have priority over Kconfig.
> diff --git a/fs/pstore/Makefile b/fs/pstore/Makefile
> index 58a967cbe4af..c270467aeece 100644
> --- a/fs/pstore/Makefile
> +++ b/fs/pstore/Makefile
> @@ -15,3 +15,6 @@ obj-$(CONFIG_PSTORE_RAM)	+= ramoops.o
>  
>  pstore_zone-objs += zone.o
>  obj-$(CONFIG_PSTORE_ZONE)	+= pstore_zone.o
> +
> +pstore_blk-objs += blk.o
> +obj-$(CONFIG_PSTORE_BLK)	+= pstore_blk.o
> diff --git a/fs/pstore/blk.c b/fs/pstore/blk.c
> new file mode 100644
> index 000000000000..cec1fa261d1b
> --- /dev/null
> +++ b/fs/pstore/blk.c
> @@ -0,0 +1,436 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Implements pstore backend driver that write to block (or non-block) storage
> + * devices, using the pstore/zone API.
> + */
> +
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include "../../block/blk.h"
> +#include <linux/blkdev.h>
> +#include <linux/string.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/platform_device.h>
> +#include <linux/pstore_blk.h>
> +#include <linux/mount.h>
> +#include <linux/uio.h>
> +
> +static long kmsg_size = CONFIG_PSTORE_BLK_KMSG_SIZE;
> +module_param(kmsg_size, long, 0400);
> +MODULE_PARM_DESC(kmsg_size, "kmsg dump record size in kbytes");
> +
> +static int max_reason = CONFIG_PSTORE_BLK_MAX_REASON;
> +module_param(max_reason, int, 0400);
> +MODULE_PARM_DESC(max_reason,
> +		 "maximum reason for kmsg dump (default 2: Oops and Panic)");
> +
> +/*
> + * blkdev - the block device to use for pstore storage
> + *
> + * Usually, this will be a partition of a block device.
> + *
> + * blkdev accepts the following variants:
> + * 1) <hex_major><hex_minor> device number in hexadecimal represents itself
> + *    no leading 0x, for example b302.
> + * 2) /dev/<disk_name> represents the device number of disk
> + * 3) /dev/<disk_name><decimal> represents the device number
> + *    of partition - device number of disk plus the partition number
> + * 4) /dev/<disk_name>p<decimal> - same as the above, that form is
> + *    used when disk name of partitioned disk ends on a digit.
> + * 5) PARTUUID=00112233-4455-6677-8899-AABBCCDDEEFF representing the
> + *    unique id of a partition if the partition table provides it.
> + *    The UUID may be either an EFI/GPT UUID, or refer to an MSDOS
> + *    partition using the format SSSSSSSS-PP, where SSSSSSSS is a zero-
> + *    filled hex representation of the 32-bit "NT disk signature", and PP
> + *    is a zero-filled hex representation of the 1-based partition number.
> + * 6) PARTUUID=<UUID>/PARTNROFF=<int> to select a partition in relation to
> + *    a partition with a known unique id.
> + * 7) <major>:<minor> major and minor number of the device separated by
> + *    a colon.
> + */
> +static char blkdev[80] = CONFIG_PSTORE_BLK_BLKDEV;
> +module_param_string(blkdev, blkdev, 80, 0400);
> +MODULE_PARM_DESC(blkdev, "block device for pstore storage");
> +
> +/*
> + * All globals must only be accessed under the pstore_blk_lock
> + * during the register/unregister functions.
> + */
> +static DEFINE_MUTEX(pstore_blk_lock);
> +static struct block_device *psblk_bdev;
> +static struct pstore_zone_info *pstore_zone_info;
> +static pstore_blk_panic_write_op blkdev_panic_write;
> +static struct bdev_info {
> +	dev_t devt;
> +	sector_t nr_sects;
> +	sector_t start_sect;
> +} g_bdev_info;
> +
> +/**
> + * struct pstore_device_info - back-end pstore/blk driver structure.
> + *
> + * @total_size: The total size in bytes pstore/blk can use. It must be greater
> + *		than 4096 and be multiple of 4096.
> + * @flags:	Refer to macro starting with PSTORE_FLAGS defined in
> + *		linux/pstore.h. It means what front-ends this device support.
> + *		Zero means all backends for compatible.
> + * @read:	The general read operation. Both of the function parameters
> + *		@size and @offset are relative value to bock device (not the
> + *		whole disk).
> + *		On success, the number of bytes should be returned, others
> + *		means error.
> + * @write:	The same as @read.
> + * @panic_write:The write operation only used for panic case. It's optional
> + *		if you do not care panic log. The parameters and return value
> + *		are the same as @read.
> + */
> +struct pstore_device_info {
> +	unsigned long total_size;
> +	unsigned int flags;
> +	pstore_zone_read_op read;
> +	pstore_zone_write_op write;
> +	pstore_zone_write_op panic_write;
> +};
> +
> +static int psblk_register_do(struct pstore_device_info *dev)
> +{
> +	int ret;
> +
> +	if (!dev || !dev->total_size || !dev->read || !dev->write)
> +		return -EINVAL;
> +
> +	mutex_lock(&pstore_blk_lock);
> +
> +	/* someone already registered before */
> +	if (pstore_zone_info) {
> +		mutex_unlock(&pstore_blk_lock);
> +		return -EBUSY;
> +	}
> +	pstore_zone_info = kzalloc(sizeof(struct pstore_zone_info), GFP_KERNEL);
> +	if (!pstore_zone_info) {
> +		mutex_unlock(&pstore_blk_lock);
> +		return -ENOMEM;
> +	}
> +
> +	/* zero means not limit on which backends to attempt to store. */
> +	if (!dev->flags)
> +		dev->flags = UINT_MAX;
> +
> +#define verify_size(name, alignsize, enabled) {				\
> +		long _##name_ = (enabled) ? (name) : 0;			\
> +		_##name_ = _##name_ <= 0 ? 0 : (_##name_ * 1024);	\
> +		if (_##name_ & ((alignsize) - 1)) {			\
> +			pr_info(#name " must align to %d\n",		\
> +					(alignsize));			\
> +			_##name_ = ALIGN(name, (alignsize));		\
> +		}							\
> +		name = _##name_ / 1024;					\
> +		pstore_zone_info->name = _##name_;			\
> +	}
> +
> +	verify_size(kmsg_size, 4096, dev->flags & PSTORE_FLAGS_DMESG);
> +#undef verify_size
> +
> +	pstore_zone_info->total_size = dev->total_size;
> +	pstore_zone_info->max_reason = max_reason;
> +	pstore_zone_info->read = dev->read;
> +	pstore_zone_info->write = dev->write;
> +	pstore_zone_info->panic_write = dev->panic_write;
> +	pstore_zone_info->name = KBUILD_MODNAME;
> +	pstore_zone_info->owner = THIS_MODULE;
> +
> +	ret = register_pstore_zone(pstore_zone_info);
> +	if (ret) {
> +		kfree(pstore_zone_info);
> +		pstore_zone_info = NULL;
> +	}
> +	mutex_unlock(&pstore_blk_lock);
> +	return ret;
> +}
> +
> +static void psblk_unregister_do(struct pstore_device_info *dev)
> +{
> +	mutex_lock(&pstore_blk_lock);
> +	if (pstore_zone_info && pstore_zone_info->read == dev->read) {
> +		unregister_pstore_zone(pstore_zone_info);
> +		kfree(pstore_zone_info);
> +		pstore_zone_info = NULL;
> +	}
> +	mutex_unlock(&pstore_blk_lock);
> +}
> +
> +/**
> + * psblk_get_bdev() - open block device
> + *
> + * @holder:	Exclusive holder identifier
> + * @info:	Information about bdev to fill in
> + *
> + * Return: pointer to block device on success and others on error.
> + *
> + * On success, the returned block_device has reference count of one.
> + */
> +static struct block_device *psblk_get_bdev(void *holder,
> +					   struct bdev_info *info)


Well. That's pretty a good idea to get information about block device
after registering. And after your codes, the global variable g_bdev_info is
useless. It's time to drop it.


> +{
> +	struct block_device *bdev = ERR_PTR(-ENODEV);
> +	fmode_t mode = FMODE_READ | FMODE_WRITE;
> +	sector_t nr_sects;
> +
> +	if (WARN_ON(!mutex_is_locked(&pstore_blk_lock)))
> +		return ERR_PTR(-EINVAL);
> +
> +	if (pstore_zone_info)
> +		return ERR_PTR(-EBUSY);
> +
> +	if (!blkdev[0])
> +		return ERR_PTR(-ENODEV);
> +
> +	if (holder)
> +		mode |= FMODE_EXCL;
> +	bdev = blkdev_get_by_path(blkdev, mode, holder);
> +	if (IS_ERR(bdev)) {
> +		dev_t devt;
> +
> +		devt = name_to_dev_t(blkdev);
> +		if (devt == 0)
> +			return ERR_PTR(-ENODEV);
> +		bdev = blkdev_get_by_dev(devt, mode, holder);
> +	}

We should check bdev here. Otherwise, part_nr_sects_read()
may catch segment error.

	if (IS_ERR(bdev))
		return bdev;

> +
> +	nr_sects = part_nr_sects_read(bdev->bd_part);
> +	if (!nr_sects) {
> +		pr_err("not enough space for '%s'\n", blkdev);
> +		blkdev_put(bdev, mode);
> +		return ERR_PTR(-ENOSPC);
> +	}
> +
> +	if (info) {
> +		info->devt = bdev->bd_dev;
> +		info->nr_sects = nr_sects;
> +		info->start_sect = get_start_sect(bdev);
> +	}
> +
> +	return bdev;
> +}
> +
> +static void psblk_put_bdev(struct block_device *bdev, void *holder)
> +{
> +	fmode_t mode = FMODE_READ | FMODE_WRITE;
> +
> +	if (!bdev)
> +		return;
> +
> +	if (WARN_ON(!mutex_is_locked(&pstore_blk_lock)))
> +		return;
> +
> +	if (holder)
> +		mode |= FMODE_EXCL;
> +	blkdev_put(bdev, mode);
> +}
> +
> +static ssize_t psblk_generic_blk_read(char *buf, size_t bytes, loff_t pos)
> +{
> +	struct block_device *bdev = psblk_bdev;
> +	struct file file;
> +	struct kiocb kiocb;
> +	struct iov_iter iter;
> +	struct kvec iov = {.iov_base = buf, .iov_len = bytes};
> +
> +	if (!bdev)
> +		return -ENODEV;
> +
> +	memset(&file, 0, sizeof(struct file));
> +	file.f_mapping = bdev->bd_inode->i_mapping;
> +	file.f_flags = O_DSYNC | __O_SYNC | O_NOATIME;
> +	file.f_inode = bdev->bd_inode;
> +	file_ra_state_init(&file.f_ra, file.f_mapping);
> +
> +	init_sync_kiocb(&kiocb, &file);
> +	kiocb.ki_pos = pos;
> +	iov_iter_kvec(&iter, READ, &iov, 1, bytes);
> +
> +	return generic_file_read_iter(&kiocb, &iter);
> +}
> +
> +static ssize_t psblk_generic_blk_write(const char *buf, size_t bytes,
> +		loff_t pos)
> +{
> +	struct block_device *bdev = psblk_bdev;
> +	struct iov_iter iter;
> +	struct kiocb kiocb;
> +	struct file file;
> +	ssize_t ret;
> +	struct kvec iov = {.iov_base = (void *)buf, .iov_len = bytes};
> +
> +	if (!bdev)
> +		return -ENODEV;
> +
> +	/* Console/Ftrace backend may handle buffer until flush dirty zones */
> +	if (in_interrupt() || irqs_disabled())
> +		return -EBUSY;
> +
> +	memset(&file, 0, sizeof(struct file));
> +	file.f_mapping = bdev->bd_inode->i_mapping;
> +	file.f_flags = O_DSYNC | __O_SYNC | O_NOATIME;
> +	file.f_inode = bdev->bd_inode;
> +
> +	init_sync_kiocb(&kiocb, &file);
> +	kiocb.ki_pos = pos;
> +	iov_iter_kvec(&iter, WRITE, &iov, 1, bytes);
> +
> +	inode_lock(bdev->bd_inode);
> +	ret = generic_write_checks(&kiocb, &iter);
> +	if (ret > 0)
> +		ret = generic_perform_write(&file, &iter, pos);
> +	inode_unlock(bdev->bd_inode);
> +
> +	if (likely(ret > 0)) {
> +		const struct file_operations f_op = {.fsync = blkdev_fsync};
> +
> +		file.f_op = &f_op;
> +		kiocb.ki_pos += ret;
> +		ret = generic_write_sync(&kiocb, ret);
> +	}
> +	return ret;
> +}
> +
> +static ssize_t psblk_blk_panic_write(const char *buf, size_t size,
> +		loff_t off)
> +{
> +	int ret;
> +
> +	if (!blkdev_panic_write)
> +		return -EOPNOTSUPP;
> +
> +	/* size and off must align to SECTOR_SIZE for block device */
> +	ret = blkdev_panic_write(buf, off >> SECTOR_SHIFT,
> +			size >> SECTOR_SHIFT);
> +	return ret ? -EIO : size;
> +}
> +
> +static int __register_pstore_blk(struct pstore_blk_info *info)
> +{
> +	char bdev_name[BDEVNAME_SIZE];
> +	struct block_device *bdev;
> +	struct pstore_device_info dev;
> +	struct bdev_info binfo;
> +	void *holder = blkdev;
> +	int ret = -ENODEV;
> +
> +	if (WARN_ON(!mutex_is_locked(&pstore_blk_lock)))
> +		return -EINVAL;
> +
> +	/* hold bdev exclusively */
> +	memset(&binfo, 0, sizeof(binfo));
> +	bdev = psblk_get_bdev(holder, &binfo);
> +	if (IS_ERR(bdev)) {
> +		pr_err("failed to open '%s'!\n", blkdev);
> +		ret = PTR_ERR(bdev);
> +		goto err_put_bdev;

It should not goto err_put_bdev since bdev already be put if get_bdev()
fail.

> +	}
> +
> +	/* only allow driver matching the @blkdev */
> +	if (!binfo.devt || MAJOR(binfo.devt) != info->major) {
> +		pr_debug("invalid major %u (expect %u)\n",
> +				info->major, MAJOR(binfo.devt));
> +		ret = -ENODEV;
> +		goto err_put_bdev;
> +	}
> +
> +	/* psblk_bdev must be assigned before register to pstore/blk */
> +	psblk_bdev = bdev;
> +	blkdev_panic_write = info->panic_write;
> +
> +	/* Copy back block device details. */
> +	info->devt = binfo.devt;
> +	info->nr_sects = binfo.nr_sects;
> +	info->start_sect = binfo.start_sect;
> +
> +	memset(&dev, 0, sizeof(dev));
> +	dev.total_size = info->nr_sects << SECTOR_SHIFT;
> +	dev.flags = info->flags;
> +	dev.read = psblk_generic_blk_read;
> +	dev.write = psblk_generic_blk_write;
> +	dev.panic_write = info->panic_write ? psblk_blk_panic_write : NULL;
> +
> +	ret = psblk_register_do(&dev);
> +	if (ret)
> +		goto err_put_bdev;
> +
> +	bdevname(bdev, bdev_name);
> +	pr_info("attached %s%s\n", bdev_name,
> +		info->panic_write ? "" : " (no dedicated panic_write!)");
> +	return 0;
> +
> +err_put_bdev:
> +	psblk_bdev = NULL;
> +	blkdev_panic_write = NULL;
> +	psblk_put_bdev(bdev, holder);
> +	return ret;
> +}
> +
> +/**
> + * register_pstore_blk() - register block device to pstore/blk
> + *
> + * @info: details on the desired block device interface
> + *
> + * Return:
> + * * 0		- OK
> + * * Others	- something error.
> + */
> +int register_pstore_blk(struct pstore_blk_info *info)
> +{
> +	int ret;
> +
> +	mutex_lock(&pstore_blk_lock);
> +	ret = __register_pstore_blk(info);
> +	mutex_unlock(&pstore_blk_lock);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(register_pstore_blk);
> +
> +static void __unregister_pstore_blk(unsigned int major)
> +{
> +	struct pstore_device_info dev = { .read = psblk_generic_blk_read };
> +	void *holder = blkdev;
> +
> +	WARN_ON(!mutex_is_locked(&pstore_blk_lock));
> +	if (psblk_bdev && MAJOR(psblk_bdev->bd_dev) == major) {
> +		psblk_unregister_do(&dev);
> +		psblk_put_bdev(psblk_bdev, holder);
> +		blkdev_panic_write = NULL;
> +		psblk_bdev = NULL;
> +		memset(&g_bdev_info, 0, sizeof(g_bdev_info));

Also here.

> +	}
> +}
> +
> +/**
> + * unregister_pstore_blk() - unregister block device from pstore/blk
> + *
> + * @major: the major device number of device
> + */
> +void unregister_pstore_blk(unsigned int major)
> +{
> +	mutex_lock(&pstore_blk_lock);
> +	__unregister_pstore_blk(major);
> +	mutex_unlock(&pstore_blk_lock);
> +}
> +EXPORT_SYMBOL_GPL(unregister_pstore_blk);
> +
> +static void __exit pstore_blk_exit(void)
> +{
> +	mutex_lock(&pstore_blk_lock);
> +	if (psblk_bdev)
> +		__unregister_pstore_blk(MAJOR(psblk_bdev->bd_dev));
> +	mutex_unlock(&pstore_blk_lock);
> +}
> +module_exit(pstore_blk_exit);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("WeiXiong Liao <liaoweixiong@allwinnertech.com>");
> +MODULE_AUTHOR("Kees Cook <keescook@chromium.org>");
> +MODULE_DESCRIPTION("pstore backend for block devices");
> diff --git a/include/linux/pstore_blk.h b/include/linux/pstore_blk.h
> new file mode 100644
> index 000000000000..4501977b1336
> --- /dev/null
> +++ b/include/linux/pstore_blk.h
> @@ -0,0 +1,51 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __PSTORE_BLK_H_
> +#define __PSTORE_BLK_H_
> +
> +#include <linux/types.h>
> +#include <linux/pstore.h>
> +#include <linux/pstore_zone.h>
> +
> +/**
> + * typedef pstore_blk_panic_write_op - panic write operation to block device
> + *
> + * @buf: the data to write
> + * @start_sect: start sector to block device
> + * @sects: sectors count on buf
> + *
> + * Return: On success, zero should be returned. Others mean error.
> + *
> + * Panic write to block device must be aligned to SECTOR_SIZE.
> + */
> +typedef int (*pstore_blk_panic_write_op)(const char *buf, sector_t start_sect,
> +		sector_t sects);
> +
> +/**
> + * struct pstore_blk_info - pstore/blk registration details
> + *
> + * @major:	Which major device number to support with pstore/blk
> + * @flags:	The supported PSTORE_FLAGS_* from linux/pstore.h.
> + * @panic_write:The write operation only used for the panic case.
> + *		This can be NULL, but is recommended to avoid losing
> + *		crash data if the kernel's IO path or work queues are
> + *		broken during a panic.
> + * @devt:	The dev_t that pstore/blk has attached to.
> + * @nr_sects:	Number of sectors on @devt.
> + * @start_sect:	Starting sector on @devt.
> + */
> +struct pstore_blk_info {
> +	unsigned int major;
> +	unsigned int flags;
> +	pstore_blk_panic_write_op panic_write;
> +
> +	/* Filled in by pstore/blk after registration. */
> +	dev_t devt;
> +	sector_t nr_sects;
> +	sector_t start_sect;
> +};
> +
> +int  register_pstore_blk(struct pstore_blk_info *info);
> +void unregister_pstore_blk(unsigned int major);
> +
> +#endif
> 

-- 
WeiXiong Liao

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
