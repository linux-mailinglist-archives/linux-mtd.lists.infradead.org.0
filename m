Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E20A18E86C
	for <lists+linux-mtd@lfdr.de>; Sun, 22 Mar 2020 12:36:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nc4szJxMlSxjPu/9+gvuDD8GwwTu8fvziic4iwjT6tI=; b=jYqKc2A2Rezq+b
	PuY/GZ+w9c6srPg40exqWVWtoRAVOO6oQNhTPFsYm2Spks9nwDC8JbllsPeRqeC8LX0UZXcmX8efs
	nhrLBby9WVxQ0fpwP5e1BGAg8gDDbSNz0R+/KP5wtI3mIC8qK9eVAJAr+wAia9k7ZyikQGdea48/w
	5HOxkFjojXT4uoWkS198Zdd+oKh/Ke9N4yvD99oroNZncpF6Zxr4GJ6ihOYjkxlkRRy428vi+3W/O
	Tbw3oM0kpVX+7SZV3In+98BwWYGWykcPIZHJl58qYFyYXYZdtu7GVPukagGw75uyUzsFZrfszUtN3
	YCF2jWvLdrn69leida1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFytu-00031X-0l; Sun, 22 Mar 2020 11:36:18 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFytU-0002p1-Ab
 for linux-mtd@lists.infradead.org; Sun, 22 Mar 2020 11:35:55 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.07436282|-1; CH=green; DM=||false|;
 DS=CONTINUE|ham_system_inform|0.433128-0.000381143-0.566491;
 FP=0|0|0|0|0|-1|-1|-1; HT=e01a16378; MF=liaoweixiong@allwinnertech.com; NM=1;
 PH=DS; RN=16; RT=16; SR=0; TI=SMTPD_---.H3QUMg7_1584876945; 
Received: from 172.16.10.102(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.H3QUMg7_1584876945)
 by smtp.aliyun-inc.com(10.147.42.241);
 Sun, 22 Mar 2020 19:35:46 +0800
Subject: Re: [PATCH v2 04/11] pstore/blk: blkoops: support console recorder
To: Kees Cook <keescook@chromium.org>
References: <1581078355-19647-1-git-send-email-liaoweixiong@allwinnertech.com>
 <1581078355-19647-5-git-send-email-liaoweixiong@allwinnertech.com>
 <202003181113.46DD4C142F@keescook>
From: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Message-ID: <1adf4aeb-0ad5-d5ba-4d24-1365e3d2cb87@allwinnertech.com>
Date: Sun, 22 Mar 2020 19:35:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <202003181113.46DD4C142F@keescook>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_043552_863781_07D933F6 
X-CRM114-Status: GOOD (  24.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

On 2020/3/19 AM 2:16, Kees Cook wrote:
> On Fri, Feb 07, 2020 at 08:25:48PM +0800, WeiXiong Liao wrote:
>> Support recorder for console. To enable console recorder, just make
>> console_size be greater than 0 and a multiple of 4096.
>>
>> Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
>> ---
>>  fs/pstore/Kconfig          |  12 ++++++
>>  fs/pstore/blkoops.c        |  11 +++++
>>  fs/pstore/blkzone.c        | 101 ++++++++++++++++++++++++++++++++++-----------
>>  include/linux/blkoops.h    |   6 ++-
>>  include/linux/pstore_blk.h |   8 +++-
>>  5 files changed, 112 insertions(+), 26 deletions(-)
>>
>> diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
>> index bbf1fdb5eaa7..5f0a42823028 100644
>> --- a/fs/pstore/Kconfig
>> +++ b/fs/pstore/Kconfig
>> @@ -198,6 +198,18 @@ config PSTORE_BLKOOPS_PMSG_SIZE
>>  	  NOTE that, both kconfig and module parameters can configure blkoops,
>>  	  but module parameters have priority over kconfig.
>>  
>> +config PSTORE_BLKOOPS_CONSOLE_SIZE
>> +	int "console size in kbytes for blkoops"
>> +	depends on PSTORE_BLKOOPS
>> +	depends on PSTORE_CONSOLE
>> +	default 64
> 
> Same tricks here as for the PMSG.
> 

Same reply as for the PMSG.

>> +	help
>> +	  This just sets size of console (console_size) for pstore/blk. The
>> +	  size is in KB and must be a multiple of 4.
>> +
>> +	  NOTE that, both kconfig and module parameters can configure blkoops,
>> +	  but module parameters have priority over kconfig.
>> +
>>  config PSTORE_BLKOOPS_BLKDEV
>>  	string "block device for blkoops"
>>  	depends on PSTORE_BLKOOPS
>> diff --git a/fs/pstore/blkoops.c b/fs/pstore/blkoops.c
>> index 02e6e4c1f965..05990bc3b168 100644
>> --- a/fs/pstore/blkoops.c
>> +++ b/fs/pstore/blkoops.c
>> @@ -20,6 +20,10 @@
>>  module_param(pmsg_size, long, 0400);
>>  MODULE_PARM_DESC(pmsg_size, "pmsg size in kbytes");
>>  
>> +static long console_size = -1;
>> +module_param(console_size, long, 0400);
>> +MODULE_PARM_DESC(console_size, "console size in kbytes");
>> +
>>  static int dump_oops = -1;
>>  module_param(dump_oops, int, 0400);
>>  MODULE_PARM_DESC(total_size, "whether dump oops");
>> @@ -70,6 +74,12 @@
>>  #define DEFAULT_PMSG_SIZE 0
>>  #endif
>>  
>> +#ifdef CONFIG_PSTORE_BLKOOPS_CONSOLE_SIZE
>> +#define DEFAULT_CONSOLE_SIZE CONFIG_PSTORE_BLKOOPS_CONSOLE_SIZE
>> +#else
>> +#define DEFAULT_CONSOLE_SIZE 0
>> +#endif
>> +
>>  #ifdef CONFIG_PSTORE_BLKOOPS_DUMP_OOPS
>>  #define DEFAULT_DUMP_OOPS CONFIG_PSTORE_BLKOOPS_DUMP_OOPS
>>  #else
>> @@ -124,6 +134,7 @@ int blkoops_register_device(struct blkoops_device *bo_dev)
>>  
>>  	verify_size(dmesg_size, DEFAULT_DMESG_SIZE, 4096);
>>  	verify_size(pmsg_size, DEFAULT_PMSG_SIZE, 4096);
>> +	verify_size(console_size, DEFAULT_CONSOLE_SIZE, 4096);
>>  #undef verify_size
>>  	dump_oops = !!(dump_oops < 0 ? DEFAULT_DUMP_OOPS : dump_oops);
>>  
>> diff --git a/fs/pstore/blkzone.c b/fs/pstore/blkzone.c
>> index a3464252d52e..9a7e9b06ccf7 100644
>> --- a/fs/pstore/blkzone.c
>> +++ b/fs/pstore/blkzone.c
>> @@ -88,9 +88,11 @@ struct blkz_zone {
>>  struct blkz_context {
>>  	struct blkz_zone **dbzs;	/* dmesg block zones */
>>  	struct blkz_zone *pbz;		/* Pmsg block zone */
>> +	struct blkz_zone *cbz;		/* console block zone */
>>  	unsigned int dmesg_max_cnt;
>>  	unsigned int dmesg_read_cnt;
>>  	unsigned int pmsg_read_cnt;
>> +	unsigned int console_read_cnt;
>>  	unsigned int dmesg_write_cnt;
>>  	/*
>>  	 * the counter should be recovered when recover.
>> @@ -111,6 +113,9 @@ struct blkz_context {
>>  };
>>  static struct blkz_context blkz_cxt;
>>  
>> +static void blkz_flush_all_dirty_zones(struct work_struct *);
>> +static DECLARE_WORK(blkz_cleaner, blkz_flush_all_dirty_zones);
>> +
>>  enum blkz_flush_mode {
>>  	FLUSH_NONE = 0,
>>  	FLUSH_PART,
>> @@ -200,6 +205,9 @@ static int blkz_zone_write(struct blkz_zone *zone,
>>  	return 0;
>>  set_dirty:
>>  	atomic_set(&zone->dirty, true);
>> +	/* flush dirty zones nicely */
>> +	if (wcnt == -EBUSY && !is_on_panic())
>> +		schedule_work(&blkz_cleaner);
>>  	return -EBUSY;
>>  }
>>  
>> @@ -266,6 +274,15 @@ static int blkz_move_zone(struct blkz_zone *old, struct blkz_zone *new)
>>  	return 0;
>>  }
>>  
>> +static void blkz_flush_all_dirty_zones(struct work_struct *work)
>> +{
>> +	struct blkz_context *cxt = &blkz_cxt;
>> +
>> +	blkz_flush_dirty_zone(cxt->pbz);
>> +	blkz_flush_dirty_zone(cxt->cbz);
>> +	blkz_flush_dirty_zones(cxt->dbzs, cxt->dmesg_max_cnt);
>> +}
>> +
>>  static int blkz_recover_dmesg_data(struct blkz_context *cxt)
>>  {
>>  	struct blkz_info *info = cxt->bzinfo;
>> @@ -419,15 +436,13 @@ static int blkz_recover_dmesg(struct blkz_context *cxt)
>>  	return ret;
>>  }
>>  
>> -static int blkz_recover_pmsg(struct blkz_context *cxt)
>> +static int blkz_recover_zone(struct blkz_context *cxt, struct blkz_zone *zone)
>>  {
>>  	struct blkz_info *info = cxt->bzinfo;
>>  	struct blkz_buffer *oldbuf;
>> -	struct blkz_zone *zone = NULL;
>>  	int ret = 0;
>>  	ssize_t rcnt, len;
>>  
>> -	zone = cxt->pbz;
>>  	if (!zone || zone->oldbuf)
>>  		return 0;
>>  
>> @@ -493,7 +508,11 @@ static inline int blkz_recovery(struct blkz_context *cxt)
>>  	if (ret)
>>  		goto recover_fail;
>>  
>> -	ret = blkz_recover_pmsg(cxt);
>> +	ret = blkz_recover_zone(cxt, cxt->pbz);
>> +	if (ret)
>> +		goto recover_fail;
>> +
>> +	ret = blkz_recover_zone(cxt, cxt->cbz);
>>  	if (ret)
>>  		goto recover_fail;
>>  
>> @@ -512,6 +531,7 @@ static int blkz_pstore_open(struct pstore_info *psi)
>>  
>>  	cxt->dmesg_read_cnt = 0;
>>  	cxt->pmsg_read_cnt = 0;
>> +	cxt->console_read_cnt = 0;
>>  	return 0;
>>  }
>>  
>> @@ -539,7 +559,7 @@ static inline int blkz_dmesg_erase(struct blkz_context *cxt,
>>  	return blkz_zone_write(zone, FLUSH_META, NULL, 0, 0);
>>  }
>>  
>> -static inline int blkz_pmsg_erase(struct blkz_context *cxt,
>> +static inline int blkz_record_erase(struct blkz_context *cxt,
>>  		struct blkz_zone *zone)
>>  {
>>  	if (unlikely(!blkz_old_ok(zone)))
>> @@ -566,9 +586,10 @@ static int blkz_pstore_erase(struct pstore_record *record)
>>  	case PSTORE_TYPE_DMESG:
>>  		return blkz_dmesg_erase(cxt, cxt->dbzs[record->id]);
>>  	case PSTORE_TYPE_PMSG:
>> -		return blkz_pmsg_erase(cxt, cxt->pbz);
>> -	default:
>> -		return -EINVAL;
>> +		return blkz_record_erase(cxt, cxt->pbz);
>> +	case PSTORE_TYPE_CONSOLE:
>> +		return blkz_record_erase(cxt, cxt->cbz);
>> +	default: return -EINVAL;
>>  	}
>>  }
>>  
>> @@ -653,17 +674,15 @@ static int notrace blkz_dmesg_write(struct blkz_context *cxt,
>>  	return 0;
>>  }
>>  
>> -static int notrace blkz_pmsg_write(struct blkz_context *cxt,
>> -		struct pstore_record *record)
>> +static int notrace blkz_record_write(struct blkz_context *cxt,
>> +		struct blkz_zone *zone, struct pstore_record *record)
> 
> How about generalizing this earlier in the patch series instead of
> mutating it here?
> 

OK.

>>  {
>> -	struct blkz_zone *zone;
>>  	size_t start, rem;
>>  	int cnt = record->size;
>>  	bool is_full_data = false;
>>  	char *buf = record->buf;
>>  
>> -	zone = cxt->pbz;
>> -	if (!zone)
>> +	if (!zone || !record)
>>  		return -ENOSPC;
>>  
>>  	if (atomic_read(&zone->buffer->datalen) >= zone->buffer_size)
>> @@ -710,11 +729,20 @@ static int notrace blkz_pstore_write(struct pstore_record *record)
>>  			record->reason == KMSG_DUMP_PANIC)
>>  		atomic_set(&cxt->on_panic, 1);
>>  
>> +	/*
>> +	 * if on panic, do not write except dmesg records
>> +	 * Fix case that panic_write prints log which wakes up console recorder.
>> +	 */
>> +	if (is_on_panic() && record->type != PSTORE_TYPE_DMESG)
>> +		return -EBUSY;
>> +
>>  	switch (record->type) {
>>  	case PSTORE_TYPE_DMESG:
>>  		return blkz_dmesg_write(cxt, record);
>> +	case PSTORE_TYPE_CONSOLE:
>> +		return blkz_record_write(cxt, cxt->cbz, record);
>>  	case PSTORE_TYPE_PMSG:
>> -		return blkz_pmsg_write(cxt, record);
>> +		return blkz_record_write(cxt, cxt->pbz, record);
>>  	default:
>>  		return -EINVAL;
>>  	}
>> @@ -738,6 +766,13 @@ static struct blkz_zone *blkz_read_next_zone(struct blkz_context *cxt)
>>  			return zone;
>>  	}
>>  
>> +	if (cxt->console_read_cnt == 0) {
>> +		cxt->console_read_cnt++;
>> +		zone = cxt->cbz;
>> +		if (blkz_old_ok(zone))
>> +			return zone;
>> +	}
>> +
>>  	return NULL;
>>  }
>>  
>> @@ -799,7 +834,7 @@ static ssize_t blkz_dmesg_read(struct blkz_zone *zone,
>>  	return size + hlen;
>>  }
>>  
>> -static ssize_t blkz_pmsg_read(struct blkz_zone *zone,
>> +static ssize_t blkz_record_read(struct blkz_zone *zone,
>>  		struct pstore_record *record)
>>  {
>>  	size_t size, start;
>> @@ -825,7 +860,7 @@ static ssize_t blkz_pmsg_read(struct blkz_zone *zone,
>>  static ssize_t blkz_pstore_read(struct pstore_record *record)
>>  {
>>  	struct blkz_context *cxt = record->psi->data;
>> -	ssize_t (*blkz_read)(struct blkz_zone *zone,
>> +	ssize_t (*readop)(struct blkz_zone *zone,
>>  			struct pstore_record *record);
>>  	struct blkz_zone *zone;
>>  	ssize_t ret;
>> @@ -843,17 +878,19 @@ static ssize_t blkz_pstore_read(struct pstore_record *record)
>>  	record->type = zone->type;
>>  	switch (record->type) {
>>  	case PSTORE_TYPE_DMESG:
>> -		blkz_read = blkz_dmesg_read;
>> +		readop = blkz_dmesg_read;
>>  		record->id = cxt->dmesg_read_cnt - 1;
>>  		break;
>> +	case PSTORE_TYPE_CONSOLE:
>> +		/* fallthrough */
> 
> Since this case has no body, you can leave off the "fallthrough". (But
> if you want to mark it anyway, please use "fallthrough;" instead of a
> comment.)
> 

OK. I will fix it anywhere.

>>  	case PSTORE_TYPE_PMSG:
>> -		blkz_read = blkz_pmsg_read;
>> +		readop = blkz_record_read;
>>  		break;
>>  	default:
>>  		goto next_zone;
>>  	}
>>  
>> -	ret = blkz_read(zone, record);
>> +	ret = readop(zone, record);
>>  	if (ret == READ_NEXT_ZONE)
>>  		goto next_zone;
>>  	return ret;
>> @@ -1001,15 +1038,25 @@ static int blkz_cut_zones(struct blkz_context *cxt)
>>  		goto fail_out;
>>  	}
>>  
>> +	off_size += info->console_size;
>> +	cxt->cbz = blkz_init_zone(PSTORE_TYPE_CONSOLE, &off,
>> +			info->console_size);
>> +	if (IS_ERR(cxt->cbz)) {
>> +		err = PTR_ERR(cxt->cbz);
>> +		goto free_pmsg;
>> +	}
>> +
>>  	cxt->dbzs = blkz_init_zones(PSTORE_TYPE_DMESG, &off,
>>  			info->total_size - off_size,
>>  			info->dmesg_size, &cxt->dmesg_max_cnt);
>>  	if (IS_ERR(cxt->dbzs)) {
>>  		err = PTR_ERR(cxt->dbzs);
>> -		goto free_pmsg;
>> +		goto free_console;
>>  	}
>>  
>>  	return 0;
>> +free_console:
>> +	blkz_free_zone(&cxt->cbz);
>>  free_pmsg:
>>  	blkz_free_zone(&cxt->pbz);
>>  fail_out:
>> @@ -1027,7 +1074,7 @@ int blkz_register(struct blkz_info *info)
>>  		return -EINVAL;
>>  	}
>>  
>> -	if (!info->dmesg_size && !info->pmsg_size) {
>> +	if (!info->dmesg_size && !info->pmsg_size && !info->console_size) {
>>  		pr_warn("at least one of the records be non-zero\n");
>>  		return -EINVAL;
>>  	}
>> @@ -1055,6 +1102,7 @@ int blkz_register(struct blkz_info *info)
>>  	check_size(total_size, 4096);
>>  	check_size(dmesg_size, SECTOR_SIZE);
>>  	check_size(pmsg_size, SECTOR_SIZE);
>> +	check_size(console_size, SECTOR_SIZE);
>>  
>>  #undef check_size
>>  
>> @@ -1087,6 +1135,7 @@ int blkz_register(struct blkz_info *info)
>>  	pr_debug("\ttotal size : %ld Bytes\n", info->total_size);
>>  	pr_debug("\tdmesg size : %ld Bytes\n", info->dmesg_size);
>>  	pr_debug("\tpmsg size : %ld Bytes\n", info->pmsg_size);
>> +	pr_debug("\tconsole size : %ld Bytes\n", info->console_size);
>>  
>>  	err = blkz_cut_zones(cxt);
>>  	if (err) {
>> @@ -1108,11 +1157,15 @@ int blkz_register(struct blkz_info *info)
>>  		cxt->pstore.flags |= PSTORE_FLAGS_DMESG;
>>  	if (info->pmsg_size)
>>  		cxt->pstore.flags |= PSTORE_FLAGS_PMSG;
>> +	if (info->console_size)
>> +		cxt->pstore.flags |= PSTORE_FLAGS_CONSOLE;
>>  
>> -	pr_info("Registered %s as blkzone backend for %s%s%s\n", info->name,
>> +	pr_info("Registered %s as blkzone backend for %s%s%s%s\n",
>> +			info->name,
>>  			cxt->dbzs && cxt->bzinfo->dump_oops ? "Oops " : "",
>>  			cxt->dbzs && cxt->bzinfo->panic_write ? "Panic " : "",
>> -			cxt->pbz ? "Pmsg" : "");
>> +			cxt->pbz ? "Pmsg " : "",
>> +			cxt->cbz ? "Console" : "");
>>  
>>  	err = pstore_register(&cxt->pstore);
>>  	if (err) {
>> @@ -1139,6 +1192,8 @@ void blkz_unregister(struct blkz_info *info)
>>  {
>>  	struct blkz_context *cxt = &blkz_cxt;
>>  
>> +	flush_work(&blkz_cleaner);
>> +
>>  	pstore_unregister(&cxt->pstore);
>>  	kfree(cxt->pstore.buf);
>>  	cxt->pstore.bufsize = 0;
>> diff --git a/include/linux/blkoops.h b/include/linux/blkoops.h
>> index fe63739309aa..8f40f225545d 100644
>> --- a/include/linux/blkoops.h
>> +++ b/include/linux/blkoops.h
>> @@ -23,8 +23,10 @@
>>   *	Both of the @size and @offset parameters on this interface are
>>   *	the relative size of the space provided, not the whole disk/flash.
>>   *
>> - *	On success, the number of bytes read should be returned.
>> - *	On error, negative number should be returned.
>> + *	On success, the number of bytes read/write should be returned.
>> + *	On error, negative number should be returned. The following returning
>> + *	number means more:
>> + *	  -EBUSY: pstore/blk should try again later.
>>   * @panic_write:
>>   *	The write operation only used for panic.
>>   *
>> diff --git a/include/linux/pstore_blk.h b/include/linux/pstore_blk.h
>> index af06be25bd01..546375e04419 100644
>> --- a/include/linux/pstore_blk.h
>> +++ b/include/linux/pstore_blk.h
>> @@ -22,6 +22,9 @@
>>   * @pmsg_size:
>>   *	The size of zone for pmsg. Zero means disabled, othewise, it must be
>>   *	multiple of SECTOR_SIZE(512).
>> + * @console_size:
>> + *	The size of zone for console. Zero means disabled, othewise, it must
>> + *	be multiple of SECTOR_SIZE(512).
>>   * @dump_oops:
>>   *	Dump oops and panic log or only panic.
>>   * @read, @write:
>> @@ -33,7 +36,9 @@
>>   *	the relative size of the space provided, not the whole disk/flash.
>>   *
>>   *	On success, the number of bytes read/write should be returned.
>> - *	On error, negative number should be returned.
>> + *	On error, negative number should be returned. The following returning
>> + *	number means more:
>> + *	  -EBUSY: pstore/blk should try again later.
>>   * @panic_write:
>>   *	The write operation only used for panic. It's optional if you do not
>>   *	care panic record. If panic occur but blkzone do not recover yet, the
>> @@ -54,6 +59,7 @@ struct blkz_info {
>>  	unsigned long total_size;
>>  	unsigned long dmesg_size;
>>  	unsigned long pmsg_size;
>> +	unsigned long console_size;
>>  	int dump_oops;
>>  	blkz_read_op read;
>>  	blkz_write_op write;
>> -- 
>> 1.9.1
>>
> 

-- 
WeiXiong Liao

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
