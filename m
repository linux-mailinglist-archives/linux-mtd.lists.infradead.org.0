Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813271CABC9
	for <lists+linux-mtd@lfdr.de>; Fri,  8 May 2020 14:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXPFgVPNlCOjQ+HGs2DgaHbwLyNsE1oQRinfRcATjSo=; b=jb6P1kcKSEtWfM
	Vs8ERMBgeUR0h7rfmOehGFyFYj8/anluPKopmkf3dgQ+wRSp4X8nB4EKXht4WjQE2LN5rSr3ae5Bm
	xWY56dJPq/xeBFbkA6MtJsLiDidE22fRLy3VMECdFmndCqA0GPIr9DgRggUcE8ed+ncWyfBo+dhf0
	/VvjlgIxQPGdPuMrqDSlQpK3Lbg5ySCU5dHqyjT6FjkOyJwGaVgB4oZeXihTk+6nti3bq6BDvbS0C
	xKJ/ElanEDSaBV2/DtvW8nl1LNjO92wcsLhUpwbCVeWm1ZyjDuq8DFwHheTqcZMxfH+6bPGT2rkkO
	ea2tp9qUQB66lgEq6Nsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX2PE-0003vn-RV; Fri, 08 May 2020 12:47:08 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX2P4-0003is-H8
 for linux-mtd@lists.infradead.org; Fri, 08 May 2020 12:47:01 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.07441439|-1; CH=green;
 DM=|CONTINUE|false|;
 DS=CONTINUE|ham_system_inform|0.221532-0.00382694-0.774641;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03293; MF=liaoweixiong@allwinnertech.com; NM=1;
 PH=DS; RN=16; RT=16; SR=0; TI=SMTPD_---.HVGJWfr_1588942007; 
Received: from 172.16.10.102(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.HVGJWfr_1588942007)
 by smtp.aliyun-inc.com(10.147.41.121);
 Fri, 08 May 2020 20:46:48 +0800
Subject: Re: [PATCH v3 02/11] pstore/blk: new support logger for block devices
To: Kees Cook <keescook@chromium.org>
References: <1585126506-18635-1-git-send-email-liaoweixiong@allwinnertech.com>
 <1585126506-18635-3-git-send-email-liaoweixiong@allwinnertech.com>
 <202005072301.57F73B61CC@keescook>
From: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Message-ID: <6dcadbb0-8720-7973-8b33-747ae0579567@allwinnertech.com>
Date: Fri, 8 May 2020 20:46:52 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <202005072301.57F73B61CC@keescook>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_054658_942212_C63426A5 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [121.197.207.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Tony Luck <tony.luck@intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Anton Vorontsov <anton@enomsg.org>,
 linux-doc@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Colin Cross <ccross@android.com>,
 linux-mtd@lists.infradead.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

hi Kees Cook,

On 2020/5/8 PM 2:07, Kees Cook wrote:
> On Wed, Mar 25, 2020 at 04:54:57PM +0800, WeiXiong Liao wrote:
>> pstore/blk is similar to pstore/ram, but dump log to block device
>> rather than persistent ram.
>> [...]
>> +int psblk_register_blkdev(unsigned int major, psblk_panic_write_op panic_write)
>> +{
>> +	struct block_device *bdev;
>> +	struct psblk_device dev = {0};
>> +	struct bdev_info *binfo;
>> +	int ret = -ENODEV;
>> +	void *holder = blkdev;
>> +
>> +	binfo = psblk_get_bdev_info();
>> +	if (IS_ERR(binfo))
>> +		return PTR_ERR(binfo);
>> +
>> +	/* only allow driver matching the @blkdev */
>> +	if (!binfo->devt || MAJOR(binfo->devt) != major) {
>> +		pr_debug("invalid major %u (expect %u)\n",
>> +				major, MAJOR(binfo->devt));
>> +		return -ENODEV;
>> +	}
>> +
>> +	/* hold bdev exclusively */
>> +	bdev = psblk_get_bdev(holder);
>> +	if (IS_ERR(bdev)) {
>> +		pr_err("failed to open '%s'!\n", blkdev);
>> +		return PTR_ERR(bdev);
>> +	}
>> +
>> +	/* psblk_bdev must be assigned before register to pstore/blk */
>> +	psblk_bdev = bdev;
>> +	blkdev_panic_write = panic_write;
>> +
>> +	dev.total_size = psblk_bdev_size(bdev);
>> +	dev.panic_write = panic_write ? psblk_blk_panic_write : NULL;
>> +	dev.read = psblk_generic_blk_read;
>> +	dev.write = psblk_generic_blk_write;
>> +
>> +	ret = psblk_register_do(&dev);
>> +	if (ret)
>> +		goto err_put_bdev;
>> +
>> +	pr_info("using '%s'\n", blkdev);
>> +	return 0;
>> +
>> +err_put_bdev:
>> +	psblk_bdev = NULL;
>> +	blkdev_panic_write = NULL;
>> +	psblk_put_bdev(bdev, holder);
>> +	return ret;
>> +}
>> +EXPORT_SYMBOL_GPL(psblk_register_blkdev);
> 
> I've gotten this series refactored on top of current pstore, and I've
> been making various bikeshed changes to names, etc, and as I went to go
> start testing, I realized that nothing actually uses
> psblk_register_blkdev().
> 
> It seems like it should be possible to just start using this on any
> block device of the user's choosing. I assume the idea is to allow for
> drivers to register panic_write handlers, but even without that, it'd be
> nice to just be able to test this with something like /dev/loop0.
> 

Yes. psblk_register_blkdev() is there for block drivers to register
panic_write()
handlers. The panic_wrire() is used only when panic occurs. Not only the
panic
log, but also all data on dirty zones. I implement the panic_write() of mmc
and nand on the platform of Allwinner, but I think it is not ready to
submit to
community.

All other front-ends but dmesg for panic are available since pstore/blk
provides
the general write/read through IO stack. That's why /dev/loop0 seemed to
works well.

> What's your thinking on how this would happen? It seems like if
> pstore/blk uses pstore/zone, and mtdpstore uses pstore/blk, there should
> be a blkoops that uses pstore/blk too?  I guess I need to learn a bit> more about how block device probing works so pstore/blk can notice
> devices as they're brought online, etc.
> 

pstore/blk provides all  user options and register function for device
drivers.
The mtdpstore is the implementation case using pstore/blk. How about
'mmc_pstore' for mmc and *_pstore for others block device?

I guess I need to learn more about how pstore/blk can notice devices too.
I think pstore/blk can be better if block device can do like mtd device that
not only notifies but also provides generic panic_write().

-- 
WeiXiong Liao

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
