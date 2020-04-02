Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0A319C702
	for <lists+linux-mtd@lfdr.de>; Thu,  2 Apr 2020 18:25:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OEw1RtuJ/fsP7ffBwFjVWcnDFUuvyEQgfZ6svnCdi/A=; b=oU9+SihYRNd5NM
	CrPkNTn99t/UmST4E+TGZ4ShJmIk4iA9TPNaEqrqkVo98dMBKxD2s1xO/7M4l9W7nYiY2tQVJMSyv
	kcArOAKu3aDsiMjuw5Wk+Xl0gwe+phLQ6jN/07/Id8ZtDzwqQPiAt8K7Xi48m0OUAhe60k6bKT+gU
	O1KmnPO1eLzUQy3z8Mz900YbBCm3CJYblMA0ZlsuVwROrh296D57OcdkfrjwGg56WJTOBXAph1ud2
	ut94AmQs3HRIuUef1MI0kJx8f0pCMYORXYxxarz5rqnOATp645ioi1Jn0/Ygh+GWBtCAFyHZkZbno
	LGvdQEF23cjyUNrvuMSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK2eb-00069q-Bh; Thu, 02 Apr 2020 16:25:17 +0000
Received: from home.bethel-hill.org ([63.228.164.32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK2eG-00069A-U9
 for linux-mtd@lists.infradead.org; Thu, 02 Apr 2020 16:24:58 +0000
Received: by home.bethel-hill.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <sjhill@realitydiluted.com>)
 id 1jK2e5-000074-H5; Thu, 02 Apr 2020 11:24:45 -0500
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Jean Delvare <jdelvare@suse.com>, linux-mtd@lists.infradead.org,
 Wolfram Sang <wsa@the-dreams.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
From: "Steven J. Hill" <sjhill@realitydiluted.com>
Subject: NVMEM and environment variables.
Autocrypt: addr=sjhill@realitydiluted.com; prefer-encrypt=mutual; keydata=
 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
 N7pcnapfBCcXut1n2w==
Message-ID: <5645947b-0b42-2ae8-b568-4abe8940a73f@realitydiluted.com>
Date: Thu, 2 Apr 2020 11:24:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_092457_126132_DCF2ED6B 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

The nvmem subsystem shows promise with regards to eeprom and efuse
driver organization and utilization of those values by other drivers.
Where it seems to be lacking is the use case of eeprom and environment
variables accessible by userspace. It seems silly to have a nvmem
driver with a single 'nvmem' or 'eeprom' binary attribute, but still
have to use 'dd' to get individual data values when they are declared
in the device tree. Why is a binary attribute not created in /sys for
each nvmem cell in the process?

I played with a mtd-nvmem driver that treated each eeprom environment
variable like a mtd character device. This was an idea so horrible the
code will never be public. I also tried a hybrid nvmem driver which
acted as producer and consumer, another monstrosity. So, in summary
why are binary attributes not be created for each nvmem cell? Other
design ideas are welcome. Cheers.

- -Steve
-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQ7FeQaKpedass6DAiDIrkfYhzfpwUCXoYRxAAKCRCDIrkfYhzf
p/AEAJ0X3cCZvbpfplAepmJ+P5SCUI132ACcC2zVtOeFm82DvRePSTri9qJtdaE=
=5yat
-----END PGP SIGNATURE-----

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
