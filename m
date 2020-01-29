Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0B214C701
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Jan 2020 08:41:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JovGw0JXB1h8J4tvTgCdtdmCe2f2rRx2O5bKgt1IOVc=; b=kzyijZ4VjGXWQSAZdJdNSrljdA
	pgs9lTsvZAwA6w3+rehn8TfhjuW5/2zhleBzrwJGq0ZylCSIspKXG2o4nE8ObV0IxhiNwrGaCPWTo
	+0vMc1JXOsTuRNEO/oaABzDfiaTU1V0jFfDyG0COzRajxGzfNWzZiMq7I9aNged2RDyTouV0OJYcv
	htr0qSzSgxe/jsBGx7CUUUUb/Fjq8lD8xeB1q0AJIC/qP3QwINjJYzFNERqnthEGqTIsh0eZU16+F
	Pf9rZ9JjFstg8z3HsSBA7IqemhTug0hT+SKQtHBsO5Z7dhlftSh1ukj89jsQKUh4K3t4tbixe/xnm
	Y5dHTLKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwhyz-0002uE-A0; Wed, 29 Jan 2020 07:41:53 +0000
Received: from mail.thorsis.com ([92.198.35.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwhyr-0002tq-QT
 for linux-mtd@lists.infradead.org; Wed, 29 Jan 2020 07:41:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.thorsis.com (Postfix) with ESMTP id 5BD85119B
 for <linux-mtd@lists.infradead.org>; Wed, 29 Jan 2020 08:36:29 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mail.thorsis.com
Received: from mail.thorsis.com ([127.0.0.1])
 by localhost (mail.thorsis.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jxjp5Ub8wdjN for <linux-mtd@lists.infradead.org>;
 Wed, 29 Jan 2020 08:36:29 +0100 (CET)
Received: by mail.thorsis.com (Postfix, from userid 109)
 id 3766B1AB5; Wed, 29 Jan 2020 08:36:29 +0100 (CET)
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NO_RECEIVED,
 NO_RELAYS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
 version=3.4.2
From: Alexander Dahl <ada@thorsis.com>
To: linux-mtd@lists.infradead.org
Subject: Re: [PATCH 1/8] mtd-utils: Fix printf format specifies with the wrong
 type
Date: Wed, 29 Jan 2020 08:36:25 +0100
Message-ID: <1687829.rdH24INEY4@ada>
In-Reply-To: <20200128172715.19545-2-david.oberhollenzer@sigma-star.at>
References: <20200128172715.19545-1-david.oberhollenzer@sigma-star.at>
 <20200128172715.19545-2-david.oberhollenzer@sigma-star.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_234146_183423_624CD817 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: richard@nod.at, David Oberhollenzer <david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello David,

Am Dienstag, 28. Januar 2020, 18:27:08 CET schrieb David Oberhollenzer:
> Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
> ---
>  misc-utils/flashcp.c        | 8 ++++----
>  tests/ubi-tests/io_paral.c  | 4 ++--
>  tests/ubi-tests/io_read.c   | 2 +-
>  tests/ubi-tests/io_update.c | 4 ++--
>  4 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/misc-utils/flashcp.c b/misc-utils/flashcp.c
> index b6ad2f9..1270422 100644
> --- a/misc-utils/flashcp.c
> +++ b/misc-utils/flashcp.c
> @@ -337,12 +337,12 @@ int main (int argc,char *argv[])
>  			if (result < 0)
>  			{
>  				log_printf (LOG_ERROR,
> -						"While writing data to 0x%.8x-0x%.8x on %s: %m\n",
> +						"While writing data to 0x%.8lx-0x%.8lx on %s: %m\n",
>  						written,written + i,device);
>  				exit (EXIT_FAILURE);
>  			}
>  			log_printf (LOG_ERROR,
> -					"Short write count returned while writing to x%.8x-0x%.8x on 
%s:
> %d/%llu bytes written to flash\n", +					"Short write count 
returned while
> writing to x%.8lx-0x%.8lx on %s: %lu/%llu bytes written to flash\n",
> written,written + i,device,written + result,(unsigned long
> long)filestat.st_size); exit (EXIT_FAILURE);
>  		}

The correct length specifier for variables of type size_t would be 'z' so the 
format specifier would be %zx or %zu. The 'l' for long might work on one 
platform but lead to a warning on another. We face this regularly when 
compiling the same source for 64 bit x86 and 32 bit arm.

> @@ -372,7 +372,7 @@ int main (int argc,char *argv[])
>  		if (size < BUFSIZE) i = size;
>  		if (flags & FLAG_VERBOSE)
>  			log_printf (LOG_NORMAL,
> -					"\rVerifying data: %dk/%lluk (%llu%%)",
> +					"\rVerifying data: %luk/%lluk (%llu%%)",
>  					KB (written + i),
>  					KB ((unsigned long long)filestat.st_size),
>  					PERCENTAGE (written + i,(unsigned long long)filestat.st_size));
> @@ -387,7 +387,7 @@ int main (int argc,char *argv[])
>  		if (memcmp (src,dest,i))
>  		{
>  			log_printf (LOG_ERROR,
> -					"File does not seem to match flash data. First mismatch at
> 0x%.8x-0x%.8x\n", +					"File does not seem to match flash data. 
First
> mismatch at 0x%.8lx-0x%.8lx\n", written,written + i);
>  			exit (EXIT_FAILURE);
>  		}

Same with that ones.

I'm not sure of those 'written + i' though, might be different due to integer 
promotion.

Greets
Alex

> diff --git a/tests/ubi-tests/io_paral.c b/tests/ubi-tests/io_paral.c
> index 4040b3e..b0884fe 100644
> --- a/tests/ubi-tests/io_paral.c
> +++ b/tests/ubi-tests/io_paral.c
> @@ -207,7 +207,7 @@ static void *write_thread(void *ptr)
>  		ret = pwrite(fd, wbuf, dev_info.leb_size, offs);
>  		if (ret != dev_info.leb_size) {
>  			failed("pwrite");
> -			errorm("cannot write %d bytes to offs %lld, wrote %d",
> +			errorm("cannot write %d bytes to offs %ld, wrote %d",
>  				dev_info.leb_size, offs, ret);
>  			break;
>  		}
> @@ -216,7 +216,7 @@ static void *write_thread(void *ptr)
>  		ret = pread(fd, rbuf, dev_info.leb_size, offs);
>  		if (ret != dev_info.leb_size) {
>  			failed("read");
> -			errorm("failed to read %d bytes at offset %d "
> +			errorm("failed to read %d bytes at offset %ld "
>  			       "of volume %d", dev_info.leb_size, offs,
>  			       vol_id);
>  			break;
> diff --git a/tests/ubi-tests/io_read.c b/tests/ubi-tests/io_read.c
> index f944a86..a6cc8f5 100644
> --- a/tests/ubi-tests/io_read.c
> +++ b/tests/ubi-tests/io_read.c
> @@ -233,7 +233,7 @@ static int test_read2(const struct ubi_vol_info
> *vol_info, int len) continue;
> 
>  		if (test_read3(vol_info, len, offsets[i])) {
> -			errorm("offset = %d", offsets[i]);
> +			errorm("offset = %ld", offsets[i]);
>  			return -1;
>  		}
>  	}
> diff --git a/tests/ubi-tests/io_update.c b/tests/ubi-tests/io_update.c
> index f48df1d..d093da5 100644
> --- a/tests/ubi-tests/io_update.c
> +++ b/tests/ubi-tests/io_update.c
> @@ -189,11 +189,11 @@ static int test_update1(struct ubi_vol_info *vol_info,
> int leb_change) ret = read(fd, buf1, test_len);
>  		if (ret < 0) {
>  			failed("read");
> -			errorm("failed to read %d bytes", test_len);
> +			errorm("failed to read %lld bytes", test_len);
>  			goto close;
>  		}
>  		if (ret != test_len) {
> -			errorm("failed to read %d bytes, read %d", test_len, ret);
> +			errorm("failed to read %lld bytes, read %d", test_len, ret);
>  			goto close;
>  		}
>  		if (memcmp(buf, buf1, test_len)) {



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
