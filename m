Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBE31C239D
	for <lists+linux-mtd@lfdr.de>; Sat,  2 May 2020 08:45:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdB6uEfF+W9bR62au3Sr1FGfMMufdVH9PutUQdcEDHQ=; b=DtF56Dh9MH4v6b
	fGODS6Ar2t+wLPyC4vK+JPtAAkXwWdwxf3nE/tamsTl/CV28SKyItYrCXzJpDb/aNEkwmFMhUy7h7
	egPkG7of7Yvg+4P6MVsO8Q5cdV5j35manjZEycliwukbC15+aUn9+wN+2BOeyRq0OtbKf108FSgIz
	x8DJNnYxcozX1KVGHHThSOQ/HybykdUrpSDrPsgNrgVIrdajvVAmGlZQX3Ax8srjWBqBTtWHu5sic
	iuoBWW+vXucvS2o60pK1m8Q4p73rqHhmusRVdNMPANMgKs0EonnXJExuDAbKBX5AAbD5J2ubV2spU
	+bqJozXKt2nlmeJ9+JCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUlu1-0005Fu-9A; Sat, 02 May 2020 06:45:33 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUltq-0005Ep-6j
 for linux-mtd@lists.infradead.org; Sat, 02 May 2020 06:45:25 +0000
Received: from [192.168.1.91] (p4FEFC5A7.dip0.t-ipconnect.de [79.239.197.167])
 by mail.holtmann.org (Postfix) with ESMTPSA id 45329CED2C;
 Sat,  2 May 2020 08:54:48 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH 00/20] crypto: introduce crypto_shash_tfm_digest()
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20200502053122.995648-1-ebiggers@kernel.org>
Date: Sat, 2 May 2020 08:44:37 +0200
Message-Id: <5E6F9382-3D91-4587-980A-377E7CB086E4@holtmann.org>
References: <20200502053122.995648-1-ebiggers@kernel.org>
To: Eric Biggers <ebiggers@kernel.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_234522_390586_0E4B5AD6 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 linux-bluetooth <linux-bluetooth@vger.kernel.org>,
 Kamil Konieczny <k.konieczny@samsung.com>,
 Robert Baldyga <r.baldyga@samsung.com>, ecryptfs@vger.kernel.org,
 Krzysztof Opasiak <k.opasiak@samsung.com>, linux-nfs@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Gilad Ben-Yossef <gilad@benyossef.com>, linux-sctp@vger.kernel.org,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Zaibo Xu <xuzaibo@huawei.com>,
 Lars Persson <lars.persson@axis.com>, Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Eric,

> This series introduces a helper function crypto_shash_tfm_digest() which
> replaces the following common pattern:
> 
> 	{
> 		SHASH_DESC_ON_STACK(desc, tfm);
> 		int err;
> 
> 		desc->tfm = tfm;
> 
> 		err = crypto_shash_digest(desc, data, len, out);
> 
> 		shash_desc_zero(desc);
> 	}
> 
> with:
> 
> 	err = crypto_shash_tfm_digest(tfm, data, len, out);
> 
> Patch 1 introduces this helper function, and patches 2-20 convert all
> relevant users to use it.
> 
> IMO, it would be easiest to take all these patches through the crypto
> tree.  But taking just the "crypto:" ones and then me trying to get the
> rest merged later via subsystem trees is also an option.

I am fine if you take the net/bluetooth/smp.c change through the crypto tree.

Acked-by: Marcel Holtmann <marcel@holtmann.org>

Regards

Marcel


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
