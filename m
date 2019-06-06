Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA6E36F91
	for <lists+linux-mtd@lfdr.de>; Thu,  6 Jun 2019 11:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J1LIKj6aTxtk1TNYqvUHyuMPJqghVLMbIXahZIojs+g=; b=TPULhR5tuZKS+P
	wUjSGTvUvmN+Ly8NnRL9PoM8ETnSd3Jo0xhZM1Pift0lzgcWrjUPPCb3yi7ZjRjK8Gs8BQiboP1TO
	wzZp3ecPpgt4gnvDSTHCgmtgkEdzAsseHxqJnd0Yx6IFwSVXZU5upB/a7a8l2O4h3eveRqb0wjY0h
	YMp435nbi4+q3NUNZ8AfiK5UkatB0T08BS//LOar3DqUDafzW4JKTh+tLhJZy6uJh+0Hkjclpx9Ib
	WXJ+/CqyFj5+WJOGMRRXt0nn2p50OD+vMmMN+jrjA4sp7Gaw1RrQAvsdkNKAWMiSA74gSaoFuB/P/
	WOiHU+dQSpZuBkZcdaww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYoQ6-0007UT-Au; Thu, 06 Jun 2019 09:10:50 +0000
Received: from host2.emcraft.com ([138.197.218.152])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYoPy-0007U1-L9
 for linux-mtd@lists.infradead.org; Thu, 06 Jun 2019 09:10:44 +0000
Received: from sergmir.emcraft.com (unknown [176.110.122.116])
 by host2.emcraft.com (Postfix) with ESMTPSA id DF73840043B;
 Thu,  6 Jun 2019 02:10:39 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 host2.emcraft.com DF73840043B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emcraft.com;
 s=default; t=1559812240;
 bh=mEDDLGmMRrHotyJ7Oc8dhTSw/AMEzEmPPzN4MRzrd+8=;
 h=Date:From:To:Subject:From;
 b=wPwfae3glejTheSwkoMWCqM3umL7+J0SALhgoWFWWv+nqdAEyosUFxzaQuRUjh0xB
 WDtvmjxGYHwkBxzuG/3M5G30EDyPPCyAsDpAgcmuzZ1ltaBotWcx3sOJB0XC5Slrvy
 vMZ7dywmmHMsiklk0RW5V5QvnOKxofqqPRxCLh3E=
Date: Thu, 6 Jun 2019 12:10:37 +0300
From: Sergei Poselenov <sposelenov@emcraft.com>
To: linux-mtd@lists.infradead.org
Subject: UBIFS: file data corruption during the power cut-off test
Message-ID: <20190606121037.40a1cc5e@sergmir.emcraft.com>
Organization: Emcraft Systems
X-Mailer: Claws Mail 3.15.1-dirty (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-3.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=disabled
 version=3.4.1
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on host2.emcraft.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_021042_864414_D1C6D6C2 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello,

We have an embedded system based on i.MX 6ULL, with the root filesystem deployed on a UBI volume built on top of the SLC NAND device. The volume is mounted as "rw,sync,relatime".

We are doing the following test:

   - Copy the same file (/bin/busybox) to a different file names, in a sequence.

   - Power is cut off during the copy sequence.

   - After reboot, UBI mounts OK, and we see a number of valid copies of /bin/busybox (md5sum matches), and the last file with the short length (partially written), as expected.

The question is: should we expect the last partially-written file to have the valid data of the original? We observe that quite often, the last 512 or so bytes in the short file doesn't match the original.

Any thoughts are welcome.

Regards,
Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
