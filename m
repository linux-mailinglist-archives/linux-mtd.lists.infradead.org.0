Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF1C1E4377
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 15:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M1pNz4saayPHyZ6YY684Hza0MMhnNSTqmOcsGVrriII=; b=XUpTIxbiSZ03KH
	KRCl3US1xn0BEBkyWPym1Cb8lrYUJTDSBC29wiGbGgPYHuIAgDjgqiu1Do0zyNj7Bpf3p/Wi1WhyK
	KVtexZgktQy7LCrsHqyryAwPmqWdOVXLso3bbTVeyB/5J0FrTVsjLDrGhEWIyp+DWIsSgxSRkQ5x0
	Ni7UAjM0T0i5s+tpLrrChLEku6TDn6/6Tx5NennHJwpLLvsSrX1hc1i+TVHEoXMOj/3h/vYFx+cOb
	g85FRM9A2M2PhndhfisIpZdPw3sQVzpnA/Dt9Fre049/3dzmoRZkPTUbaaHHphLL0R78o44QKvpQq
	isrjoawEUAbzoCJyOYXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdvzR-0006U7-JF; Wed, 27 May 2020 13:21:01 +0000
Received: from smtp1.axis.com ([195.60.68.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdvzI-0006SV-Ly
 for linux-mtd@lists.infradead.org; Wed, 27 May 2020 13:20:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=812; q=dns/txt; s=axis-central1;
 t=1590585652; x=1622121652; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=f2WWzDnTb2Um4Z2e90rPrY854YD2gGya9nMvR8iED9E=;
 b=YjfNqmafhvKNMp+JEtqTlmlcxcE+9JAW2aUq/HwqzQStyPLtAxmY4Cu9
 tQuKPFKm/Fw2OZ1pED56tF6l3wQ4etZ8OWnSOHywQjNJw8Dzn9wdQCVw0
 eMlQYjwreA9KudHiC5sbFMOg7wpc0m4MnlcoBSXs1MbrkLNC1lAHMBO3E
 qGD9aA25OI06gkc8/pdHsfg9SFMVKa3+vokztSso1ffyKYuRCcR0MCUFh
 t9umCwYwuU7oYJcWCnmPPiXH5GDSZ/B0avyAwj/01xLsC7dAxSbpU69fI
 S2ZwQDjNFuYkLStPmMLUMkSbNK6yW3O+in5whssYJrLawCVx7iaMlSZlS A==;
IronPort-SDR: Z4gLSQLUrrfz43+Ijjxx1tz6GeYWXTc+N4wbm23ZKFpCjUvd8K68MdJSYLjPLIYSch4SJ3T+0n
 gj7f/WH/EEGp3xoXdjASrds8PAMB/gSVVDXS1Sqbx4urfqwkrmBcYqpJCI11rGfnBg4mwTrnsM
 ftDV/W8UU4EXLjRHcqqMbT6vQ45kEIF272II3vn6cH1TLJjauKcQu3qs4SE4SbbP0oItSVZln+
 dhqAAEMLQojKFa+e5HRYm4+JNL/gS3uV9w8+ymo+l3jnj57RVwl1815WBtPmRcG+xas9ARMToO
 kv8=
X-IronPort-AV: E=Sophos;i="5.73,441,1583190000"; 
   d="scan'208";a="9169103"
From: Rickard X Andersson <Rickard.Andersson@axis.com>
To: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "dedekind1@gmail.com" <dedekind1@gmail.com>, "richard@nod.at"
 <richard@nod.at>
Subject: ubi2 error: ubi_refill_pools: no free eraseblocks
Thread-Topic: ubi2 error: ubi_refill_pools: no free eraseblocks
Thread-Index: AQHWNCmh5PR4WfFjGUiBNr9/Hpaoaw==
Date: Wed, 27 May 2020 13:20:47 +0000
Message-ID: <e90b59f8c1f842cca8a6db59239a9d67@XBOX02.axis.com>
Accept-Language: sv-SE, en-US
Content-Language: sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_062053_145382_99C4029C 
X-CRM114-Status: UNSURE (   3.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi,

During a stress test we get the following error:

"ubi2 error: ubi_refill_pools: no free eraseblocks"

Is this something we need to take some action to solve or is it unharmful?

We write 50000 database entries via sqlcipher and the error is printed when we are almost finished. Everything seems to work alright and all entries seems to be in place.
Each entry is about 1,5kB size. After all entries has been written the partition is 41 % full:

ubi2:mydata_volume        457368    183528    269004  41% /var/lib/mypath

The following NAND memory is used:

nand: Toshiba TH58NVG2S3HBAI4 4G 3.3V 8-bit
nand: 512 MiB, SLC, erase size: 128 KiB, page size: 2048, OOB size: 128

Best regards,
Rickard Andersson

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
